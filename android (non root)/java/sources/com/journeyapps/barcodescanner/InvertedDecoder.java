package com.journeyapps.barcodescanner;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.Reader;
import com.google.zxing.common.HybridBinarizer;

/* loaded from: classes3.dex */
public class InvertedDecoder extends Decoder {
    public InvertedDecoder(Reader reader) {
        super(reader);
    }

    @Override // com.journeyapps.barcodescanner.Decoder
    protected BinaryBitmap toBitmap(LuminanceSource luminanceSource) {
        return new BinaryBitmap(new HybridBinarizer(luminanceSource.invert()));
    }
}
