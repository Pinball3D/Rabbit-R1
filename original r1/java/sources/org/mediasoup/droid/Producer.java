package org.mediasoup.droid;

import org.webrtc.MediaStreamTrack;
import org.webrtc.RTCUtils;

/* loaded from: classes3.dex */
public class Producer {
    private MediaStreamTrack mCachedTrack;
    private final long mNativeProducer;

    /* loaded from: classes3.dex */
    public interface Listener {
        void onTransportClose(Producer producer);
    }

    private static native void nativeClose(long j);

    private static native String nativeGetAppData(long j);

    private static native String nativeGetId(long j);

    private static native String nativeGetKind(long j);

    private static native int nativeGetMaxSpatialLayer(long j);

    private static native String nativeGetRtpParameters(long j);

    private static native String nativeGetStats(long j);

    private static native long nativeGetTrack(long j);

    private static native boolean nativeIsClosed(long j);

    private static native boolean nativeIsPaused(long j);

    private static native void nativePause(long j);

    private static native void nativeReplaceTrack(long j, long j2);

    private static native void nativeResume(long j);

    private static native void nativeSetMaxSpatialLayer(long j, int i);

    public MediaStreamTrack getTrack() {
        return this.mCachedTrack;
    }

    public Producer(long j) {
        this.mNativeProducer = j;
        this.mCachedTrack = RTCUtils.createMediaStreamTrack(nativeGetTrack(j));
    }

    public String getId() {
        return nativeGetId(this.mNativeProducer);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.mNativeProducer);
    }

    public String getKind() {
        return nativeGetKind(this.mNativeProducer);
    }

    public boolean isPaused() {
        return nativeIsPaused(this.mNativeProducer);
    }

    public int getMaxSpatialLayer() {
        return nativeGetMaxSpatialLayer(this.mNativeProducer);
    }

    public String getAppData() {
        return nativeGetAppData(this.mNativeProducer);
    }

    public String getRtpParameters() {
        return nativeGetRtpParameters(this.mNativeProducer);
    }

    public void resume() {
        nativeResume(this.mNativeProducer);
    }

    public void setMaxSpatialLayer(int i) throws MediasoupException {
        nativeSetMaxSpatialLayer(this.mNativeProducer, i);
    }

    public void pause() {
        nativePause(this.mNativeProducer);
    }

    public void replaceTrack(MediaStreamTrack mediaStreamTrack) throws MediasoupException {
        nativeReplaceTrack(this.mNativeProducer, RTCUtils.getNativeMediaStreamTrack(mediaStreamTrack));
        this.mCachedTrack = mediaStreamTrack;
    }

    public String getStats() throws MediasoupException {
        return nativeGetStats(this.mNativeProducer);
    }

    public void close() {
        nativeClose(this.mNativeProducer);
    }
}
