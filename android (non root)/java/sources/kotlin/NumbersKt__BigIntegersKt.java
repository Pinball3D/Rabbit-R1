package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BigIntegers.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0087\f\u001a\u0015\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0087\f\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0010\u001a\u00020\u0011*\u00020\u0001H\u0087\b\u001a!\u0010\u0010\u001a\u00020\u0011*\u00020\u00012\b\b\u0002\u0010\u0012\u001a\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\rH\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\u0016H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f¨\u0006\u0019"}, d2 = {"and", "Ljava/math/BigInteger;", "other", "dec", "div", "inc", "inv", "minus", "or", "plus", "rem", "shl", "n", "", "shr", "times", "toBigDecimal", "Ljava/math/BigDecimal;", "scale", "mathContext", "Ljava/math/MathContext;", "toBigInteger", "", "unaryMinus", "xor", "kotlin-stdlib"}, k = 5, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/NumbersKt")
/* loaded from: classes3.dex */
class NumbersKt__BigIntegersKt extends NumbersKt__BigDecimalsKt {
    private static final BigInteger plus(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger add = bigInteger.add(other);
        Intrinsics.checkNotNullExpressionValue(add, "add(...)");
        return add;
    }

    private static final BigInteger minus(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger subtract = bigInteger.subtract(other);
        Intrinsics.checkNotNullExpressionValue(subtract, "subtract(...)");
        return subtract;
    }

    private static final BigInteger times(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger multiply = bigInteger.multiply(other);
        Intrinsics.checkNotNullExpressionValue(multiply, "multiply(...)");
        return multiply;
    }

    private static final BigInteger div(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger divide = bigInteger.divide(other);
        Intrinsics.checkNotNullExpressionValue(divide, "divide(...)");
        return divide;
    }

    private static final BigInteger rem(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger remainder = bigInteger.remainder(other);
        Intrinsics.checkNotNullExpressionValue(remainder, "remainder(...)");
        return remainder;
    }

    private static final BigInteger unaryMinus(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger negate = bigInteger.negate();
        Intrinsics.checkNotNullExpressionValue(negate, "negate(...)");
        return negate;
    }

    private static final BigInteger inc(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger add = bigInteger.add(BigInteger.ONE);
        Intrinsics.checkNotNullExpressionValue(add, "add(...)");
        return add;
    }

    private static final BigInteger dec(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger subtract = bigInteger.subtract(BigInteger.ONE);
        Intrinsics.checkNotNullExpressionValue(subtract, "subtract(...)");
        return subtract;
    }

    private static final BigInteger inv(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger not = bigInteger.not();
        Intrinsics.checkNotNullExpressionValue(not, "not(...)");
        return not;
    }

    private static final BigInteger and(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger and = bigInteger.and(other);
        Intrinsics.checkNotNullExpressionValue(and, "and(...)");
        return and;
    }

    private static final BigInteger or(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger or = bigInteger.or(other);
        Intrinsics.checkNotNullExpressionValue(or, "or(...)");
        return or;
    }

    private static final BigInteger xor(BigInteger bigInteger, BigInteger other) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigInteger xor = bigInteger.xor(other);
        Intrinsics.checkNotNullExpressionValue(xor, "xor(...)");
        return xor;
    }

    private static final BigInteger shl(BigInteger bigInteger, int i) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger shiftLeft = bigInteger.shiftLeft(i);
        Intrinsics.checkNotNullExpressionValue(shiftLeft, "shiftLeft(...)");
        return shiftLeft;
    }

    private static final BigInteger shr(BigInteger bigInteger, int i) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        BigInteger shiftRight = bigInteger.shiftRight(i);
        Intrinsics.checkNotNullExpressionValue(shiftRight, "shiftRight(...)");
        return shiftRight;
    }

    private static final BigInteger toBigInteger(int i) {
        BigInteger valueOf = BigInteger.valueOf(i);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return valueOf;
    }

    private static final BigInteger toBigInteger(long j) {
        BigInteger valueOf = BigInteger.valueOf(j);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return valueOf;
    }

    private static final BigDecimal toBigDecimal(BigInteger bigInteger) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        return new BigDecimal(bigInteger);
    }

    static /* synthetic */ BigDecimal toBigDecimal$default(BigInteger bigInteger, int i, MathContext mathContext, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            mathContext = MathContext.UNLIMITED;
            Intrinsics.checkNotNullExpressionValue(mathContext, "UNLIMITED");
        }
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        return new BigDecimal(bigInteger, i, mathContext);
    }

    private static final BigDecimal toBigDecimal(BigInteger bigInteger, int i, MathContext mathContext) {
        Intrinsics.checkNotNullParameter(bigInteger, "<this>");
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        return new BigDecimal(bigInteger, i, mathContext);
    }
}
