package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public final class BarcodeMatrix {
    private int currentRow;
    private final int height;
    private final BarcodeRow[] matrix;
    private final int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startRow() {
        this.currentRow++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeMatrix(int i, int i2) {
        BarcodeRow[] barcodeRowArr = new BarcodeRow[i];
        this.matrix = barcodeRowArr;
        int length = barcodeRowArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.matrix[i3] = new BarcodeRow(((i2 + 4) * 17) + 1);
        }
        this.width = i2 * 17;
        this.height = i;
        this.currentRow = -1;
    }

    void set(int i, int i2, byte b) {
        this.matrix[i2].set(i, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeRow getCurrentRow() {
        return this.matrix[this.currentRow];
    }

    public byte[][] getMatrix() {
        return getScaledMatrix(1, 1);
    }

    public byte[][] getScaledMatrix(int i, int i2) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.height * i2, this.width * i);
        int i3 = this.height * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.matrix[i4 / i2].getScaledRow(i);
        }
        return bArr;
    }
}
