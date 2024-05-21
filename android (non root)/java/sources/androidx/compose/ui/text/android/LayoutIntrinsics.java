package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutIntrinsics.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/text/android/LayoutIntrinsics;", "", "charSequence", "", "textPaint", "Landroid/text/TextPaint;", "textDirectionHeuristic", "", "(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V", "_boringMetrics", "Landroid/text/BoringLayout$Metrics;", "_maxIntrinsicWidth", "", "_minIntrinsicWidth", "boringMetrics", "getBoringMetrics", "()Landroid/text/BoringLayout$Metrics;", "boringMetricsIsInit", "", "maxIntrinsicWidth", "getMaxIntrinsicWidth", "()F", "minIntrinsicWidth", "getMinIntrinsicWidth", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutIntrinsics {
    private BoringLayout.Metrics _boringMetrics;
    private float _maxIntrinsicWidth;
    private float _minIntrinsicWidth;
    private boolean boringMetricsIsInit;
    private final CharSequence charSequence;
    private final int textDirectionHeuristic;
    private final TextPaint textPaint;

    public LayoutIntrinsics(CharSequence charSequence, TextPaint textPaint, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        this.charSequence = charSequence;
        this.textPaint = textPaint;
        this.textDirectionHeuristic = i;
        this._maxIntrinsicWidth = Float.NaN;
        this._minIntrinsicWidth = Float.NaN;
    }

    public final BoringLayout.Metrics getBoringMetrics() {
        if (!this.boringMetricsIsInit) {
            this._boringMetrics = BoringLayoutFactory.INSTANCE.measure(this.charSequence, this.textPaint, TextLayoutKt.getTextDirectionHeuristic(this.textDirectionHeuristic));
            this.boringMetricsIsInit = true;
        }
        return this._boringMetrics;
    }

    public final float getMinIntrinsicWidth() {
        if (!Float.isNaN(this._minIntrinsicWidth)) {
            return this._minIntrinsicWidth;
        }
        float minIntrinsicWidth = LayoutIntrinsicsKt.minIntrinsicWidth(this.charSequence, this.textPaint);
        this._minIntrinsicWidth = minIntrinsicWidth;
        return minIntrinsicWidth;
    }

    public final float getMaxIntrinsicWidth() {
        boolean shouldIncreaseMaxIntrinsic;
        if (!Float.isNaN(this._maxIntrinsicWidth)) {
            return this._maxIntrinsicWidth;
        }
        Float valueOf = getBoringMetrics() != null ? Float.valueOf(r0.width) : null;
        if (valueOf == null) {
            CharSequence charSequence = this.charSequence;
            valueOf = Float.valueOf((float) Math.ceil(Layout.getDesiredWidth(charSequence, 0, charSequence.length(), this.textPaint)));
        }
        shouldIncreaseMaxIntrinsic = LayoutIntrinsicsKt.shouldIncreaseMaxIntrinsic(valueOf.floatValue(), this.charSequence, this.textPaint);
        if (shouldIncreaseMaxIntrinsic) {
            valueOf = Float.valueOf(valueOf.floatValue() + 0.5f);
        }
        float floatValue = valueOf.floatValue();
        this._maxIntrinsicWidth = floatValue;
        return floatValue;
    }
}
