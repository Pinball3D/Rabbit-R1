package com.google.zxing.pdf417.decoder;

/* loaded from: classes3.dex */
final class Codeword {
    private static final int BARCODE_ROW_UNKNOWN = -1;
    private final int bucket;
    private final int endX;
    private int rowNumber = -1;
    private final int startX;
    private final int value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBucket() {
        return this.bucket;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEndX() {
        return this.endX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowNumber() {
        return this.rowNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStartX() {
        return this.startX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getValue() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidth() {
        return this.endX - this.startX;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRowNumber(int i) {
        this.rowNumber = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Codeword(int i, int i2, int i3, int i4) {
        this.startX = i;
        this.endX = i2;
        this.bucket = i3;
        this.value = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasValidRowNumber() {
        return isValidRowNumber(this.rowNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isValidRowNumber(int i) {
        return i != -1 && this.bucket == (i % 3) * 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRowNumberAsRowIndicatorColumn() {
        this.rowNumber = ((this.value / 30) * 3) + (this.bucket / 3);
    }

    public String toString() {
        return this.rowNumber + "|" + this.value;
    }
}
