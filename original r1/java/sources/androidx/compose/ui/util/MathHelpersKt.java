package androidx.compose.ui.util;

import kotlin.Metadata;
import kotlin.math.MathKt;

/* compiled from: MathHelpers.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001\u001a\u001e\u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0001\u001a\u001e\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0001¨\u0006\u0007"}, d2 = {"lerp", "", "start", "stop", "fraction", "", "", "ui-util_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MathHelpersKt {
    public static final float lerp(float f, float f2, float f3) {
        return ((1 - f3) * f) + (f3 * f2);
    }

    public static final int lerp(int i, int i2, float f) {
        return i + MathKt.roundToInt((i2 - i) * f);
    }

    public static final long lerp(long j, long j2, float f) {
        return j + MathKt.roundToLong((j2 - j) * f);
    }
}
