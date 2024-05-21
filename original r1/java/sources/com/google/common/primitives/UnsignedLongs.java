package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class UnsignedLongs {
    public static final long MAX_VALUE = -1;

    private static long flip(long j) {
        return j ^ Long.MIN_VALUE;
    }

    private UnsignedLongs() {
    }

    public static int compare(long j, long j2) {
        return Longs.compare(flip(j), flip(j2));
    }

    public static long min(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long flip = flip(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long flip2 = flip(jArr[i]);
            if (flip2 < flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long flip = flip(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long flip2 = flip(jArr[i]);
            if (flip2 > flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(toString(jArr[0]));
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str).append(toString(jArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<long[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    /* loaded from: classes3.dex */
    enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int min = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < min; i++) {
                long j = jArr[i];
                long j2 = jArr2[i];
                if (j != j2) {
                    return UnsignedLongs.compare(j, j2);
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    public static void sort(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sort(jArr, 0, jArr.length);
    }

    public static void sort(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = flip(jArr[i3]);
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = flip(jArr[i]);
            i++;
        }
    }

    public static void sortDescending(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sortDescending(jArr, 0, jArr.length);
    }

    public static void sortDescending(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = Long.MAX_VALUE ^ jArr[i3];
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = jArr[i] ^ Long.MAX_VALUE;
            i++;
        }
    }

    public static long divide(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return j3 + (compare(j - (j3 * j2), j2) < 0 ? 0 : 1);
    }

    public static long remainder(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? j : j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (compare(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }

    public static long parseUnsignedLong(String str) {
        return parseUnsignedLong(str, 10);
    }

    public static long parseUnsignedLong(String str, int i) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i < 2 || i > 36) {
            throw new NumberFormatException(new StringBuilder(26).append("illegal radix: ").append(i).toString());
        }
        int i2 = ParseOverflowDetection.maxSafeDigits[i] - 1;
        long j = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            int digit = Character.digit(str.charAt(i3), i);
            if (digit == -1) {
                throw new NumberFormatException(str);
            }
            if (i3 > i2 && ParseOverflowDetection.overflowInParse(j, digit, i)) {
                String valueOf = String.valueOf(str);
                throw new NumberFormatException(valueOf.length() != 0 ? "Too large for unsigned long: ".concat(valueOf) : new String("Too large for unsigned long: "));
            }
            j = (j * i) + digit;
        }
        return j;
    }

    public static long decode(String str) {
        ParseRequest fromString = ParseRequest.fromString(str);
        try {
            return parseUnsignedLong(fromString.rawValue, fromString.radix);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(str);
            NumberFormatException numberFormatException = new NumberFormatException(valueOf.length() != 0 ? "Error parsing value: ".concat(valueOf) : new String("Error parsing value: "));
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ParseOverflowDetection {
        static final long[] maxValueDivs = new long[37];
        static final int[] maxValueMods = new int[37];
        static final int[] maxSafeDigits = new int[37];

        private ParseOverflowDetection() {
        }

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i = 2; i <= 36; i++) {
                long j = i;
                maxValueDivs[i] = UnsignedLongs.divide(-1L, j);
                maxValueMods[i] = (int) UnsignedLongs.remainder(-1L, j);
                maxSafeDigits[i] = bigInteger.toString(i).length() - 1;
            }
        }

        static boolean overflowInParse(long j, int i, int i2) {
            if (j < 0) {
                return true;
            }
            long j2 = maxValueDivs[i2];
            if (j < j2) {
                return false;
            }
            return j > j2 || i > maxValueMods[i2];
        }
    }

    public static String toString(long j) {
        return toString(j, 10);
    }

    public static String toString(long j, int i) {
        long divide;
        Preconditions.checkArgument(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i);
        if (j == 0) {
            return "0";
        }
        if (j > 0) {
            return Long.toString(j, i);
        }
        int i2 = 64;
        char[] cArr = new char[64];
        int i3 = i - 1;
        if ((i & i3) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i2--;
                cArr[i2] = Character.forDigit(((int) j) & i3, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            if ((i & 1) == 0) {
                divide = (j >>> 1) / (i >>> 1);
            } else {
                divide = divide(j, i);
            }
            long j2 = i;
            int i4 = 63;
            cArr[63] = Character.forDigit((int) (j - (divide * j2)), i);
            while (divide > 0) {
                i4--;
                cArr[i4] = Character.forDigit((int) (divide % j2), i);
                divide /= j2;
            }
            i2 = i4;
        }
        return new String(cArr, i2, 64 - i2);
    }
}
