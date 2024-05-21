package tech.rabbit.r1launcher.recorder;

import android.app.Activity;
import android.content.Context;
import android.media.AudioRecord;
import androidx.core.app.ActivityCompat;
import tech.rabbit.common.utils.RLog;

/* loaded from: classes3.dex */
public class AudioRecordManger {
    private static final String TAG = "AudioRecordManager";
    private static AudioRecordManger mInstance;
    private AudioRecord mAudioRecord;
    private RecordThread recordThread;

    private AudioRecordManger() {
    }

    public static AudioRecordManger getInstance() {
        if (mInstance == null) {
            synchronized (AudioRecordManger.class) {
                if (mInstance == null) {
                    mInstance = new AudioRecordManger();
                }
            }
        }
        return mInstance;
    }

    public void startRecord(Context context) {
        RecordThread recordThread = this.recordThread;
        if (recordThread != null && recordThread.isRunning()) {
            RLog.e(TAG, "已经在录音了...");
            return;
        }
        try {
            prepareAudioRecord(context);
            AudioRecord audioRecord = this.mAudioRecord;
            if (audioRecord != null && audioRecord.getState() == 1) {
                RecordThread recordThread2 = new RecordThread(this.mAudioRecord);
                this.recordThread = recordThread2;
                recordThread2.start();
                return;
            }
            RLog.e(TAG, "mAudioRecord is NULL !!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void stopRecord() {
        try {
            RecordThread recordThread = this.recordThread;
            if (recordThread == null || !recordThread.isRunning()) {
                return;
            }
            this.recordThread.stopRecord();
            AudioRecord audioRecord = this.mAudioRecord;
            if (audioRecord != null) {
                if (audioRecord.getState() == 1) {
                    this.mAudioRecord.stop();
                }
                this.mAudioRecord.release();
                this.mAudioRecord = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void prepareAudioRecord(Context context) {
        if (this.mAudioRecord == null) {
            if (ActivityCompat.checkSelfPermission(context, "android.permission.RECORD_AUDIO") != 0) {
                ActivityCompat.requestPermissions((Activity) context, new String[]{"android.permission.RECORD_AUDIO"}, 200);
            }
            this.mAudioRecord = new AudioRecord(7, AudioTrackManager.SAMPLE_RATE_INHZ, 16, 2, AudioRecord.getMinBufferSize(AudioTrackManager.SAMPLE_RATE_INHZ, 16, 2));
        }
    }
}
