package org.webrtc;

/* loaded from: classes3.dex */
class BaseBitrateAdjuster implements BitrateAdjuster {
    protected int targetBitrateBps;
    protected int targetFps;

    @Override // org.webrtc.BitrateAdjuster
    public int getAdjustedBitrateBps() {
        return this.targetBitrateBps;
    }

    @Override // org.webrtc.BitrateAdjuster
    public int getCodecConfigFramerate() {
        return this.targetFps;
    }

    @Override // org.webrtc.BitrateAdjuster
    public void reportEncodedFrame(int i) {
    }

    @Override // org.webrtc.BitrateAdjuster
    public void setTargets(int i, int i2) {
        this.targetBitrateBps = i;
        this.targetFps = i2;
    }
}
