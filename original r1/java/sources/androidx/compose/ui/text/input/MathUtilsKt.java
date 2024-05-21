package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MathUtils.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004H\u0080\bø\u0001\u0000\u001a\"\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0006"}, d2 = {"addExactOrElse", "", "right", "defaultValue", "Lkotlin/Function0;", "subtractExactOrElse", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MathUtilsKt {
    public static final int addExactOrElse(int i, int i2, Function0<Integer> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int i3 = i + i2;
        return ((i ^ i3) & (i2 ^ i3)) < 0 ? defaultValue.invoke().intValue() : i3;
    }

    public static final int subtractExactOrElse(int i, int i2, Function0<Integer> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int i3 = i - i2;
        return ((i ^ i3) & (i2 ^ i)) < 0 ? defaultValue.invoke().intValue() : i3;
    }
}
