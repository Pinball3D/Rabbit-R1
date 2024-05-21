package com.google.zxing.pdf417.encoder;

/* loaded from: classes3.dex */
public final class Dimensions {
    private final int maxCols;
    private final int maxRows;
    private final int minCols;
    private final int minRows;

    public int getMaxCols() {
        return this.maxCols;
    }

    public int getMaxRows() {
        return this.maxRows;
    }

    public int getMinCols() {
        return this.minCols;
    }

    public int getMinRows() {
        return this.minRows;
    }

    public Dimensions(int i, int i2, int i3, int i4) {
        this.minCols = i;
        this.maxCols = i2;
        this.minRows = i3;
        this.maxRows = i4;
    }
}
