package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BigDecimals.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0087\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\rH\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u000b\u001a\u00020\fH\u0087\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u000eH\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0087\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u000fH\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\fH\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u0001*\u00020\u0001H\u0087\n¨\u0006\u0011"}, d2 = {"dec", "Ljava/math/BigDecimal;", "div", "other", "inc", "minus", "plus", "rem", "times", "toBigDecimal", "", "mathContext", "Ljava/math/MathContext;", "", "", "", "unaryMinus", "kotlin-stdlib"}, k = 5, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/NumbersKt")
/* loaded from: classes3.dex */
class NumbersKt__BigDecimalsKt {
    private static final BigDecimal plus(BigDecimal bigDecimal, BigDecimal other) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigDecimal add = bigDecimal.add(other);
        Intrinsics.checkNotNullExpressionValue(add, "add(...)");
        return add;
    }

    private static final BigDecimal minus(BigDecimal bigDecimal, BigDecimal other) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigDecimal subtract = bigDecimal.subtract(other);
        Intrinsics.checkNotNullExpressionValue(subtract, "subtract(...)");
        return subtract;
    }

    private static final BigDecimal times(BigDecimal bigDecimal, BigDecimal other) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigDecimal multiply = bigDecimal.multiply(other);
        Intrinsics.checkNotNullExpressionValue(multiply, "multiply(...)");
        return multiply;
    }

    private static final BigDecimal div(BigDecimal bigDecimal, BigDecimal other) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigDecimal divide = bigDecimal.divide(other, RoundingMode.HALF_EVEN);
        Intrinsics.checkNotNullExpressionValue(divide, "divide(...)");
        return divide;
    }

    private static final BigDecimal rem(BigDecimal bigDecimal, BigDecimal other) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        BigDecimal remainder = bigDecimal.remainder(other);
        Intrinsics.checkNotNullExpressionValue(remainder, "remainder(...)");
        return remainder;
    }

    private static final BigDecimal unaryMinus(BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        BigDecimal negate = bigDecimal.negate();
        Intrinsics.checkNotNullExpressionValue(negate, "negate(...)");
        return negate;
    }

    private static final BigDecimal inc(BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        BigDecimal add = bigDecimal.add(BigDecimal.ONE);
        Intrinsics.checkNotNullExpressionValue(add, "add(...)");
        return add;
    }

    private static final BigDecimal dec(BigDecimal bigDecimal) {
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        BigDecimal subtract = bigDecimal.subtract(BigDecimal.ONE);
        Intrinsics.checkNotNullExpressionValue(subtract, "subtract(...)");
        return subtract;
    }

    private static final BigDecimal toBigDecimal(int i) {
        BigDecimal valueOf = BigDecimal.valueOf(i);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return valueOf;
    }

    private static final BigDecimal toBigDecimal(int i, MathContext mathContext) {
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        return new BigDecimal(i, mathContext);
    }

    private static final BigDecimal toBigDecimal(long j) {
        BigDecimal valueOf = BigDecimal.valueOf(j);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return valueOf;
    }

    private static final BigDecimal toBigDecimal(long j, MathContext mathContext) {
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        return new BigDecimal(j, mathContext);
    }

    private static final BigDecimal toBigDecimal(float f) {
        return new BigDecimal(String.valueOf(f));
    }

    private static final BigDecimal toBigDecimal(float f, MathContext mathContext) {
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        return new BigDecimal(String.valueOf(f), mathContext);
    }

    private static final BigDecimal toBigDecimal(double d) {
        return new BigDecimal(String.valueOf(d));
    }

    private static final BigDecimal toBigDecimal(double d, MathContext mathContext) {
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        return new BigDecimal(String.valueOf(d), mathContext);
    }
}
