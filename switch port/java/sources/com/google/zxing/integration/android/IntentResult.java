package com.google.zxing.integration.android;

import android.content.Intent;

/* loaded from: classes3.dex */
public final class IntentResult {
    private final String barcodeImagePath;
    private final String contents;
    private final String errorCorrectionLevel;
    private final String formatName;
    private final Integer orientation;
    private final Intent originalIntent;
    private final byte[] rawBytes;

    public String getBarcodeImagePath() {
        return this.barcodeImagePath;
    }

    public String getContents() {
        return this.contents;
    }

    public String getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public String getFormatName() {
        return this.formatName;
    }

    public Integer getOrientation() {
        return this.orientation;
    }

    public Intent getOriginalIntent() {
        return this.originalIntent;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    IntentResult() {
        this(null, null, null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IntentResult(Intent intent) {
        this(null, null, null, null, null, null, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IntentResult(String str, String str2, byte[] bArr, Integer num, String str3, String str4, Intent intent) {
        this.contents = str;
        this.formatName = str2;
        this.rawBytes = bArr;
        this.orientation = num;
        this.errorCorrectionLevel = str3;
        this.barcodeImagePath = str4;
        this.originalIntent = intent;
    }

    public String toString() {
        byte[] bArr = this.rawBytes;
        return "Format: " + this.formatName + "\nContents: " + this.contents + "\nRaw bytes: (" + (bArr == null ? 0 : bArr.length) + " bytes)\nOrientation: " + this.orientation + "\nEC level: " + this.errorCorrectionLevel + "\nBarcode image: " + this.barcodeImagePath + "\nOriginal intent: " + this.originalIntent + '\n';
    }
}
