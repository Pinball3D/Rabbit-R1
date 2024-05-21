package com.google.android.exoplayer2.util;

import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class CodecSpecificDataUtil {
    private static final int EXTENDED_PAR = 15;
    private static final int RECTANGULAR = 0;
    private static final int VISUAL_OBJECT_LAYER = 1;
    private static final int VISUAL_OBJECT_LAYER_START = 32;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final String[] HEVC_GENERAL_PROFILE_SPACE_STRINGS = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};

    public static Pair<Integer, Integer> parseAlacAudioSpecificConfig(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        parsableByteArray.setPosition(9);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.setPosition(20);
        return Pair.create(Integer.valueOf(parsableByteArray.readUnsignedIntToInt()), Integer.valueOf(readUnsignedByte));
    }

    public static List<byte[]> buildCea708InitializationData(boolean z) {
        return Collections.singletonList(z ? new byte[]{1} : new byte[]{0});
    }

    public static boolean parseCea708InitializationData(List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }

    public static Pair<Integer, Integer> getVideoResolutionFromMpeg4VideoConfig(byte[] bArr) {
        boolean z;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2 + 3;
            if (i3 >= bArr.length) {
                z = false;
                break;
            }
            if (parsableByteArray.readUnsignedInt24() == 1 && (bArr[i3] & 240) == 32) {
                z = true;
                break;
            }
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 2);
            i2++;
        }
        Assertions.checkArgument(z, "Invalid input: VOL not found.");
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.skipBits((i2 + 4) * 8);
        parsableBitArray.skipBits(1);
        parsableBitArray.skipBits(8);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(4);
            parsableBitArray.skipBits(3);
        }
        if (parsableBitArray.readBits(4) == 15) {
            parsableBitArray.skipBits(8);
            parsableBitArray.skipBits(8);
        }
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(2);
            parsableBitArray.skipBits(1);
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(79);
            }
        }
        Assertions.checkArgument(parsableBitArray.readBits(2) == 0, "Only supports rectangular video object layer shape.");
        Assertions.checkArgument(parsableBitArray.readBit());
        int readBits = parsableBitArray.readBits(16);
        Assertions.checkArgument(parsableBitArray.readBit());
        if (parsableBitArray.readBit()) {
            Assertions.checkArgument(readBits > 0);
            for (int i4 = readBits - 1; i4 > 0; i4 >>= 1) {
                i++;
            }
            parsableBitArray.skipBits(i);
        }
        Assertions.checkArgument(parsableBitArray.readBit());
        int readBits2 = parsableBitArray.readBits(13);
        Assertions.checkArgument(parsableBitArray.readBit());
        int readBits3 = parsableBitArray.readBits(13);
        Assertions.checkArgument(parsableBitArray.readBit());
        parsableBitArray.skipBits(1);
        return Pair.create(Integer.valueOf(readBits2), Integer.valueOf(readBits3));
    }

    public static String buildAvcCodecString(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String buildHevcCodecString(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        Object[] objArr = new Object[5];
        objArr[0] = HEVC_GENERAL_PROFILE_SPACE_STRINGS[i];
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(i3);
        objArr[3] = Character.valueOf(z ? 'H' : 'L');
        objArr[4] = Integer.valueOf(i4);
        StringBuilder sb = new StringBuilder(Util.formatInvariant("hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i5 = 0; i5 < length; i5++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    public static byte[][] splitNalUnits(byte[] bArr) {
        if (!isNalStartCode(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            arrayList.add(Integer.valueOf(i));
            i = findNalStartCode(bArr, i + NAL_START_CODE.length);
        } while (i != -1);
        byte[][] bArr2 = new byte[arrayList.size()];
        int i2 = 0;
        while (i2 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            int intValue2 = (i2 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i2 + 1)).intValue() : bArr.length) - intValue;
            byte[] bArr3 = new byte[intValue2];
            System.arraycopy(bArr, intValue, bArr3, 0, intValue2);
            bArr2[i2] = bArr3;
            i2++;
        }
        return bArr2;
    }

    private static int findNalStartCode(byte[] bArr, int i) {
        int length = bArr.length - NAL_START_CODE.length;
        while (i <= length) {
            if (isNalStartCode(bArr, i)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private static boolean isNalStartCode(byte[] bArr, int i) {
        if (bArr.length - i <= NAL_START_CODE.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = NAL_START_CODE;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    private CodecSpecificDataUtil() {
    }
}
