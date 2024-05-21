package com.google.zxing.aztec;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;

/* loaded from: classes3.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005c A[LOOP:0: B:24:0x005a->B:25:0x005c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.Result decode(com.google.zxing.BinaryBitmap r10, java.util.Map<com.google.zxing.DecodeHintType, ?> r11) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException {
        /*
            r9 = this;
            com.google.zxing.aztec.detector.Detector r9 = new com.google.zxing.aztec.detector.Detector
            com.google.zxing.common.BitMatrix r10 = r10.getBlackMatrix()
            r9.<init>(r10)
            r10 = 0
            r0 = 0
            com.google.zxing.aztec.AztecDetectorResult r1 = r9.detect(r10)     // Catch: com.google.zxing.FormatException -> L25 com.google.zxing.NotFoundException -> L2b
            com.google.zxing.ResultPoint[] r2 = r1.getPoints()     // Catch: com.google.zxing.FormatException -> L25 com.google.zxing.NotFoundException -> L2b
            com.google.zxing.aztec.decoder.Decoder r3 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            r3.<init>()     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            com.google.zxing.common.DecoderResult r1 = r3.decode(r1)     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            r3 = r2
            r2 = r0
            r0 = r1
            r1 = r2
            goto L2f
        L21:
            r1 = move-exception
            goto L27
        L23:
            r1 = move-exception
            goto L2d
        L25:
            r1 = move-exception
            r2 = r0
        L27:
            r3 = r2
            r2 = r1
            r1 = r0
            goto L2f
        L2b:
            r1 = move-exception
            r2 = r0
        L2d:
            r3 = r2
            r2 = r0
        L2f:
            if (r0 != 0) goto L4c
            r0 = 1
            com.google.zxing.aztec.AztecDetectorResult r9 = r9.detect(r0)     // Catch: java.lang.Throwable -> L44
            com.google.zxing.ResultPoint[] r3 = r9.getPoints()     // Catch: java.lang.Throwable -> L44
            com.google.zxing.aztec.decoder.Decoder r0 = new com.google.zxing.aztec.decoder.Decoder     // Catch: java.lang.Throwable -> L44
            r0.<init>()     // Catch: java.lang.Throwable -> L44
            com.google.zxing.common.DecoderResult r0 = r0.decode(r9)     // Catch: java.lang.Throwable -> L44
            goto L4c
        L44:
            r9 = move-exception
            if (r1 != 0) goto L4b
            if (r2 == 0) goto L4a
            throw r2
        L4a:
            throw r9
        L4b:
            throw r1
        L4c:
            r5 = r3
            if (r11 == 0) goto L64
            com.google.zxing.DecodeHintType r9 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            java.lang.Object r9 = r11.get(r9)
            com.google.zxing.ResultPointCallback r9 = (com.google.zxing.ResultPointCallback) r9
            if (r9 == 0) goto L64
            int r11 = r5.length
        L5a:
            if (r10 >= r11) goto L64
            r1 = r5[r10]
            r9.foundPossibleResultPoint(r1)
            int r10 = r10 + 1
            goto L5a
        L64:
            com.google.zxing.Result r9 = new com.google.zxing.Result
            java.lang.String r2 = r0.getText()
            byte[] r3 = r0.getRawBytes()
            int r4 = r0.getNumBits()
            com.google.zxing.BarcodeFormat r6 = com.google.zxing.BarcodeFormat.AZTEC
            long r7 = java.lang.System.currentTimeMillis()
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7)
            java.util.List r10 = r0.getByteSegments()
            if (r10 == 0) goto L87
            com.google.zxing.ResultMetadataType r11 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r9.putMetadata(r11, r10)
        L87:
            java.lang.String r10 = r0.getECLevel()
            if (r10 == 0) goto L92
            com.google.zxing.ResultMetadataType r11 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r9.putMetadata(r11, r10)
        L92:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.AztecReader.decode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }
}
