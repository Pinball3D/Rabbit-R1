package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Map;

/* loaded from: classes3.dex */
public final class QRCodeWriter implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(barcodeFormat)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        ErrorCorrectionLevel errorCorrectionLevel = ErrorCorrectionLevel.L;
        int i3 = 4;
        if (map != null) {
            if (map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                errorCorrectionLevel = ErrorCorrectionLevel.valueOf(map.get(EncodeHintType.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EncodeHintType.MARGIN)) {
                i3 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
            }
        }
        return renderResult(Encoder.encode(str, errorCorrectionLevel, map), i, i2, i3);
    }

    private static BitMatrix renderResult(QRCode qRCode, int i, int i2, int i3) {
        ByteMatrix matrix = qRCode.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int i4 = i3 << 1;
        int i5 = width + i4;
        int i6 = i4 + height;
        int max = Math.max(i, i5);
        int max2 = Math.max(i2, i6);
        int min = Math.min(max / i5, max2 / i6);
        int i7 = (max - (width * min)) / 2;
        int i8 = (max2 - (height * min)) / 2;
        BitMatrix bitMatrix = new BitMatrix(max, max2);
        int i9 = 0;
        while (i9 < height) {
            int i10 = 0;
            int i11 = i7;
            while (i10 < width) {
                if (matrix.get(i10, i9) == 1) {
                    bitMatrix.setRegion(i11, i8, min, min);
                }
                i10++;
                i11 += min;
            }
            i9++;
            i8 += min;
        }
        return bitMatrix;
    }
}
