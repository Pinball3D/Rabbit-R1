package org.webrtc;

import org.webrtc.MediaStreamTrack;

/* loaded from: classes3.dex */
public class RtpReceiver {
    private MediaStreamTrack cachedTrack;
    private long nativeObserver;
    private long nativeRtpReceiver;

    /* loaded from: classes3.dex */
    public interface Observer {
        void onFirstPacketReceived(MediaStreamTrack.MediaType mediaType);
    }

    private static native String nativeGetId(long j);

    private static native RtpParameters nativeGetParameters(long j);

    private static native long nativeGetTrack(long j);

    private static native void nativeSetFrameDecryptor(long j, long j2);

    private static native long nativeSetObserver(long j, Observer observer);

    private static native void nativeUnsetObserver(long j, long j2);

    public MediaStreamTrack track() {
        return this.cachedTrack;
    }

    public RtpReceiver(long j) {
        this.nativeRtpReceiver = j;
        this.cachedTrack = MediaStreamTrack.createMediaStreamTrack(nativeGetTrack(j));
    }

    public RtpParameters getParameters() {
        checkRtpReceiverExists();
        return nativeGetParameters(this.nativeRtpReceiver);
    }

    public String id() {
        checkRtpReceiverExists();
        return nativeGetId(this.nativeRtpReceiver);
    }

    public void dispose() {
        checkRtpReceiverExists();
        this.cachedTrack.dispose();
        long j = this.nativeObserver;
        if (j != 0) {
            nativeUnsetObserver(this.nativeRtpReceiver, j);
            this.nativeObserver = 0L;
        }
        JniCommon.nativeReleaseRef(this.nativeRtpReceiver);
        this.nativeRtpReceiver = 0L;
    }

    public void SetObserver(Observer observer) {
        checkRtpReceiverExists();
        long j = this.nativeObserver;
        if (j != 0) {
            nativeUnsetObserver(this.nativeRtpReceiver, j);
        }
        this.nativeObserver = nativeSetObserver(this.nativeRtpReceiver, observer);
    }

    public void setFrameDecryptor(FrameDecryptor frameDecryptor) {
        checkRtpReceiverExists();
        nativeSetFrameDecryptor(this.nativeRtpReceiver, frameDecryptor.getNativeFrameDecryptor());
    }

    private void checkRtpReceiverExists() {
        if (this.nativeRtpReceiver == 0) {
            throw new IllegalStateException("RtpReceiver has been disposed.");
        }
    }
}
