package com.google.zxing.qrcode.decoder;

import com.google.zxing.ResultPoint;

/* loaded from: classes3.dex */
public final class QRCodeDecoderMetaData {
    private final boolean mirrored;

    public boolean isMirrored() {
        return this.mirrored;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QRCodeDecoderMetaData(boolean z) {
        this.mirrored = z;
    }

    public void applyMirroredCorrection(ResultPoint[] resultPointArr) {
        if (!this.mirrored || resultPointArr == null || resultPointArr.length < 3) {
            return;
        }
        ResultPoint resultPoint = resultPointArr[0];
        resultPointArr[0] = resultPointArr[2];
        resultPointArr[2] = resultPoint;
    }
}
