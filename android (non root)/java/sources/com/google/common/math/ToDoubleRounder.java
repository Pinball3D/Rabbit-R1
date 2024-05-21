package com.google.common.math;

import com.google.common.base.Preconditions;
import io.sentry.protocol.ViewHierarchyNode;
import java.lang.Comparable;
import java.lang.Number;
import java.math.RoundingMode;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class ToDoubleRounder<X extends Number & Comparable<X>> {
    abstract X minus(X x, X x2);

    abstract double roundToDoubleArbitrarily(X x);

    abstract int sign(X x);

    abstract X toX(double d, RoundingMode roundingMode);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double roundToDouble(X x, RoundingMode roundingMode) {
        X x2;
        double d;
        Preconditions.checkNotNull(x, ViewHierarchyNode.JsonKeys.X);
        Preconditions.checkNotNull(roundingMode, "mode");
        double roundToDoubleArbitrarily = roundToDoubleArbitrarily(x);
        if (Double.isInfinite(roundToDoubleArbitrarily)) {
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return sign(x) * Double.MAX_VALUE;
                case 5:
                    return roundToDoubleArbitrarily == Double.POSITIVE_INFINITY ? Double.MAX_VALUE : Double.NEGATIVE_INFINITY;
                case 6:
                    return roundToDoubleArbitrarily == Double.POSITIVE_INFINITY ? Double.POSITIVE_INFINITY : -1.7976931348623157E308d;
                case 7:
                    return roundToDoubleArbitrarily;
                case 8:
                    String valueOf = String.valueOf(x);
                    throw new ArithmeticException(new StringBuilder(String.valueOf(valueOf).length() + 44).append(valueOf).append(" cannot be represented precisely as a double").toString());
            }
        }
        X x3 = toX(roundToDoubleArbitrarily, RoundingMode.UNNECESSARY);
        int compareTo = ((Comparable) x).compareTo(x3);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                return sign(x) >= 0 ? compareTo >= 0 ? roundToDoubleArbitrarily : DoubleUtils.nextDown(roundToDoubleArbitrarily) : compareTo <= 0 ? roundToDoubleArbitrarily : Math.nextUp(roundToDoubleArbitrarily);
            case 2:
            case 3:
            case 4:
                if (compareTo >= 0) {
                    d = Math.nextUp(roundToDoubleArbitrarily);
                    if (d == Double.POSITIVE_INFINITY) {
                        return roundToDoubleArbitrarily;
                    }
                    x2 = toX(d, RoundingMode.CEILING);
                } else {
                    double nextDown = DoubleUtils.nextDown(roundToDoubleArbitrarily);
                    if (nextDown == Double.NEGATIVE_INFINITY) {
                        return roundToDoubleArbitrarily;
                    }
                    X x4 = toX(nextDown, RoundingMode.FLOOR);
                    x2 = x3;
                    x3 = x4;
                    d = roundToDoubleArbitrarily;
                    roundToDoubleArbitrarily = nextDown;
                }
                int compareTo2 = ((Comparable) minus(x, x3)).compareTo(minus(x2, x));
                if (compareTo2 < 0) {
                    return roundToDoubleArbitrarily;
                }
                if (compareTo2 > 0) {
                    return d;
                }
                int i = AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()];
                if (i == 2) {
                    return (Double.doubleToRawLongBits(roundToDoubleArbitrarily) & 1) == 0 ? roundToDoubleArbitrarily : d;
                }
                if (i == 3) {
                    return sign(x) >= 0 ? roundToDoubleArbitrarily : d;
                }
                if (i == 4) {
                    return sign(x) >= 0 ? d : roundToDoubleArbitrarily;
                }
                throw new AssertionError("impossible");
            case 5:
                return compareTo >= 0 ? roundToDoubleArbitrarily : DoubleUtils.nextDown(roundToDoubleArbitrarily);
            case 6:
                return compareTo <= 0 ? roundToDoubleArbitrarily : Math.nextUp(roundToDoubleArbitrarily);
            case 7:
                return sign(x) >= 0 ? compareTo <= 0 ? roundToDoubleArbitrarily : Math.nextUp(roundToDoubleArbitrarily) : compareTo >= 0 ? roundToDoubleArbitrarily : DoubleUtils.nextDown(roundToDoubleArbitrarily);
            case 8:
                MathPreconditions.checkRoundingUnnecessary(compareTo == 0);
                return roundToDoubleArbitrarily;
            default:
                throw new AssertionError("impossible");
        }
    }

    /* renamed from: com.google.common.math.ToDoubleRounder$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UNNECESSARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }
}
