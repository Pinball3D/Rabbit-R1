package org.webrtc;

/* loaded from: classes3.dex */
public class DtmfSender {
    private long nativeDtmfSender;

    private static native boolean nativeCanInsertDtmf(long j);

    private static native int nativeDuration(long j);

    private static native boolean nativeInsertDtmf(long j, String str, int i, int i2);

    private static native int nativeInterToneGap(long j);

    private static native String nativeTones(long j);

    public DtmfSender(long j) {
        this.nativeDtmfSender = j;
    }

    public boolean canInsertDtmf() {
        checkDtmfSenderExists();
        return nativeCanInsertDtmf(this.nativeDtmfSender);
    }

    public boolean insertDtmf(String str, int i, int i2) {
        checkDtmfSenderExists();
        return nativeInsertDtmf(this.nativeDtmfSender, str, i, i2);
    }

    public String tones() {
        checkDtmfSenderExists();
        return nativeTones(this.nativeDtmfSender);
    }

    public int duration() {
        checkDtmfSenderExists();
        return nativeDuration(this.nativeDtmfSender);
    }

    public int interToneGap() {
        checkDtmfSenderExists();
        return nativeInterToneGap(this.nativeDtmfSender);
    }

    public void dispose() {
        checkDtmfSenderExists();
        JniCommon.nativeReleaseRef(this.nativeDtmfSender);
        this.nativeDtmfSender = 0L;
    }

    private void checkDtmfSenderExists() {
        if (this.nativeDtmfSender == 0) {
            throw new IllegalStateException("DtmfSender has been disposed.");
        }
    }
}
