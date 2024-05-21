package org.mediasoup.droid;

import org.webrtc.MediaStreamTrack;
import org.webrtc.RTCUtils;

/* loaded from: classes3.dex */
public class Consumer {
    private final MediaStreamTrack mCachedTrack;
    private final long mNativeConsumer;

    /* loaded from: classes3.dex */
    public interface Listener {
        void onTransportClose(Consumer consumer);
    }

    private static native void nativeClose(long j);

    private static native String nativeGetAppData(long j);

    private static native String nativeGetKind(long j);

    private static native String nativeGetLocalId(long j);

    private static native String nativeGetNativeId(long j);

    private static native String nativeGetProducerId(long j);

    private static native String nativeGetRtpParameters(long j);

    private static native String nativeGetStats(long j);

    private static native long nativeGetTrack(long j);

    private static native boolean nativeIsClosed(long j);

    private static native boolean nativeIsPaused(long j);

    private static native void nativePause(long j);

    private static native void nativeResume(long j);

    public MediaStreamTrack getTrack() {
        return this.mCachedTrack;
    }

    public Consumer(long j) {
        this.mNativeConsumer = j;
        this.mCachedTrack = RTCUtils.createMediaStreamTrack(nativeGetTrack(j));
    }

    public String getId() {
        return nativeGetNativeId(this.mNativeConsumer);
    }

    public String getLocalId() {
        return nativeGetLocalId(this.mNativeConsumer);
    }

    public String getProducerId() {
        return nativeGetProducerId(this.mNativeConsumer);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.mNativeConsumer);
    }

    public boolean isPaused() {
        return nativeIsPaused(this.mNativeConsumer);
    }

    public String getKind() {
        return nativeGetKind(this.mNativeConsumer);
    }

    public String getRtpParameters() {
        return nativeGetRtpParameters(this.mNativeConsumer);
    }

    public String getAppData() {
        return nativeGetAppData(this.mNativeConsumer);
    }

    public void resume() {
        nativeResume(this.mNativeConsumer);
    }

    public void pause() {
        nativePause(this.mNativeConsumer);
    }

    public String getStats() throws MediasoupException {
        return nativeGetStats(this.mNativeConsumer);
    }

    public void close() {
        nativeClose(this.mNativeConsumer);
    }
}
