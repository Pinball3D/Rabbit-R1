package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class SignedBytes {
    public static final byte MAX_POWER_OF_TWO = 64;

    public static int compare(byte b, byte b2) {
        return b - b2;
    }

    public static byte saturatedCast(long j) {
        if (j > 127) {
            return Byte.MAX_VALUE;
        }
        if (j < -128) {
            return Byte.MIN_VALUE;
        }
        return (byte) j;
    }

    private SignedBytes() {
    }

    public static byte checkedCast(long j) {
        byte b = (byte) j;
        Preconditions.checkArgument(((long) b) == j, "Out of range: %s", j);
        return b;
    }

    public static byte min(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            byte b2 = bArr[i];
            if (b2 < b) {
                b = b2;
            }
        }
        return b;
    }

    public static byte max(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            byte b2 = bArr[i];
            if (b2 > b) {
                b = b2;
            }
        }
        return b;
    }

    public static String join(String str, byte... bArr) {
        Preconditions.checkNotNull(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 5);
        sb.append((int) bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str).append((int) bArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<byte[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    /* loaded from: classes3.dex */
    private enum LexicographicalComparator implements Comparator<byte[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int min = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < min; i++) {
                int compare = SignedBytes.compare(bArr[i], bArr2[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return bArr.length - bArr2.length;
        }
    }

    public static void sortDescending(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        sortDescending(bArr, 0, bArr.length);
    }

    public static void sortDescending(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i2, bArr.length);
        Arrays.sort(bArr, i, i2);
        Bytes.reverse(bArr, i, i2);
    }
}
