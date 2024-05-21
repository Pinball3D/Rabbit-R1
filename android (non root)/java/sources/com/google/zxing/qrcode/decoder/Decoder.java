package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Decoder {
    private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.QR_CODE_FIELD_256);

    public DecoderResult decode(boolean[][] zArr) throws ChecksumException, FormatException {
        return decode(zArr, (Map<DecodeHintType, ?>) null);
    }

    public DecoderResult decode(boolean[][] zArr, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        return decode(BitMatrix.parse(zArr), map);
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws ChecksumException, FormatException {
        return decode(bitMatrix, (Map<DecodeHintType, ?>) null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) throws FormatException, ChecksumException {
        ChecksumException e;
        BitMatrixParser bitMatrixParser = new BitMatrixParser(bitMatrix);
        FormatException formatException = null;
        try {
            return decode(bitMatrixParser, map);
        } catch (ChecksumException e2) {
            e = e2;
            try {
                bitMatrixParser.remask();
                bitMatrixParser.setMirror(true);
                bitMatrixParser.readVersion();
                bitMatrixParser.readFormatInformation();
                bitMatrixParser.mirror();
                DecoderResult decode = this.decode(bitMatrixParser, map);
                decode.setOther(new QRCodeDecoderMetaData(true));
                return decode;
            } catch (ChecksumException | FormatException unused) {
                if (formatException != null) {
                    throw formatException;
                }
                throw e;
            }
        } catch (FormatException e3) {
            e = null;
            formatException = e3;
            bitMatrixParser.remask();
            bitMatrixParser.setMirror(true);
            bitMatrixParser.readVersion();
            bitMatrixParser.readFormatInformation();
            bitMatrixParser.mirror();
            DecoderResult decode2 = this.decode(bitMatrixParser, map);
            decode2.setOther(new QRCodeDecoderMetaData(true));
            return decode2;
        }
    }

    private DecoderResult decode(BitMatrixParser bitMatrixParser, Map<DecodeHintType, ?> map) throws FormatException, ChecksumException {
        Version readVersion = bitMatrixParser.readVersion();
        ErrorCorrectionLevel errorCorrectionLevel = bitMatrixParser.readFormatInformation().getErrorCorrectionLevel();
        DataBlock[] dataBlocks = DataBlock.getDataBlocks(bitMatrixParser.readCodewords(), readVersion, errorCorrectionLevel);
        int i = 0;
        for (DataBlock dataBlock : dataBlocks) {
            i += dataBlock.getNumDataCodewords();
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (DataBlock dataBlock2 : dataBlocks) {
            byte[] codewords = dataBlock2.getCodewords();
            int numDataCodewords = dataBlock2.getNumDataCodewords();
            correctErrors(codewords, numDataCodewords);
            int i3 = 0;
            while (i3 < numDataCodewords) {
                bArr[i2] = codewords[i3];
                i3++;
                i2++;
            }
        }
        return DecodedBitStreamParser.decode(bArr, readVersion, errorCorrectionLevel, map);
    }

    private void correctErrors(byte[] bArr, int i) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.rsDecoder.decode(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }
}
