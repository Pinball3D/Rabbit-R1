package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class UnsignedInts {
    static final long INT_MASK = 4294967295L;

    static int flip(int i) {
        return i ^ Integer.MIN_VALUE;
    }

    public static int saturatedCast(long j) {
        if (j <= 0) {
            return 0;
        }
        if (j >= 4294967296L) {
            return -1;
        }
        return (int) j;
    }

    public static long toLong(int i) {
        return i & 4294967295L;
    }

    private UnsignedInts() {
    }

    public static int compare(int i, int i2) {
        return Ints.compare(flip(i), flip(i2));
    }

    public static int checkedCast(long j) {
        Preconditions.checkArgument((j >> 32) == 0, "out of range: %s", j);
        return (int) j;
    }

    public static int min(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        int flip = flip(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int flip2 = flip(iArr[i]);
            if (flip2 < flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    public static int max(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        int flip = flip(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int flip2 = flip(iArr[i]);
            if (flip2 > flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    public static String join(String str, int... iArr) {
        Preconditions.checkNotNull(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(toString(iArr[0]));
        for (int i = 1; i < iArr.length; i++) {
            sb.append(str).append(toString(iArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<int[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    /* loaded from: classes3.dex */
    enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int min = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < min; i++) {
                int i2 = iArr[i];
                int i3 = iArr2[i];
                if (i2 != i3) {
                    return UnsignedInts.compare(i2, i3);
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    public static void sort(int[] iArr) {
        Preconditions.checkNotNull(iArr);
        sort(iArr, 0, iArr.length);
    }

    public static void sort(int[] iArr, int i, int i2) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkPositionIndexes(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = flip(iArr[i3]);
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = flip(iArr[i]);
            i++;
        }
    }

    public static void sortDescending(int[] iArr) {
        Preconditions.checkNotNull(iArr);
        sortDescending(iArr, 0, iArr.length);
    }

    public static void sortDescending(int[] iArr, int i, int i2) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkPositionIndexes(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = Integer.MAX_VALUE ^ iArr[i3];
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = iArr[i] ^ Integer.MAX_VALUE;
            i++;
        }
    }

    public static int divide(int i, int i2) {
        return (int) (toLong(i) / toLong(i2));
    }

    public static int remainder(int i, int i2) {
        return (int) (toLong(i) % toLong(i2));
    }

    public static int decode(String str) {
        ParseRequest fromString = ParseRequest.fromString(str);
        try {
            return parseUnsignedInt(fromString.rawValue, fromString.radix);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(str);
            NumberFormatException numberFormatException = new NumberFormatException(valueOf.length() != 0 ? "Error parsing value: ".concat(valueOf) : new String("Error parsing value: "));
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    public static int parseUnsignedInt(String str) {
        return parseUnsignedInt(str, 10);
    }

    public static int parseUnsignedInt(String str, int i) {
        Preconditions.checkNotNull(str);
        long parseLong = Long.parseLong(str, i);
        if ((4294967295L & parseLong) == parseLong) {
            return (int) parseLong;
        }
        throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69).append("Input ").append(str).append(" in base ").append(i).append(" is not in the range of an unsigned integer").toString());
    }

    public static String toString(int i) {
        return toString(i, 10);
    }

    public static String toString(int i, int i2) {
        return Long.toString(i & 4294967295L, i2);
    }
}
