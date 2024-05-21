package tech.rabbit.r1launcher.recorder;

import android.content.Context;
import android.media.audiofx.AcousticEchoCanceler;
import tech.rabbit.common.utils.RLog;

/* loaded from: classes3.dex */
public class AcousticEchoCancelerManager {
    private static String TAG = "AcousticEchoTAG";
    private static AcousticEchoCanceler acousticEchoCanceler;
    private static AcousticEchoCancelerManager mInstance;

    private AcousticEchoCancelerManager() {
    }

    public static AcousticEchoCancelerManager getInstance() {
        if (mInstance == null) {
            synchronized (AudioRecordManger.class) {
                if (mInstance == null) {
                    mInstance = new AcousticEchoCancelerManager();
                }
            }
        }
        return mInstance;
    }

    public AcousticEchoCanceler getAcousticEchoCanceler(int i, Context context) {
        if (AcousticEchoCanceler.isAvailable() && acousticEchoCanceler == null) {
            acousticEchoCanceler = AcousticEchoCanceler.create(i);
            RLog.d(TAG, "initAEC: ----->" + acousticEchoCanceler + "\t" + i);
            AcousticEchoCanceler acousticEchoCanceler2 = acousticEchoCanceler;
            if (acousticEchoCanceler2 == null) {
                RLog.e(TAG, "initAEC: ----->AcousticEchoCanceler create fail.");
            } else {
                acousticEchoCanceler2.setEnabled(true);
            }
        }
        return acousticEchoCanceler;
    }
}
