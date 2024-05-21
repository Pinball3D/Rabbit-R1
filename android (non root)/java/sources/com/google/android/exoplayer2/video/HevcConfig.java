package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class HevcConfig {
    private static final int SPS_NAL_UNIT_TYPE = 33;
    public final String codecs;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    public final int height;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public static HevcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        int i;
        int i2;
        try {
            parsableByteArray.skipBytes(21);
            int readUnsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i3 = 0;
            for (int i4 = 0; i4 < readUnsignedByte2; i4++) {
                parsableByteArray.skipBytes(1);
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                for (int i5 = 0; i5 < readUnsignedShort; i5++) {
                    int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                    i3 += readUnsignedShort2 + 4;
                    parsableByteArray.skipBytes(readUnsignedShort2);
                }
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i3];
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            float f = 1.0f;
            String str = null;
            int i11 = 0;
            for (int i12 = 0; i12 < readUnsignedByte2; i12++) {
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte() & 63;
                int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
                int i13 = 0;
                while (i13 < readUnsignedShort3) {
                    int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                    int i14 = readUnsignedByte2;
                    System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, bArr, i11, NalUnitUtil.NAL_START_CODE.length);
                    int length = i11 + NalUnitUtil.NAL_START_CODE.length;
                    System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), bArr, length, readUnsignedShort4);
                    if (readUnsignedByte3 == 33 && i13 == 0) {
                        NalUnitUtil.H265SpsData parseH265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(bArr, length, length + readUnsignedShort4);
                        int i15 = parseH265SpsNalUnit.width;
                        i7 = parseH265SpsNalUnit.height;
                        int i16 = parseH265SpsNalUnit.colorSpace;
                        int i17 = parseH265SpsNalUnit.colorRange;
                        int i18 = parseH265SpsNalUnit.colorTransfer;
                        float f2 = parseH265SpsNalUnit.pixelWidthHeightRatio;
                        i = readUnsignedByte3;
                        i2 = readUnsignedShort3;
                        i6 = i15;
                        i10 = i18;
                        str = CodecSpecificDataUtil.buildHevcCodecString(parseH265SpsNalUnit.generalProfileSpace, parseH265SpsNalUnit.generalTierFlag, parseH265SpsNalUnit.generalProfileIdc, parseH265SpsNalUnit.generalProfileCompatibilityFlags, parseH265SpsNalUnit.constraintBytes, parseH265SpsNalUnit.generalLevelIdc);
                        i9 = i17;
                        f = f2;
                        i8 = i16;
                    } else {
                        i = readUnsignedByte3;
                        i2 = readUnsignedShort3;
                    }
                    i11 = length + readUnsignedShort4;
                    parsableByteArray.skipBytes(readUnsignedShort4);
                    i13++;
                    readUnsignedByte2 = i14;
                    readUnsignedByte3 = i;
                    readUnsignedShort3 = i2;
                }
            }
            return new HevcConfig(i3 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), readUnsignedByte + 1, i6, i7, f, str, i8, i9, i10);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing HEVC config", e);
        }
    }

    private HevcConfig(List<byte[]> list, int i, int i2, int i3, float f, String str, int i4, int i5, int i6) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i;
        this.width = i2;
        this.height = i3;
        this.pixelWidthHeightRatio = f;
        this.codecs = str;
        this.colorSpace = i4;
        this.colorRange = i5;
        this.colorTransfer = i6;
    }
}
