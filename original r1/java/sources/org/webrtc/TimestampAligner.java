package org.webrtc;

/* loaded from: classes3.dex */
public class TimestampAligner {
    private volatile long nativeTimestampAligner = nativeCreateTimestampAligner();

    private static native long nativeCreateTimestampAligner();

    private static native void nativeReleaseTimestampAligner(long j);

    private static native long nativeRtcTimeNanos();

    private static native long nativeTranslateTimestamp(long j, long j2);

    public static long getRtcTimeNanos() {
        return nativeRtcTimeNanos();
    }

    public long translateTimestamp(long j) {
        checkNativeAlignerExists();
        return nativeTranslateTimestamp(this.nativeTimestampAligner, j);
    }

    public void dispose() {
        checkNativeAlignerExists();
        nativeReleaseTimestampAligner(this.nativeTimestampAligner);
        this.nativeTimestampAligner = 0L;
    }

    private void checkNativeAlignerExists() {
        if (this.nativeTimestampAligner == 0) {
            throw new IllegalStateException("TimestampAligner has been disposed.");
        }
    }
}
