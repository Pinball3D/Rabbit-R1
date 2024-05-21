package androidx.compose.ui.text.android;

import android.os.Build;
import android.text.StaticLayout;
import io.sentry.protocol.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StaticLayoutFactory.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bH\u0017¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutFactory23;", "Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;", "()V", "create", "Landroid/text/StaticLayout;", Message.JsonKeys.PARAMS, "Landroidx/compose/ui/text/android/StaticLayoutParams;", "isFallbackLineSpacingEnabled", "", "layout", "useFallbackLineSpacing", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class StaticLayoutFactory23 implements StaticLayoutFactoryImpl {
    @Override // androidx.compose.ui.text.android.StaticLayoutFactoryImpl
    public StaticLayout create(StaticLayoutParams params) {
        Intrinsics.checkNotNullParameter(params, "params");
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(params.getText(), params.getStart(), params.getEnd(), params.getPaint(), params.getWidth());
        obtain.setTextDirection(params.getTextDir());
        obtain.setAlignment(params.getAlignment());
        obtain.setMaxLines(params.getMaxLines());
        obtain.setEllipsize(params.getEllipsize());
        obtain.setEllipsizedWidth(params.getEllipsizedWidth());
        obtain.setLineSpacing(params.getLineSpacingExtra(), params.getLineSpacingMultiplier());
        obtain.setIncludePad(params.getIncludePadding());
        obtain.setBreakStrategy(params.getBreakStrategy());
        obtain.setHyphenationFrequency(params.getHyphenationFrequency());
        obtain.setIndents(params.getLeftIndents(), params.getRightIndents());
        Intrinsics.checkNotNullExpressionValue(obtain, "this");
        StaticLayoutFactory26.setJustificationMode(obtain, params.getJustificationMode());
        Intrinsics.checkNotNullExpressionValue(obtain, "this");
        StaticLayoutFactory28.setUseLineSpacingFromFallbacks(obtain, params.getUseFallbackLineSpacing());
        if (Build.VERSION.SDK_INT >= 33) {
            Intrinsics.checkNotNullExpressionValue(obtain, "this");
            StaticLayoutFactory33.setLineBreakConfig(obtain, params.getLineBreakStyle(), params.getLineBreakWordStyle());
        }
        StaticLayout build = obtain.build();
        Intrinsics.checkNotNullExpressionValue(build, "obtain(params.text, para…  }\n            }.build()");
        return build;
    }

    @Override // androidx.compose.ui.text.android.StaticLayoutFactoryImpl
    public boolean isFallbackLineSpacingEnabled(StaticLayout layout, boolean useFallbackLineSpacing) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        return Build.VERSION.SDK_INT >= 33 ? StaticLayoutFactory33.isFallbackLineSpacingEnabled(layout) : useFallbackLineSpacing;
    }
}
