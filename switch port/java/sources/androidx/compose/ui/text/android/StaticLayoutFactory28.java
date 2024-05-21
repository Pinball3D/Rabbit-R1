package androidx.compose.ui.text.android;

import android.text.StaticLayout;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StaticLayoutFactory.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutFactory28;", "", "()V", "setUseLineSpacingFromFallbacks", "", "builder", "Landroid/text/StaticLayout$Builder;", "useFallbackLineSpacing", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class StaticLayoutFactory28 {
    public static final StaticLayoutFactory28 INSTANCE = new StaticLayoutFactory28();

    private StaticLayoutFactory28() {
    }

    @JvmStatic
    public static final void setUseLineSpacingFromFallbacks(StaticLayout.Builder builder, boolean useFallbackLineSpacing) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.setUseLineSpacingFromFallbacks(useFallbackLineSpacing);
    }
}
