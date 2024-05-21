package kotlin.time;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DurationJvm.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001c\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0011"}, d2 = {"durationAssertionsEnabled", "", "getDurationAssertionsEnabled", "()Z", "precisionFormats", "", "Ljava/lang/ThreadLocal;", "Ljava/text/DecimalFormat;", "[Ljava/lang/ThreadLocal;", "createFormatForDecimals", "decimals", "", "formatToExactDecimals", "", "value", "", "formatUpToDecimals", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DurationJvmKt {
    private static final boolean durationAssertionsEnabled = false;
    private static final ThreadLocal<DecimalFormat>[] precisionFormats;

    public static final boolean getDurationAssertionsEnabled() {
        return durationAssertionsEnabled;
    }

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal<>();
        }
        precisionFormats = threadLocalArr;
    }

    private static final DecimalFormat createFormatForDecimals(int i) {
        DecimalFormat decimalFormat = new DecimalFormat("0");
        if (i > 0) {
            decimalFormat.setMinimumFractionDigits(i);
        }
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return decimalFormat;
    }

    public static final String formatToExactDecimals(double d, int i) {
        DecimalFormat createFormatForDecimals;
        ThreadLocal<DecimalFormat>[] threadLocalArr = precisionFormats;
        if (i < threadLocalArr.length) {
            ThreadLocal<DecimalFormat> threadLocal = threadLocalArr[i];
            DecimalFormat decimalFormat = threadLocal.get();
            if (decimalFormat == null) {
                decimalFormat = createFormatForDecimals(i);
                threadLocal.set(decimalFormat);
            } else {
                Intrinsics.checkNotNull(decimalFormat);
            }
            createFormatForDecimals = decimalFormat;
        } else {
            createFormatForDecimals = createFormatForDecimals(i);
        }
        String format = createFormatForDecimals.format(d);
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public static final String formatUpToDecimals(double d, int i) {
        DecimalFormat createFormatForDecimals = createFormatForDecimals(0);
        createFormatForDecimals.setMaximumFractionDigits(i);
        String format = createFormatForDecimals.format(d);
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
