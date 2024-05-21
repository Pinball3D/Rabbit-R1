package tech.rabbit.r1launcher.recorder;

import android.content.Context;
import android.media.AudioRecord;
import android.media.AudioTrack;
import java.io.File;
import java.io.FileInputStream;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.common.utils.RabbitCommon;

/* loaded from: classes3.dex */
public class AudioTrackManager {
    public static final int AUDIO_FORMAT = 2;
    public static final int CHANNEL_CONFIG = 16;
    private static final String TAG = "AudioTrackManager";
    private static volatile AudioTrackManager mInstance;
    private AudioTrack mAudioTrack;
    private int offset;
    private PlayThread playThread;
    private static String DATA_PACKAGE = "data/data/";
    public static String pcmFileName = DATA_PACKAGE + "/AudioDemo.pcm";
    public static String wavFileName = DATA_PACKAGE + "/wavAudio.wav";
    static int SAMPLE_RATE_INHZ = 16000;
    private boolean isPlaying = false;
    private final int bufferSize = AudioRecord.getMinBufferSize(SAMPLE_RATE_INHZ, 16, 2);

    private AudioTrackManager() {
    }

    public void initAudioTrack(int i) {
        this.mAudioTrack = new AudioTrack(3, SAMPLE_RATE_INHZ, 4, 2, this.bufferSize, 1, i);
    }

    public static AudioTrackManager getInstance() {
        if (mInstance == null) {
            synchronized (AudioTrackManager.class) {
                if (mInstance == null) {
                    mInstance = new AudioTrackManager();
                }
            }
        }
        return mInstance;
    }

    public void startPlay(Context context) {
        if (this.isPlaying) {
            RLog.e(TAG, "已经开始播放了...");
            return;
        }
        this.isPlaying = true;
        this.mAudioTrack.play();
        PlayThread playThread = new PlayThread(context);
        this.playThread = playThread;
        playThread.start();
    }

    public void stopPlay() {
        if (!this.isPlaying) {
            RLog.e(TAG, "还没有播放!!!");
        } else {
            this.isPlaying = false;
            this.mAudioTrack.stop();
        }
    }

    /* loaded from: classes3.dex */
    class PlayThread extends Thread {
        Context context;
        byte[] data1;
        FileInputStream fileInputStream;
        File file = new File(AudioTrackManager.pcmFileName);
        int off1 = 0;

        public PlayThread(Context context) {
            this.data1 = new byte[AudioTrackManager.this.bufferSize * 2];
            this.context = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (AudioTrackManager.this.isPlaying) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(this.file);
                    this.fileInputStream = fileInputStream;
                    fileInputStream.skip(this.off1);
                    this.fileInputStream.read(this.data1, 0, AudioTrackManager.this.bufferSize * 2);
                    this.off1 += AudioTrackManager.this.bufferSize * 2;
                } catch (Exception unused) {
                }
                AudioTrackManager.this.mAudioTrack.write(this.data1, AudioTrackManager.this.offset, AudioTrackManager.this.bufferSize * 2);
            }
        }
    }

    public static String getDataPackage() {
        return DATA_PACKAGE + RabbitCommon.sContext.getPackageName();
    }
}
