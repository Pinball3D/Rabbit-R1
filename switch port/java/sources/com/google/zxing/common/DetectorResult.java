package com.google.zxing.common;

import com.google.zxing.ResultPoint;

/* loaded from: classes3.dex */
public class DetectorResult {
    private final BitMatrix bits;
    private final ResultPoint[] points;

    public final BitMatrix getBits() {
        return this.bits;
    }

    public final ResultPoint[] getPoints() {
        return this.points;
    }

    public DetectorResult(BitMatrix bitMatrix, ResultPoint[] resultPointArr) {
        this.bits = bitMatrix;
        this.points = resultPointArr;
    }
}
