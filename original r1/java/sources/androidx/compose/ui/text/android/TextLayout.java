package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Trace;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.IndentationFixSpanKt;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextLayout.kt */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001BÃ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\t\u0012\b\b\u0002\u0010\u0015\u001a\u00020\t\u0012\b\b\u0002\u0010\u0016\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\t\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010\u001dJ&\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\t2\u0006\u0010S\u001a\u00020\t2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\tJ\u000e\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020\tJ\u0010\u0010Z\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\tH\u0002J\u000e\u0010\\\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\tJ\u000e\u0010]\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\tJ\u000e\u0010^\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\tJ\u000e\u0010_\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\tJ\u000e\u0010`\u001a\u00020\t2\u0006\u0010a\u001a\u00020\tJ\u000e\u0010b\u001a\u00020\t2\u0006\u0010a\u001a\u00020\tJ\u000e\u0010c\u001a\u00020\t2\u0006\u0010a\u001a\u00020\tJ\u000e\u0010d\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\tJ\u000e\u0010e\u001a\u00020\t2\u0006\u0010f\u001a\u00020\tJ\u000e\u0010g\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\tJ\u000e\u0010h\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\tJ\u000e\u0010i\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\tJ\u000e\u0010j\u001a\u00020\t2\u0006\u0010a\u001a\u00020\tJ\u000e\u0010k\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\tJ\u000e\u0010l\u001a\u00020\t2\u0006\u0010a\u001a\u00020\tJ\u000e\u0010m\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\tJ\u0016\u0010n\u001a\u00020\t2\u0006\u0010[\u001a\u00020\t2\u0006\u0010o\u001a\u00020\u0005J\u000e\u0010p\u001a\u00020\t2\u0006\u0010[\u001a\u00020\tJ\u0018\u0010q\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\t2\b\b\u0002\u0010r\u001a\u00020\u0010J\u0018\u0010s\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\t2\b\b\u0002\u0010r\u001a\u00020\u0010J\u001e\u0010t\u001a\u00020Q2\u0006\u0010u\u001a\u00020\t2\u0006\u0010v\u001a\u00020\t2\u0006\u0010w\u001a\u00020xJ\r\u0010y\u001a\u00020\u0010H\u0000¢\u0006\u0002\bzJ\u000e\u0010{\u001a\u00020\u00102\u0006\u0010a\u001a\u00020\tJ\u000e\u0010|\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020\tJ\u000e\u0010}\u001a\u00020Q2\u0006\u0010~\u001a\u00020\u007fR\u001c\u0010\u001e\u001a\u00020\t8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0011\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0011\u0010'\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b(\u0010\"R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b)\u0010%R\u000e\u0010*\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010.\u001a\u00020/8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b0\u0010 \u001a\u0004\b1\u00102R\u001b\u00103\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b5\u00106R\u0011\u0010\u001b\u001a\u00020\u001c¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u000e\u0010;\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010<\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\"R\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?X\u0082\u0004¢\u0006\u0004\n\u0002\u0010AR\u0011\u0010B\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bC\u0010DR\u0011\u0010E\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bF\u0010DR\u000e\u0010G\u001a\u00020HX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010J\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bK\u0010LR\u001c\u0010M\u001a\u00020\t8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bN\u0010 \u001a\u0004\bO\u0010\"¨\u0006\u0080\u0001"}, d2 = {"Landroidx/compose/ui/text/android/TextLayout;", "", "charSequence", "", ViewHierarchyNode.JsonKeys.WIDTH, "", "textPaint", "Landroid/text/TextPaint;", "alignment", "", "ellipsize", "Landroid/text/TextUtils$TruncateAt;", "textDirectionHeuristic", "lineSpacingMultiplier", "lineSpacingExtra", "includePadding", "", "fallbackLineSpacing", "maxLines", "breakStrategy", "lineBreakStyle", "lineBreakWordStyle", "hyphenationFrequency", "justificationMode", "leftIndents", "", "rightIndents", "layoutIntrinsics", "Landroidx/compose/ui/text/android/LayoutIntrinsics;", "(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V", "bottomPadding", "getBottomPadding$ui_text_release$annotations", "()V", "getBottomPadding$ui_text_release", "()I", "didExceedMaxLines", "getDidExceedMaxLines", "()Z", "getFallbackLineSpacing", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "getIncludePadding", "isBoringLayout", "lastLineExtra", "lastLineFontMetrics", "Landroid/graphics/Paint$FontMetricsInt;", "layout", "Landroid/text/Layout;", "getLayout$annotations", "getLayout", "()Landroid/text/Layout;", "layoutHelper", "Landroidx/compose/ui/text/android/LayoutHelper;", "getLayoutHelper", "()Landroidx/compose/ui/text/android/LayoutHelper;", "layoutHelper$delegate", "Lkotlin/Lazy;", "getLayoutIntrinsics", "()Landroidx/compose/ui/text/android/LayoutIntrinsics;", "leftPadding", "lineCount", "getLineCount", "lineHeightSpans", "", "Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;", "[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;", "maxIntrinsicWidth", "getMaxIntrinsicWidth", "()F", "minIntrinsicWidth", "getMinIntrinsicWidth", "rect", "Landroid/graphics/Rect;", "rightPadding", "text", "getText", "()Ljava/lang/CharSequence;", "topPadding", "getTopPadding$ui_text_release$annotations", "getTopPadding$ui_text_release", "fillBoundingBoxes", "", "startOffset", "endOffset", "array", "", "arrayStart", "getBoundingBox", "Landroid/graphics/RectF;", "offset", "getHorizontalPadding", "line", "getLineAscent", "getLineBaseline", "getLineBottom", "getLineDescent", "getLineEllipsisCount", "lineIndex", "getLineEllipsisOffset", "getLineEnd", "getLineForOffset", "getLineForVertical", "vertical", "getLineHeight", "getLineLeft", "getLineRight", "getLineStart", "getLineTop", "getLineVisibleEnd", "getLineWidth", "getOffsetForHorizontal", "horizontal", "getParagraphDirection", "getPrimaryHorizontal", "upstream", "getSecondaryHorizontal", "getSelectionPath", "start", "end", "dest", "Landroid/graphics/Path;", "isFallbackLinespacingApplied", "isFallbackLinespacingApplied$ui_text_release", "isLineEllipsized", "isRtlCharAt", "paint", "canvas", "Landroid/graphics/Canvas;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextLayout {
    private final int bottomPadding;
    private final boolean didExceedMaxLines;
    private final boolean fallbackLineSpacing;
    private final boolean includePadding;
    private final boolean isBoringLayout;
    private final int lastLineExtra;
    private final Paint.FontMetricsInt lastLineFontMetrics;
    private final Layout layout;

    /* renamed from: layoutHelper$delegate, reason: from kotlin metadata */
    private final Lazy layoutHelper;
    private final LayoutIntrinsics layoutIntrinsics;
    private final float leftPadding;
    private final int lineCount;
    private final LineHeightStyleSpan[] lineHeightSpans;
    private final Rect rect;
    private final float rightPadding;
    private final int topPadding;

    public static /* synthetic */ void getBottomPadding$ui_text_release$annotations() {
    }

    private final float getHorizontalPadding(int line) {
        if (line == this.lineCount - 1) {
            return this.leftPadding + this.rightPadding;
        }
        return 0.0f;
    }

    public static /* synthetic */ void getLayout$annotations() {
    }

    public static /* synthetic */ void getTopPadding$ui_text_release$annotations() {
    }

    /* renamed from: getBottomPadding$ui_text_release, reason: from getter */
    public final int getBottomPadding() {
        return this.bottomPadding;
    }

    public final boolean getDidExceedMaxLines() {
        return this.didExceedMaxLines;
    }

    public final boolean getFallbackLineSpacing() {
        return this.fallbackLineSpacing;
    }

    public final boolean getIncludePadding() {
        return this.includePadding;
    }

    public final Layout getLayout() {
        return this.layout;
    }

    public final LayoutIntrinsics getLayoutIntrinsics() {
        return this.layoutIntrinsics;
    }

    public final int getLineCount() {
        return this.lineCount;
    }

    /* renamed from: getTopPadding$ui_text_release, reason: from getter */
    public final int getTopPadding() {
        return this.topPadding;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [int] */
    /* JADX WARN: Type inference failed for: r7v6 */
    public TextLayout(CharSequence charSequence, float f, TextPaint textPaint, int i, TextUtils.TruncateAt truncateAt, int i2, float f2, float f3, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8, int[] iArr, int[] iArr2, LayoutIntrinsics layoutIntrinsics) {
        boolean z3;
        boolean z4;
        TextDirectionHeuristic textDirectionHeuristic;
        StaticLayout create;
        long verticalPaddings;
        LineHeightStyleSpan[] lineHeightSpans;
        long lineHeightPaddings;
        Paint.FontMetricsInt lastLineMetrics;
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(layoutIntrinsics, "layoutIntrinsics");
        this.includePadding = z;
        this.fallbackLineSpacing = z2;
        this.layoutIntrinsics = layoutIntrinsics;
        this.rect = new Rect();
        int length = charSequence.length();
        TextDirectionHeuristic textDirectionHeuristic2 = TextLayoutKt.getTextDirectionHeuristic(i2);
        Layout.Alignment alignment = TextAlignmentAdapter.INSTANCE.get(i);
        boolean z5 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, BaselineShiftSpan.class) < length;
        Trace.beginSection("TextLayout:initLayout");
        try {
            BoringLayout.Metrics boringMetrics = layoutIntrinsics.getBoringMetrics();
            double d = f;
            int ceil = (int) Math.ceil(d);
            if (boringMetrics != null && layoutIntrinsics.getMaxIntrinsicWidth() <= f && !z5) {
                this.isBoringLayout = true;
                z3 = true;
                create = BoringLayoutFactory.INSTANCE.create(charSequence, textPaint, ceil, boringMetrics, alignment, z, z2, truncateAt, ceil);
                textDirectionHeuristic = textDirectionHeuristic2;
                z4 = false;
            } else {
                z3 = true;
                this.isBoringLayout = false;
                z4 = false;
                textDirectionHeuristic = textDirectionHeuristic2;
                create = StaticLayoutFactory.INSTANCE.create(charSequence, 0, charSequence.length(), textPaint, ceil, textDirectionHeuristic2, alignment, i3, truncateAt, (int) Math.ceil(d), f2, f3, i8, z, z2, i4, i5, i6, i7, iArr, iArr2);
            }
            this.layout = create;
            Trace.endSection();
            int min = Math.min(create.getLineCount(), i3);
            this.lineCount = min;
            int i9 = min - 1;
            this.didExceedMaxLines = (min >= i3 && (create.getEllipsisCount(i9) > 0 || create.getLineEnd(i9) != charSequence.length())) ? z3 : z4;
            verticalPaddings = TextLayoutKt.getVerticalPaddings(this);
            lineHeightSpans = TextLayoutKt.getLineHeightSpans(this);
            this.lineHeightSpans = lineHeightSpans;
            lineHeightPaddings = TextLayoutKt.getLineHeightPaddings(this, lineHeightSpans);
            this.topPadding = Math.max(VerticalPaddings.m4453getTopPaddingimpl(verticalPaddings), VerticalPaddings.m4453getTopPaddingimpl(lineHeightPaddings));
            this.bottomPadding = Math.max(VerticalPaddings.m4452getBottomPaddingimpl(verticalPaddings), VerticalPaddings.m4452getBottomPaddingimpl(lineHeightPaddings));
            lastLineMetrics = TextLayoutKt.getLastLineMetrics(this, textPaint, textDirectionHeuristic, lineHeightSpans);
            this.lastLineExtra = lastLineMetrics != null ? lastLineMetrics.bottom - ((int) getLineHeight(i9)) : z4;
            this.lastLineFontMetrics = lastLineMetrics;
            this.leftPadding = IndentationFixSpanKt.getEllipsizedLeftPadding$default(create, i9, null, 2, null);
            this.rightPadding = IndentationFixSpanKt.getEllipsizedRightPadding$default(create, i9, null, 2, null);
            this.layoutHelper = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<LayoutHelper>() { // from class: androidx.compose.ui.text.android.TextLayout$layoutHelper$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final LayoutHelper invoke() {
                    return new LayoutHelper(TextLayout.this.getLayout());
                }
            });
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ TextLayout(java.lang.CharSequence r24, float r25, android.text.TextPaint r26, int r27, android.text.TextUtils.TruncateAt r28, int r29, float r30, float r31, boolean r32, boolean r33, int r34, int r35, int r36, int r37, int r38, int r39, int[] r40, int[] r41, androidx.compose.ui.text.android.LayoutIntrinsics r42, int r43, kotlin.jvm.internal.DefaultConstructorMarker r44) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.android.TextLayout.<init>(java.lang.CharSequence, float, android.text.TextPaint, int, android.text.TextUtils$TruncateAt, int, float, float, boolean, boolean, int, int, int, int, int, int, int[], int[], androidx.compose.ui.text.android.LayoutIntrinsics, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final float getMaxIntrinsicWidth() {
        return this.layoutIntrinsics.getMaxIntrinsicWidth();
    }

    public final float getMinIntrinsicWidth() {
        return this.layoutIntrinsics.getMinIntrinsicWidth();
    }

    private final LayoutHelper getLayoutHelper() {
        return (LayoutHelper) this.layoutHelper.getValue();
    }

    public final CharSequence getText() {
        CharSequence text = this.layout.getText();
        Intrinsics.checkNotNullExpressionValue(text, "layout.text");
        return text;
    }

    public final int getHeight() {
        int height;
        if (this.didExceedMaxLines) {
            height = this.layout.getLineBottom(this.lineCount - 1);
        } else {
            height = this.layout.getHeight();
        }
        return height + this.topPadding + this.bottomPadding + this.lastLineExtra;
    }

    public final float getLineLeft(int lineIndex) {
        return this.layout.getLineLeft(lineIndex) + (lineIndex == this.lineCount + (-1) ? this.leftPadding : 0.0f);
    }

    public final float getLineRight(int lineIndex) {
        return this.layout.getLineRight(lineIndex) + (lineIndex == this.lineCount + (-1) ? this.rightPadding : 0.0f);
    }

    public final float getLineTop(int line) {
        return this.layout.getLineTop(line) + (line == 0 ? 0 : this.topPadding);
    }

    public final float getLineBottom(int line) {
        if (line != this.lineCount - 1 || this.lastLineFontMetrics == null) {
            return this.topPadding + this.layout.getLineBottom(line) + (line == this.lineCount + (-1) ? this.bottomPadding : 0);
        }
        return this.layout.getLineBottom(line - 1) + this.lastLineFontMetrics.bottom;
    }

    public final float getLineAscent(int line) {
        int lineAscent;
        Paint.FontMetricsInt fontMetricsInt;
        if (line == this.lineCount - 1 && (fontMetricsInt = this.lastLineFontMetrics) != null) {
            lineAscent = fontMetricsInt.ascent;
        } else {
            lineAscent = this.layout.getLineAscent(line);
        }
        return lineAscent;
    }

    public final float getLineBaseline(int line) {
        float lineBaseline;
        float f = this.topPadding;
        if (line == this.lineCount - 1 && this.lastLineFontMetrics != null) {
            lineBaseline = getLineTop(line) - this.lastLineFontMetrics.ascent;
        } else {
            lineBaseline = this.layout.getLineBaseline(line);
        }
        return f + lineBaseline;
    }

    public final float getLineDescent(int line) {
        int lineDescent;
        Paint.FontMetricsInt fontMetricsInt;
        if (line == this.lineCount - 1 && (fontMetricsInt = this.lastLineFontMetrics) != null) {
            lineDescent = fontMetricsInt.descent;
        } else {
            lineDescent = this.layout.getLineDescent(line);
        }
        return lineDescent;
    }

    public final float getLineHeight(int lineIndex) {
        return getLineBottom(lineIndex) - getLineTop(lineIndex);
    }

    public final float getLineWidth(int lineIndex) {
        return this.layout.getLineWidth(lineIndex);
    }

    public final int getLineStart(int lineIndex) {
        return this.layout.getLineStart(lineIndex);
    }

    public final int getLineEnd(int lineIndex) {
        if (this.layout.getEllipsisStart(lineIndex) == 0) {
            return this.layout.getLineEnd(lineIndex);
        }
        return this.layout.getText().length();
    }

    public final int getLineVisibleEnd(int lineIndex) {
        if (this.layout.getEllipsisStart(lineIndex) == 0) {
            return this.layout.getLineVisibleEnd(lineIndex);
        }
        return this.layout.getEllipsisStart(lineIndex) + this.layout.getLineStart(lineIndex);
    }

    public final boolean isLineEllipsized(int lineIndex) {
        return TextLayoutKt.isLineEllipsized(this.layout, lineIndex);
    }

    public final int getLineEllipsisOffset(int lineIndex) {
        return this.layout.getEllipsisStart(lineIndex);
    }

    public final int getLineEllipsisCount(int lineIndex) {
        return this.layout.getEllipsisCount(lineIndex);
    }

    public final int getLineForVertical(int vertical) {
        return this.layout.getLineForVertical(vertical - this.topPadding);
    }

    public final int getOffsetForHorizontal(int line, float horizontal) {
        return this.layout.getOffsetForHorizontal(line, horizontal + ((-1) * getHorizontalPadding(line)));
    }

    public static /* synthetic */ float getPrimaryHorizontal$default(TextLayout textLayout, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return textLayout.getPrimaryHorizontal(i, z);
    }

    public final float getPrimaryHorizontal(int offset, boolean upstream) {
        return getLayoutHelper().getHorizontalPosition(offset, true, upstream) + getHorizontalPadding(getLineForOffset(offset));
    }

    public static /* synthetic */ float getSecondaryHorizontal$default(TextLayout textLayout, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return textLayout.getSecondaryHorizontal(i, z);
    }

    public final float getSecondaryHorizontal(int offset, boolean upstream) {
        return getLayoutHelper().getHorizontalPosition(offset, false, upstream) + getHorizontalPadding(getLineForOffset(offset));
    }

    public final int getLineForOffset(int offset) {
        return this.layout.getLineForOffset(offset);
    }

    public final boolean isRtlCharAt(int offset) {
        return this.layout.isRtlCharAt(offset);
    }

    public final int getParagraphDirection(int line) {
        return this.layout.getParagraphDirection(line);
    }

    public final void getSelectionPath(int start, int end, Path dest) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        this.layout.getSelectionPath(start, end, dest);
        if (this.topPadding == 0 || dest.isEmpty()) {
            return;
        }
        dest.offset(0.0f, this.topPadding);
    }

    public final void fillBoundingBoxes(int startOffset, int endOffset, float[] array, int arrayStart) {
        float secondaryDownstream;
        float secondaryUpstream;
        Intrinsics.checkNotNullParameter(array, "array");
        int length = getText().length();
        if (startOffset < 0) {
            throw new IllegalArgumentException("startOffset must be > 0".toString());
        }
        if (startOffset >= length) {
            throw new IllegalArgumentException("startOffset must be less than text length".toString());
        }
        if (endOffset <= startOffset) {
            throw new IllegalArgumentException("endOffset must be greater than startOffset".toString());
        }
        if (endOffset > length) {
            throw new IllegalArgumentException("endOffset must be smaller or equal to text length".toString());
        }
        if (array.length - arrayStart < (endOffset - startOffset) * 4) {
            throw new IllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4".toString());
        }
        int lineForOffset = getLineForOffset(startOffset);
        int lineForOffset2 = getLineForOffset(endOffset - 1);
        HorizontalPositionCache horizontalPositionCache = new HorizontalPositionCache(this);
        if (lineForOffset > lineForOffset2) {
            return;
        }
        while (true) {
            int lineStart = getLineStart(lineForOffset);
            int lineEnd = getLineEnd(lineForOffset);
            int min = Math.min(endOffset, lineEnd);
            float lineTop = getLineTop(lineForOffset);
            float lineBottom = getLineBottom(lineForOffset);
            boolean z = getParagraphDirection(lineForOffset) == 1;
            boolean z2 = !z;
            for (int max = Math.max(startOffset, lineStart); max < min; max++) {
                boolean isRtlCharAt = isRtlCharAt(max);
                if (z && !isRtlCharAt) {
                    secondaryDownstream = horizontalPositionCache.getPrimaryDownstream(max);
                    secondaryUpstream = horizontalPositionCache.getPrimaryUpstream(max + 1);
                } else if (z && isRtlCharAt) {
                    secondaryUpstream = horizontalPositionCache.getSecondaryDownstream(max);
                    secondaryDownstream = horizontalPositionCache.getSecondaryUpstream(max + 1);
                } else if (z2 && isRtlCharAt) {
                    secondaryUpstream = horizontalPositionCache.getPrimaryDownstream(max);
                    secondaryDownstream = horizontalPositionCache.getPrimaryUpstream(max + 1);
                } else {
                    secondaryDownstream = horizontalPositionCache.getSecondaryDownstream(max);
                    secondaryUpstream = horizontalPositionCache.getSecondaryUpstream(max + 1);
                }
                array[arrayStart] = secondaryDownstream;
                array[arrayStart + 1] = lineTop;
                array[arrayStart + 2] = secondaryUpstream;
                array[arrayStart + 3] = lineBottom;
                arrayStart += 4;
            }
            if (lineForOffset == lineForOffset2) {
                return;
            } else {
                lineForOffset++;
            }
        }
    }

    public final RectF getBoundingBox(int offset) {
        float secondaryHorizontal;
        float secondaryHorizontal2;
        float primaryHorizontal;
        float primaryHorizontal2;
        int lineForOffset = getLineForOffset(offset);
        float lineTop = getLineTop(lineForOffset);
        float lineBottom = getLineBottom(lineForOffset);
        boolean z = getParagraphDirection(lineForOffset) == 1;
        boolean isRtlCharAt = this.layout.isRtlCharAt(offset);
        if (!z || isRtlCharAt) {
            if (z && isRtlCharAt) {
                primaryHorizontal = getSecondaryHorizontal(offset, false);
                primaryHorizontal2 = getSecondaryHorizontal(offset + 1, true);
            } else if (isRtlCharAt) {
                primaryHorizontal = getPrimaryHorizontal(offset, false);
                primaryHorizontal2 = getPrimaryHorizontal(offset + 1, true);
            } else {
                secondaryHorizontal = getSecondaryHorizontal(offset, false);
                secondaryHorizontal2 = getSecondaryHorizontal(offset + 1, true);
            }
            float f = primaryHorizontal;
            secondaryHorizontal = primaryHorizontal2;
            secondaryHorizontal2 = f;
        } else {
            secondaryHorizontal = getPrimaryHorizontal(offset, false);
            secondaryHorizontal2 = getPrimaryHorizontal(offset + 1, true);
        }
        return new RectF(secondaryHorizontal, lineTop, secondaryHorizontal2, lineBottom);
    }

    public final void paint(Canvas canvas) {
        TextAndroidCanvas textAndroidCanvas;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (canvas.getClipBounds(this.rect)) {
            int i = this.topPadding;
            if (i != 0) {
                canvas.translate(0.0f, i);
            }
            textAndroidCanvas = TextLayoutKt.SharedTextAndroidCanvas;
            textAndroidCanvas.setCanvas(canvas);
            this.layout.draw(textAndroidCanvas);
            int i2 = this.topPadding;
            if (i2 != 0) {
                canvas.translate(0.0f, (-1) * i2);
            }
        }
    }

    public final boolean isFallbackLinespacingApplied$ui_text_release() {
        if (this.isBoringLayout) {
            BoringLayoutFactory boringLayoutFactory = BoringLayoutFactory.INSTANCE;
            Layout layout = this.layout;
            Intrinsics.checkNotNull(layout, "null cannot be cast to non-null type android.text.BoringLayout");
            return boringLayoutFactory.isFallbackLineSpacingEnabled((BoringLayout) layout);
        }
        StaticLayoutFactory staticLayoutFactory = StaticLayoutFactory.INSTANCE;
        Layout layout2 = this.layout;
        Intrinsics.checkNotNull(layout2, "null cannot be cast to non-null type android.text.StaticLayout");
        return staticLayoutFactory.isFallbackLineSpacingEnabled((StaticLayout) layout2, this.fallbackLineSpacing);
    }
}
