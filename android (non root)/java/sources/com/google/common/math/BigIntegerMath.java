package com.google.common.math;

import com.google.common.base.Preconditions;
import io.sentry.protocol.ViewHierarchyNode;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class BigIntegerMath {
    static final int SQRT2_PRECOMPUTE_THRESHOLD = 256;
    static final BigInteger SQRT2_PRECOMPUTED_BITS = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);
    private static final double LN_10 = Math.log(10.0d);
    private static final double LN_2 = Math.log(2.0d);

    public static BigInteger ceilingPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.CEILING));
    }

    public static BigInteger floorPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.FLOOR));
    }

    public static boolean isPowerOfTwo(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        return bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() - 1;
    }

    public static int log2(BigInteger bigInteger, RoundingMode roundingMode) {
        MathPreconditions.checkPositive(ViewHierarchyNode.JsonKeys.X, (BigInteger) Preconditions.checkNotNull(bigInteger));
        int bitLength = bigInteger.bitLength();
        int i = bitLength - 1;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(bigInteger));
            case 2:
            case 3:
                return i;
            case 4:
            case 5:
                return isPowerOfTwo(bigInteger) ? i : bitLength;
            case 6:
            case 7:
            case 8:
                return i < 256 ? bigInteger.compareTo(SQRT2_PRECOMPUTED_BITS.shiftRight(256 - i)) <= 0 ? i : bitLength : bigInteger.pow(2).bitLength() + (-1) < (i * 2) + 1 ? i : bitLength;
            default:
                throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.math.BigIntegerMath$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c A[FALL_THROUGH, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log10(java.math.BigInteger r7, java.math.RoundingMode r8) {
        /*
            java.lang.String r0 = "x"
            com.google.common.math.MathPreconditions.checkPositive(r0, r7)
            boolean r0 = fitsInLong(r7)
            if (r0 == 0) goto L14
            long r0 = r7.longValue()
            int r7 = com.google.common.math.LongMath.log10(r0, r8)
            return r7
        L14:
            java.math.RoundingMode r0 = java.math.RoundingMode.FLOOR
            int r0 = log2(r7, r0)
            double r0 = (double) r0
            double r2 = com.google.common.math.BigIntegerMath.LN_2
            double r0 = r0 * r2
            double r2 = com.google.common.math.BigIntegerMath.LN_10
            double r0 = r0 / r2
            int r0 = (int) r0
            java.math.BigInteger r1 = java.math.BigInteger.TEN
            java.math.BigInteger r1 = r1.pow(r0)
            int r2 = r1.compareTo(r7)
            if (r2 <= 0) goto L3d
        L2e:
            int r0 = r0 + (-1)
            java.math.BigInteger r2 = java.math.BigInteger.TEN
            java.math.BigInteger r1 = r1.divide(r2)
            int r2 = r1.compareTo(r7)
            if (r2 > 0) goto L2e
            goto L60
        L3d:
            java.math.BigInteger r3 = java.math.BigInteger.TEN
            java.math.BigInteger r3 = r3.multiply(r1)
            int r4 = r3.compareTo(r7)
            r5 = r4
            r4 = r2
            r2 = r5
        L4a:
            if (r2 > 0) goto L5f
            int r0 = r0 + 1
            java.math.BigInteger r1 = java.math.BigInteger.TEN
            java.math.BigInteger r1 = r1.multiply(r3)
            int r4 = r1.compareTo(r7)
            r5 = r3
            r3 = r1
            r1 = r5
            r6 = r4
            r4 = r2
            r2 = r6
            goto L4a
        L5f:
            r2 = r4
        L60:
            int[] r3 = com.google.common.math.BigIntegerMath.AnonymousClass1.$SwitchMap$java$math$RoundingMode
            int r8 = r8.ordinal()
            r8 = r3[r8]
            switch(r8) {
                case 1: goto L94;
                case 2: goto L9c;
                case 3: goto L9c;
                case 4: goto L8a;
                case 5: goto L8a;
                case 6: goto L71;
                case 7: goto L71;
                case 8: goto L71;
                default: goto L6b;
            }
        L6b:
            java.lang.AssertionError r7 = new java.lang.AssertionError
            r7.<init>()
            throw r7
        L71:
            r8 = 2
            java.math.BigInteger r7 = r7.pow(r8)
            java.math.BigInteger r8 = r1.pow(r8)
            java.math.BigInteger r1 = java.math.BigInteger.TEN
            java.math.BigInteger r8 = r8.multiply(r1)
            int r7 = r7.compareTo(r8)
            if (r7 > 0) goto L87
            goto L89
        L87:
            int r0 = r0 + 1
        L89:
            return r0
        L8a:
            boolean r7 = r1.equals(r7)
            if (r7 == 0) goto L91
            goto L93
        L91:
            int r0 = r0 + 1
        L93:
            return r0
        L94:
            if (r2 != 0) goto L98
            r7 = 1
            goto L99
        L98:
            r7 = 0
        L99:
            com.google.common.math.MathPreconditions.checkRoundingUnnecessary(r7)
        L9c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.BigIntegerMath.log10(java.math.BigInteger, java.math.RoundingMode):int");
    }

    public static BigInteger sqrt(BigInteger bigInteger, RoundingMode roundingMode) {
        MathPreconditions.checkNonNegative(ViewHierarchyNode.JsonKeys.X, bigInteger);
        if (fitsInLong(bigInteger)) {
            return BigInteger.valueOf(LongMath.sqrt(bigInteger.longValue(), roundingMode));
        }
        BigInteger sqrtFloor = sqrtFloor(bigInteger);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(sqrtFloor.pow(2).equals(bigInteger));
            case 2:
            case 3:
                return sqrtFloor;
            case 4:
            case 5:
                int intValue = sqrtFloor.intValue();
                return (intValue * intValue == bigInteger.intValue() && sqrtFloor.pow(2).equals(bigInteger)) ? sqrtFloor : sqrtFloor.add(BigInteger.ONE);
            case 6:
            case 7:
            case 8:
                return sqrtFloor.pow(2).add(sqrtFloor).compareTo(bigInteger) >= 0 ? sqrtFloor : sqrtFloor.add(BigInteger.ONE);
            default:
                throw new AssertionError();
        }
    }

    private static BigInteger sqrtFloor(BigInteger bigInteger) {
        BigInteger shiftLeft;
        int log2 = log2(bigInteger, RoundingMode.FLOOR);
        if (log2 < 1023) {
            shiftLeft = sqrtApproxWithDoubles(bigInteger);
        } else {
            int i = (log2 - 52) & (-2);
            shiftLeft = sqrtApproxWithDoubles(bigInteger.shiftRight(i)).shiftLeft(i >> 1);
        }
        BigInteger shiftRight = shiftLeft.add(bigInteger.divide(shiftLeft)).shiftRight(1);
        if (shiftLeft.equals(shiftRight)) {
            return shiftLeft;
        }
        while (true) {
            BigInteger shiftRight2 = shiftRight.add(bigInteger.divide(shiftRight)).shiftRight(1);
            if (shiftRight2.compareTo(shiftRight) >= 0) {
                return shiftRight;
            }
            shiftRight = shiftRight2;
        }
    }

    private static BigInteger sqrtApproxWithDoubles(BigInteger bigInteger) {
        return DoubleMath.roundToBigInteger(Math.sqrt(DoubleUtils.bigToDouble(bigInteger)), RoundingMode.HALF_EVEN);
    }

    public static double roundToDouble(BigInteger bigInteger, RoundingMode roundingMode) {
        return BigIntegerToDoubleRounder.INSTANCE.roundToDouble(bigInteger, roundingMode);
    }

    /* loaded from: classes3.dex */
    private static class BigIntegerToDoubleRounder extends ToDoubleRounder<BigInteger> {
        static final BigIntegerToDoubleRounder INSTANCE = new BigIntegerToDoubleRounder();

        private BigIntegerToDoubleRounder() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.math.ToDoubleRounder
        public double roundToDoubleArbitrarily(BigInteger bigInteger) {
            return DoubleUtils.bigToDouble(bigInteger);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.math.ToDoubleRounder
        public int sign(BigInteger bigInteger) {
            return bigInteger.signum();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.math.ToDoubleRounder
        public BigInteger toX(double d, RoundingMode roundingMode) {
            return DoubleMath.roundToBigInteger(d, roundingMode);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.math.ToDoubleRounder
        public BigInteger minus(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger.subtract(bigInteger2);
        }
    }

    public static BigInteger divide(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    public static BigInteger factorial(int i) {
        MathPreconditions.checkNonNegative("n", i);
        if (i < LongMath.factorials.length) {
            return BigInteger.valueOf(LongMath.factorials[i]);
        }
        ArrayList arrayList = new ArrayList(IntMath.divide(IntMath.log2(i, RoundingMode.CEILING) * i, 64, RoundingMode.CEILING));
        int length = LongMath.factorials.length;
        long j = LongMath.factorials[length - 1];
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j2 = j >> numberOfTrailingZeros;
        int log2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
        long j3 = length;
        int log22 = LongMath.log2(j3, RoundingMode.FLOOR);
        int i2 = log22 + 1;
        int i3 = 1 << log22;
        while (j3 <= i) {
            if ((j3 & i3) != 0) {
                i3 <<= 1;
                i2++;
            }
            int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> numberOfTrailingZeros2;
            numberOfTrailingZeros += numberOfTrailingZeros2;
            if ((i2 - numberOfTrailingZeros2) + log2 >= 64) {
                arrayList.add(BigInteger.valueOf(j2));
                j2 = 1;
            }
            j2 *= j4;
            log2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
            j3++;
        }
        if (j2 > 1) {
            arrayList.add(BigInteger.valueOf(j2));
        }
        return listProduct(arrayList).shiftLeft(numberOfTrailingZeros);
    }

    static BigInteger listProduct(List<BigInteger> list) {
        return listProduct(list, 0, list.size());
    }

    static BigInteger listProduct(List<BigInteger> list, int i, int i2) {
        int i3 = i2 - i;
        if (i3 == 0) {
            return BigInteger.ONE;
        }
        if (i3 == 1) {
            return list.get(i);
        }
        if (i3 == 2) {
            return list.get(i).multiply(list.get(i + 1));
        }
        if (i3 == 3) {
            return list.get(i).multiply(list.get(i + 1)).multiply(list.get(i + 2));
        }
        int i4 = (i2 + i) >>> 1;
        return listProduct(list, i, i4).multiply(listProduct(list, i4, i2));
    }

    public static BigInteger binomial(int i, int i2) {
        int i3;
        MathPreconditions.checkNonNegative("n", i);
        MathPreconditions.checkNonNegative("k", i2);
        int i4 = 1;
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 < LongMath.biggestBinomials.length && i <= LongMath.biggestBinomials[i2]) {
            return BigInteger.valueOf(LongMath.binomial(i, i2));
        }
        BigInteger bigInteger = BigInteger.ONE;
        long j = i;
        int log2 = LongMath.log2(j, RoundingMode.CEILING);
        long j2 = 1;
        while (true) {
            int i5 = log2;
            while (i4 < i2) {
                i3 = i - i4;
                i4++;
                i5 += log2;
                if (i5 >= 63) {
                    break;
                }
                j *= i3;
                j2 *= i4;
            }
            return bigInteger.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            bigInteger = bigInteger.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            j = i3;
            j2 = i4;
        }
    }

    static boolean fitsInLong(BigInteger bigInteger) {
        return bigInteger.bitLength() <= 63;
    }

    private BigIntegerMath() {
    }
}
