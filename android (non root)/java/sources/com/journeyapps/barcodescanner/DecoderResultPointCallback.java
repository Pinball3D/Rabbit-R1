package com.journeyapps.barcodescanner;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

/* loaded from: classes3.dex */
public class DecoderResultPointCallback implements ResultPointCallback {
    private Decoder decoder;

    public Decoder getDecoder() {
        return this.decoder;
    }

    public void setDecoder(Decoder decoder) {
        this.decoder = decoder;
    }

    public DecoderResultPointCallback(Decoder decoder) {
        this.decoder = decoder;
    }

    public DecoderResultPointCallback() {
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        Decoder decoder = this.decoder;
        if (decoder != null) {
            decoder.foundPossibleResultPoint(resultPoint);
        }
    }
}
