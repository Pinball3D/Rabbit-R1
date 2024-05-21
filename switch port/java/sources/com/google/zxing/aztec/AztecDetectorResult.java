package com.google.zxing.aztec;

import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;

/* loaded from: classes3.dex */
public final class AztecDetectorResult extends DetectorResult {
    private final boolean compact;
    private final int nbDatablocks;
    private final int nbLayers;

    public int getNbDatablocks() {
        return this.nbDatablocks;
    }

    public int getNbLayers() {
        return this.nbLayers;
    }

    public boolean isCompact() {
        return this.compact;
    }

    public AztecDetectorResult(BitMatrix bitMatrix, ResultPoint[] resultPointArr, boolean z, int i, int i2) {
        super(bitMatrix, resultPointArr);
        this.compact = z;
        this.nbDatablocks = i;
        this.nbLayers = i2;
    }
}
