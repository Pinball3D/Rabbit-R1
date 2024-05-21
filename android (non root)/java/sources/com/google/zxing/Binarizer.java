package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes3.dex */
public abstract class Binarizer {
    private final LuminanceSource source;

    public abstract Binarizer createBinarizer(LuminanceSource luminanceSource);

    public abstract BitMatrix getBlackMatrix() throws NotFoundException;

    public abstract BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException;

    public final LuminanceSource getLuminanceSource() {
        return this.source;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Binarizer(LuminanceSource luminanceSource) {
        this.source = luminanceSource;
    }

    public final int getWidth() {
        return this.source.getWidth();
    }

    public final int getHeight() {
        return this.source.getHeight();
    }
}
