package tech.rabbit.r1launcher.recorder;

import android.media.AudioRecord;
import android.os.Process;
import com.google.gson.Gson;
import com.r.l.wss.request.emit_start_end_utterance.VoiceActivity;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import okio.ByteString;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.camera.CameraManager;
import tech.rabbit.r1launcher.wss.WebSocketManager;
import tech.rabbit.r1launcher.wss.request.emit_start_end_utterance.Kernel;
import tech.rabbit.r1launcher.wss.request.emit_start_end_utterance.RequestUtterance;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AudioRecordManger.java */
/* loaded from: classes3.dex */
public class RecordThread extends Thread {
    private static final String TAG = "RecordThread";
    private AudioRecord mAudioRecord;
    private boolean mStopRecord;
    private boolean mStopRun;

    private byte[] intToBytes(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    private byte[] shortToBytes(short s) {
        return new byte[]{(byte) (s & 255), (byte) ((s >> 8) & 255)};
    }

    public boolean isRunning() {
        return !(this.mStopRecord | this.mStopRun);
    }

    public void stopRecord() {
        this.mStopRecord = true;
    }

    public void stopRun() {
        this.mStopRun = true;
    }

    public RecordThread(AudioRecord audioRecord) {
        super(TAG);
        this.mStopRun = false;
        this.mStopRecord = false;
        this.mAudioRecord = audioRecord;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(-19);
        int i = (int) ((((AudioTrackManager.SAMPLE_RATE_INHZ * 0.1d) * 16.0d) * 2.0d) / 8.0d);
        byte[] bArr = new byte[i];
        String generateSendString = generateSendString(VoiceActivity.press);
        RLog.e(TAG, "sendByteArray: startkString:" + generateSendString);
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord == null || audioRecord.getState() != 1) {
            return;
        }
        WebSocketManager.INSTANCE.send(generateSendString);
        try {
            this.mAudioRecord.startRecording();
            while (!(this.mStopRun | this.mStopRecord)) {
                int read = this.mAudioRecord.read(bArr, 0, i);
                if (read != -3 && read != -2) {
                    if (read == 0 || read == -1) {
                        break;
                    } else {
                        processWavData(convertToWav(bArr, read));
                    }
                }
            }
            if (this.mStopRun) {
                return;
            }
            Arrays.fill(bArr, (byte) 0);
            processWavData(convertToWav(bArr, i));
            final String generateSendString2 = generateSendString(VoiceActivity.inactive);
            KotlinUtilKt.getMainHandler().post(new Runnable() { // from class: tech.rabbit.r1launcher.recorder.RecordThread$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RecordThread.this.m7481lambda$run$1$techrabbitr1launcherrecorderRecordThread(generateSendString2);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            String generateSendString3 = generateSendString(VoiceActivity.inactive);
            WebSocketManager.INSTANCE.send(generateSendStringWithImg(VoiceActivity.release, ""));
            WebSocketManager.INSTANCE.send(generateSendString3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$run$1$tech-rabbit-r1launcher-recorder-RecordThread, reason: not valid java name */
    public /* synthetic */ void m7481lambda$run$1$techrabbitr1launcherrecorderRecordThread(final String str) {
        CameraManager.INSTANCE.takePictureIfOpened(new CameraManager.TakePictureCallback() { // from class: tech.rabbit.r1launcher.recorder.RecordThread$$ExternalSyntheticLambda1
            @Override // tech.rabbit.r1launcher.camera.CameraManager.TakePictureCallback
            public final void onResult(String str2) {
                RecordThread.this.m7480lambda$run$0$techrabbitr1launcherrecorderRecordThread(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$run$0$tech-rabbit-r1launcher-recorder-RecordThread, reason: not valid java name */
    public /* synthetic */ void m7480lambda$run$0$techrabbitr1launcherrecorderRecordThread(String str, String str2) {
        WebSocketManager.INSTANCE.send(generateSendStringWithImg(VoiceActivity.release, str2));
        WebSocketManager.INSTANCE.send(str);
    }

    private String generateSendString(String str) {
        RequestUtterance requestUtterance = new RequestUtterance();
        Kernel kernel = new Kernel();
        VoiceActivity voiceActivity = new VoiceActivity();
        voiceActivity.setState(str);
        kernel.voiceActivity = voiceActivity;
        requestUtterance.setKernel(kernel);
        return new Gson().toJson(requestUtterance);
    }

    private String generateSendStringWithImg(String str, String str2) {
        RequestUtterance requestUtterance = new RequestUtterance();
        Kernel kernel = new Kernel();
        VoiceActivity voiceActivity = new VoiceActivity();
        voiceActivity.setState(str);
        voiceActivity.setImageBase64(str2);
        kernel.voiceActivity = voiceActivity;
        requestUtterance.setKernel(kernel);
        return new Gson().toJson(requestUtterance);
    }

    private byte[] convertToWav(byte[] bArr, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write("RIFF".getBytes());
            byteArrayOutputStream.write(intToBytes(i + 36));
            byteArrayOutputStream.write("WAVE".getBytes());
            byteArrayOutputStream.write("fmt ".getBytes());
            byteArrayOutputStream.write(intToBytes(16));
            byteArrayOutputStream.write(shortToBytes((short) 1));
            byteArrayOutputStream.write(shortToBytes((short) 1));
            byteArrayOutputStream.write(intToBytes(AudioTrackManager.SAMPLE_RATE_INHZ));
            byteArrayOutputStream.write(intToBytes(AudioTrackManager.SAMPLE_RATE_INHZ * 2));
            byteArrayOutputStream.write(shortToBytes((short) 2));
            byteArrayOutputStream.write(shortToBytes((short) 16));
            byteArrayOutputStream.write("data".getBytes());
            byteArrayOutputStream.write(intToBytes(i));
            byteArrayOutputStream.write(bArr);
        } catch (IOException e) {
            RLog.e(TAG, "Error converting PCM to WAV: " + e.getMessage());
        }
        return byteArrayOutputStream.toByteArray();
    }

    private void processWavData(byte[] bArr) {
        WebSocketManager.INSTANCE.send(ByteString.of(bArr));
    }
}
