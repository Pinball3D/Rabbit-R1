package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PaintExtensions.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u001a,\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u001a$\u0010\u000b\u001a\u00020\u0002*\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0000\u001a$\u0010\u000f\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0001¨\u0006\u0010"}, d2 = {"extendWith", "", "Landroid/graphics/Rect;", "rect", "fillStringBounds", "Landroid/graphics/Paint;", "text", "", "start", "", "end", "getCharSequenceBounds", "Landroid/text/TextPaint;", "startInclusive", "endExclusive", "getStringBounds", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PaintExtensionsKt {
    public static final Rect getCharSequenceBounds(TextPaint textPaint, CharSequence text, int i, int i2) {
        Intrinsics.checkNotNullParameter(textPaint, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        if (text instanceof Spanned) {
            Spanned spanned = (Spanned) text;
            if (SpannedExtensionsKt.hasSpan(spanned, MetricAffectingSpan.class, i, i2)) {
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                TextPaint textPaint2 = new TextPaint();
                while (i < i2) {
                    int nextSpanTransition = spanned.nextSpanTransition(i, i2, MetricAffectingSpan.class);
                    MetricAffectingSpan[] spans = (MetricAffectingSpan[]) spanned.getSpans(i, nextSpanTransition, MetricAffectingSpan.class);
                    textPaint2.set(textPaint);
                    Intrinsics.checkNotNullExpressionValue(spans, "spans");
                    for (MetricAffectingSpan metricAffectingSpan : spans) {
                        if (spanned.getSpanStart(metricAffectingSpan) != spanned.getSpanEnd(metricAffectingSpan)) {
                            metricAffectingSpan.updateMeasureState(textPaint2);
                        }
                    }
                    fillStringBounds(textPaint2, text, i, nextSpanTransition, rect2);
                    extendWith(rect, rect2);
                    i = nextSpanTransition;
                }
                return rect;
            }
        }
        return getStringBounds(textPaint, text, i, i2);
    }

    private static final void extendWith(Rect rect, Rect rect2) {
        rect.right += rect2.width();
        rect.top = Math.min(rect.top, rect2.top);
        rect.bottom = Math.max(rect.bottom, rect2.bottom);
    }

    public static final Rect getStringBounds(Paint paint, CharSequence text, int i, int i2) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Rect rect = new Rect();
        fillStringBounds(paint, text, i, i2, rect);
        return rect;
    }

    private static final void fillStringBounds(Paint paint, CharSequence charSequence, int i, int i2, Rect rect) {
        Paint29.getTextBounds(paint, charSequence, i, i2, rect);
    }
}
