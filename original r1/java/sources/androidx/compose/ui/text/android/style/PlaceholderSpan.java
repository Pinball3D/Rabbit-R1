package androidx.compose.ui.text.android.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlaceholderSpan.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 (2\u00020\u0001:\u0001(B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\nJR\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020%H\u0016J4\u0010&\u001a\u00020\u00052\u0006\u0010$\u001a\u00020%2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\b\u0010'\u001a\u0004\u0018\u00010\fH\u0017R\u001e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00058F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Landroidx/compose/ui/text/android/style/PlaceholderSpan;", "Landroid/text/style/ReplacementSpan;", ViewHierarchyNode.JsonKeys.WIDTH, "", "widthUnit", "", ViewHierarchyNode.JsonKeys.HEIGHT, "heightUnit", "pxPerSp", "verticalAlign", "(FIFIFI)V", "<set-?>", "Landroid/graphics/Paint$FontMetricsInt;", "fontMetrics", "getFontMetrics", "()Landroid/graphics/Paint$FontMetricsInt;", "heightPx", "getHeightPx", "()I", "isLaidOut", "", "getVerticalAlign", "widthPx", "getWidthPx", "draw", "", "canvas", "Landroid/graphics/Canvas;", "text", "", "start", "end", ViewHierarchyNode.JsonKeys.X, "top", ViewHierarchyNode.JsonKeys.Y, "bottom", "paint", "Landroid/graphics/Paint;", "getSize", "fm", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlaceholderSpan extends ReplacementSpan {
    public static final int ALIGN_ABOVE_BASELINE = 0;
    public static final int ALIGN_BOTTOM = 2;
    public static final int ALIGN_CENTER = 3;
    public static final int ALIGN_TEXT_BOTTOM = 5;
    public static final int ALIGN_TEXT_CENTER = 6;
    public static final int ALIGN_TEXT_TOP = 4;
    public static final int ALIGN_TOP = 1;
    public static final int UNIT_EM = 1;
    public static final int UNIT_SP = 0;
    public static final int UNIT_UNSPECIFIED = 2;
    private Paint.FontMetricsInt fontMetrics;
    private final float height;
    private int heightPx;
    private final int heightUnit;
    private boolean isLaidOut;
    private final float pxPerSp;
    private final int verticalAlign;
    private final float width;
    private int widthPx;
    private final int widthUnit;

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x, int top, int y, int bottom, Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
    }

    public final int getVerticalAlign() {
        return this.verticalAlign;
    }

    public PlaceholderSpan(float f, int i, float f2, int i2, float f3, int i3) {
        this.width = f;
        this.widthUnit = i;
        this.height = f2;
        this.heightUnit = i2;
        this.pxPerSp = f3;
        this.verticalAlign = i3;
    }

    public final Paint.FontMetricsInt getFontMetrics() {
        Paint.FontMetricsInt fontMetricsInt = this.fontMetrics;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fontMetrics");
        return null;
    }

    public final int getWidthPx() {
        if (this.isLaidOut) {
            return this.widthPx;
        }
        throw new IllegalStateException("PlaceholderSpan is not laid out yet.".toString());
    }

    public final int getHeightPx() {
        if (this.isLaidOut) {
            return this.heightPx;
        }
        throw new IllegalStateException("PlaceholderSpan is not laid out yet.".toString());
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int start, int end, Paint.FontMetricsInt fm) {
        float f;
        int ceilToInt;
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.isLaidOut = true;
        float textSize = paint.getTextSize();
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        Intrinsics.checkNotNullExpressionValue(fontMetricsInt, "paint.fontMetricsInt");
        this.fontMetrics = fontMetricsInt;
        if (getFontMetrics().descent <= getFontMetrics().ascent) {
            throw new IllegalArgumentException("Invalid fontMetrics: line height can not be negative.".toString());
        }
        int i = this.widthUnit;
        if (i == 0) {
            f = this.width * this.pxPerSp;
        } else {
            if (i != 1) {
                throw new IllegalArgumentException("Unsupported unit.");
            }
            f = this.width * textSize;
        }
        this.widthPx = PlaceholderSpanKt.ceilToInt(f);
        int i2 = this.heightUnit;
        if (i2 == 0) {
            ceilToInt = PlaceholderSpanKt.ceilToInt(this.height * this.pxPerSp);
        } else if (i2 == 1) {
            ceilToInt = PlaceholderSpanKt.ceilToInt(this.height * textSize);
        } else {
            throw new IllegalArgumentException("Unsupported unit.");
        }
        this.heightPx = ceilToInt;
        if (fm != null) {
            fm.ascent = getFontMetrics().ascent;
            fm.descent = getFontMetrics().descent;
            fm.leading = getFontMetrics().leading;
            switch (this.verticalAlign) {
                case 0:
                    if (fm.ascent > (-getHeightPx())) {
                        fm.ascent = -getHeightPx();
                        break;
                    }
                    break;
                case 1:
                case 4:
                    if (fm.ascent + getHeightPx() > fm.descent) {
                        fm.descent = fm.ascent + getHeightPx();
                        break;
                    }
                    break;
                case 2:
                case 5:
                    if (fm.ascent > fm.descent - getHeightPx()) {
                        fm.ascent = fm.descent - getHeightPx();
                        break;
                    }
                    break;
                case 3:
                case 6:
                    if (fm.descent - fm.ascent < getHeightPx()) {
                        fm.ascent -= (getHeightPx() - (fm.descent - fm.ascent)) / 2;
                        fm.descent = fm.ascent + getHeightPx();
                        break;
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Unknown verticalAlign.");
            }
            fm.top = Math.min(getFontMetrics().top, fm.ascent);
            fm.bottom = Math.max(getFontMetrics().bottom, fm.descent);
        }
        return getWidthPx();
    }
}
