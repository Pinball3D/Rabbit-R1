package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.compose.ui.util.MathHelpersKt;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextForegroundStyle.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a!\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u001a\u001a\u0010\u000b\u001a\u00020\u0005*\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\rH\u0002\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"lerp", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "start", "stop", "fraction", "", "modulate", "Landroidx/compose/ui/graphics/Color;", ViewHierarchyNode.JsonKeys.ALPHA, "modulate-DxMtmZc", "(JF)J", "takeOrElse", "block", "Lkotlin/Function0;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextDrawStyleKt {
    public static final TextForegroundStyle lerp(TextForegroundStyle start, TextForegroundStyle stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        boolean z = start instanceof BrushStyle;
        if (!z && !(stop instanceof BrushStyle)) {
            return TextForegroundStyle.INSTANCE.m4796from8_81llA(ColorKt.m2690lerpjxsXWHM(start.mo4684getColor0d7_KjU(), stop.mo4684getColor0d7_KjU(), f));
        }
        if (z && (stop instanceof BrushStyle)) {
            return TextForegroundStyle.INSTANCE.from((Brush) SpanStyleKt.lerpDiscrete(((BrushStyle) start).getBrush(), ((BrushStyle) stop).getBrush(), f), MathHelpersKt.lerp(start.getAlpha(), stop.getAlpha(), f));
        }
        return (TextForegroundStyle) SpanStyleKt.lerpDiscrete(start, stop, f);
    }

    /* renamed from: modulate-DxMtmZc, reason: not valid java name */
    public static final long m4795modulateDxMtmZc(long j, float f) {
        return (Float.isNaN(f) || f >= 1.0f) ? j : Color.m2638copywmQWz5c$default(j, Color.m2641getAlphaimpl(j) * f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float takeOrElse(float f, Function0<Float> function0) {
        return Float.isNaN(f) ? function0.invoke().floatValue() : f;
    }
}
