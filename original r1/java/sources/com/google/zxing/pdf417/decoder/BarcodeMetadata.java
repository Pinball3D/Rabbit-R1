package com.google.zxing.pdf417.decoder;

/* loaded from: classes3.dex */
final class BarcodeMetadata {
    private final int columnCount;
    private final int errorCorrectionLevel;
    private final int rowCount;
    private final int rowCountLowerPart;
    private final int rowCountUpperPart;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getColumnCount() {
        return this.columnCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowCount() {
        return this.rowCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowCountLowerPart() {
        return this.rowCountLowerPart;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRowCountUpperPart() {
        return this.rowCountUpperPart;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BarcodeMetadata(int i, int i2, int i3, int i4) {
        this.columnCount = i;
        this.errorCorrectionLevel = i4;
        this.rowCountUpperPart = i2;
        this.rowCountLowerPart = i3;
        this.rowCount = i2 + i3;
    }
}
