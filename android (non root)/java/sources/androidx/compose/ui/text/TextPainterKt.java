package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: TextPainter.kt */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001ai\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016\u001ak\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0083\u0001\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0014\b\u0002\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0)0(2\b\b\u0002\u0010+\u001a\u00020,2\b\b\u0002\u0010\u0013\u001a\u00020\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u0010.\u001am\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020/2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010+\u001a\u00020,2\b\b\u0002\u0010\u0013\u001a\u00020\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101\u001a)\u00102\u001a\u000203*\u00020\u00062\u0006\u0010+\u001a\u00020,2\u0006\u0010\t\u001a\u00020\nH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b4\u00105\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00066"}, d2 = {"clip", "", "Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "drawText", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "brush", "Landroidx/compose/ui/graphics/Brush;", "topLeft", "Landroidx/compose/ui/geometry/Offset;", ViewHierarchyNode.JsonKeys.ALPHA, "", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "drawText-LVfH_YU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/Brush;JFLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "color", "Landroidx/compose/ui/graphics/Color;", "drawText-d8-rzKo", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;JJFLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "textMeasurer", "Landroidx/compose/ui/text/TextMeasurer;", "text", "Landroidx/compose/ui/text/AnnotatedString;", "style", "Landroidx/compose/ui/text/TextStyle;", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "placeholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "size", "Landroidx/compose/ui/geometry/Size;", "drawText-JFhB2K4", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextMeasurer;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextStyle;IZILjava/util/List;JI)V", "", "drawText-TPWCCtM", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextMeasurer;Ljava/lang/String;JLandroidx/compose/ui/text/TextStyle;IZIJI)V", "textLayoutConstraints", "Landroidx/compose/ui/unit/Constraints;", "textLayoutConstraints-v_w8tDc", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJ)J", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextPainterKt {
    /* renamed from: drawText-JFhB2K4, reason: not valid java name */
    public static final void m4393drawTextJFhB2K4(DrawScope drawText, TextMeasurer textMeasurer, AnnotatedString text, long j, TextStyle style, int i, boolean z, int i2, List<AnnotatedString.Range<Placeholder>> placeholders, long j2, int i3) {
        Intrinsics.checkNotNullParameter(drawText, "$this$drawText");
        Intrinsics.checkNotNullParameter(textMeasurer, "textMeasurer");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        TextLayoutResult m4390measurexDpz5zY$default = TextMeasurer.m4390measurexDpz5zY$default(textMeasurer, text, style, i, z, i2, placeholders, m4401textLayoutConstraintsv_w8tDc(drawText, j2, j), drawText.getLayoutDirection(), drawText, null, false, 1536, null);
        DrawContext drawContext = drawText.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        DrawTransform transform = drawContext.getTransform();
        transform.translate(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j));
        clip(transform, m4390measurexDpz5zY$default);
        m4390measurexDpz5zY$default.getMultiParagraph().m4304paintLG529CI(drawText.getDrawContext().getCanvas(), (r14 & 2) != 0 ? Color.INSTANCE.m2675getUnspecified0d7_KjU() : 0L, (r14 & 4) != 0 ? null : null, (r14 & 8) != 0 ? null : null, (r14 & 16) == 0 ? null : null, (r14 & 32) != 0 ? DrawScope.INSTANCE.m3183getDefaultBlendMode0nO6VwU() : i3);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: drawText-TPWCCtM, reason: not valid java name */
    public static final void m4397drawTextTPWCCtM(DrawScope drawText, TextMeasurer textMeasurer, String text, long j, TextStyle style, int i, boolean z, int i2, long j2, int i3) {
        Intrinsics.checkNotNullParameter(drawText, "$this$drawText");
        Intrinsics.checkNotNullParameter(textMeasurer, "textMeasurer");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        TextLayoutResult m4390measurexDpz5zY$default = TextMeasurer.m4390measurexDpz5zY$default(textMeasurer, new AnnotatedString(text, null, null, 6, null), style, i, z, i2, null, m4401textLayoutConstraintsv_w8tDc(drawText, j2, j), drawText.getLayoutDirection(), drawText, null, false, 1568, null);
        DrawContext drawContext = drawText.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        DrawTransform transform = drawContext.getTransform();
        transform.translate(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j));
        clip(transform, m4390measurexDpz5zY$default);
        m4390measurexDpz5zY$default.getMultiParagraph().m4304paintLG529CI(drawText.getDrawContext().getCanvas(), (r14 & 2) != 0 ? Color.INSTANCE.m2675getUnspecified0d7_KjU() : 0L, (r14 & 4) != 0 ? null : null, (r14 & 8) != 0 ? null : null, (r14 & 16) == 0 ? null : null, (r14 & 32) != 0 ? DrawScope.INSTANCE.m3183getDefaultBlendMode0nO6VwU() : i3);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: drawText-d8-rzKo, reason: not valid java name */
    public static final void m4399drawTextd8rzKo(DrawScope drawText, TextLayoutResult textLayoutResult, long j, long j2, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i) {
        Intrinsics.checkNotNullParameter(drawText, "$this$drawText");
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        Shadow shadow2 = shadow == null ? textLayoutResult.getLayoutInput().getStyle().getShadow() : shadow;
        TextDecoration textDecoration2 = textDecoration == null ? textLayoutResult.getLayoutInput().getStyle().getTextDecoration() : textDecoration;
        DrawStyle drawStyle2 = drawStyle == null ? textLayoutResult.getLayoutInput().getStyle().getDrawStyle() : drawStyle;
        DrawContext drawContext = drawText.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        DrawTransform transform = drawContext.getTransform();
        transform.translate(Offset.m2400getXimpl(j2), Offset.m2401getYimpl(j2));
        clip(transform, textLayoutResult);
        Brush brush = textLayoutResult.getLayoutInput().getStyle().getBrush();
        if (brush != null && j == Color.INSTANCE.m2675getUnspecified0d7_KjU()) {
            textLayoutResult.getMultiParagraph().m4306painthn5TExg(drawText.getDrawContext().getCanvas(), brush, !Float.isNaN(f) ? f : textLayoutResult.getLayoutInput().getStyle().getAlpha(), shadow2, textDecoration2, drawStyle2, i);
        } else {
            textLayoutResult.getMultiParagraph().m4304paintLG529CI(drawText.getDrawContext().getCanvas(), TextDrawStyleKt.m4795modulateDxMtmZc(j != Color.INSTANCE.m2675getUnspecified0d7_KjU() ? j : textLayoutResult.getLayoutInput().getStyle().m4435getColor0d7_KjU(), f), shadow2, textDecoration2, drawStyle2, i);
        }
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: drawText-LVfH_YU, reason: not valid java name */
    public static final void m4395drawTextLVfH_YU(DrawScope drawText, TextLayoutResult textLayoutResult, Brush brush, long j, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i) {
        Intrinsics.checkNotNullParameter(drawText, "$this$drawText");
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Shadow shadow2 = shadow == null ? textLayoutResult.getLayoutInput().getStyle().getShadow() : shadow;
        TextDecoration textDecoration2 = textDecoration == null ? textLayoutResult.getLayoutInput().getStyle().getTextDecoration() : textDecoration;
        DrawStyle drawStyle2 = drawStyle == null ? textLayoutResult.getLayoutInput().getStyle().getDrawStyle() : drawStyle;
        DrawContext drawContext = drawText.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        DrawTransform transform = drawContext.getTransform();
        transform.translate(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j));
        clip(transform, textLayoutResult);
        textLayoutResult.getMultiParagraph().m4306painthn5TExg(drawText.getDrawContext().getCanvas(), brush, !Float.isNaN(f) ? f : textLayoutResult.getLayoutInput().getStyle().getAlpha(), shadow2, textDecoration2, drawStyle2, i);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    private static final void clip(DrawTransform drawTransform, TextLayoutResult textLayoutResult) {
        if (!textLayoutResult.getHasVisualOverflow() || TextOverflow.m4817equalsimpl0(textLayoutResult.getLayoutInput().getOverflow(), TextOverflow.INSTANCE.m4826getVisiblegIe3tQ8())) {
            return;
        }
        DrawTransform.m3233clipRectN_I0leg$default(drawTransform, 0.0f, 0.0f, IntSize.m5043getWidthimpl(textLayoutResult.getSize()), IntSize.m5042getHeightimpl(textLayoutResult.getSize()), 0, 16, null);
    }

    /* renamed from: textLayoutConstraints-v_w8tDc, reason: not valid java name */
    private static final long m4401textLayoutConstraintsv_w8tDc(DrawScope drawScope, long j, long j2) {
        int roundToInt;
        int i;
        int roundToInt2;
        int i2 = 0;
        if (j == Size.INSTANCE.m2477getUnspecifiedNHjbRc() || Float.isNaN(Size.m2469getWidthimpl(j))) {
            roundToInt = MathKt.roundToInt((float) Math.ceil(Size.m2469getWidthimpl(drawScope.mo3182getSizeNHjbRc()) - Offset.m2400getXimpl(j2)));
            i = 0;
        } else {
            i = MathKt.roundToInt((float) Math.ceil(Size.m2469getWidthimpl(j)));
            roundToInt = i;
        }
        if (j == Size.INSTANCE.m2477getUnspecifiedNHjbRc() || Float.isNaN(Size.m2466getHeightimpl(j))) {
            roundToInt2 = MathKt.roundToInt((float) Math.ceil(Size.m2466getHeightimpl(drawScope.mo3182getSizeNHjbRc()) - Offset.m2401getYimpl(j2)));
        } else {
            i2 = MathKt.roundToInt((float) Math.ceil(Size.m2466getHeightimpl(j)));
            roundToInt2 = i2;
        }
        return ConstraintsKt.Constraints(i, roundToInt, i2, roundToInt2);
    }
}
