package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: AndroidTextPaint.android.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J/\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u0005ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b%\u0010&J\u001b\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u0010\u0010,\u001a\u00020\u001f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010-\u001a\u00020\u001f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010.\u001a\u00020\u001f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dR4\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b8F@FX\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f*\u0004\b\n\u0010\u000bR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006/"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidTextPaint;", "Landroid/text/TextPaint;", "flags", "", "density", "", "(IF)V", "<set-?>", "Landroidx/compose/ui/graphics/BlendMode;", "blendMode", "getBlendMode-0nO6VwU$delegate", "(Landroidx/compose/ui/text/platform/AndroidTextPaint;)Ljava/lang/Object;", "getBlendMode-0nO6VwU", "()I", "setBlendMode-s9anfk8", "(I)V", "composePaint", "Landroidx/compose/ui/graphics/Paint;", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "getShadow$ui_text_release$annotations", "()V", "getShadow$ui_text_release", "()Landroidx/compose/ui/graphics/Shadow;", "setShadow$ui_text_release", "(Landroidx/compose/ui/graphics/Shadow;)V", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "setBrush", "", "brush", "Landroidx/compose/ui/graphics/Brush;", "size", "Landroidx/compose/ui/geometry/Size;", ViewHierarchyNode.JsonKeys.ALPHA, "setBrush-12SF9DM", "(Landroidx/compose/ui/graphics/Brush;JF)V", "setColor", "color", "Landroidx/compose/ui/graphics/Color;", "setColor-8_81llA", "(J)V", "setDrawStyle", "setShadow", "setTextDecoration", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidTextPaint extends TextPaint {
    private final Paint composePaint;
    private DrawStyle drawStyle;
    private Shadow shadow;
    private TextDecoration textDecoration;

    public static /* synthetic */ void getShadow$ui_text_release$annotations() {
    }

    /* renamed from: getShadow$ui_text_release, reason: from getter */
    public final Shadow getShadow() {
        return this.shadow;
    }

    public final void setShadow$ui_text_release(Shadow shadow) {
        Intrinsics.checkNotNullParameter(shadow, "<set-?>");
        this.shadow = shadow;
    }

    public AndroidTextPaint(int i, float f) {
        super(i);
        this.density = f;
        this.composePaint = AndroidPaint_androidKt.asComposePaint(this);
        this.textDecoration = TextDecoration.INSTANCE.getNone();
        this.shadow = Shadow.INSTANCE.getNone();
    }

    public final void setTextDecoration(TextDecoration textDecoration) {
        if (textDecoration == null || Intrinsics.areEqual(this.textDecoration, textDecoration)) {
            return;
        }
        this.textDecoration = textDecoration;
        setUnderlineText(textDecoration.contains(TextDecoration.INSTANCE.getUnderline()));
        setStrikeThruText(this.textDecoration.contains(TextDecoration.INSTANCE.getLineThrough()));
    }

    public final void setShadow(Shadow shadow) {
        if (shadow == null || Intrinsics.areEqual(this.shadow, shadow)) {
            return;
        }
        this.shadow = shadow;
        if (Intrinsics.areEqual(shadow, Shadow.INSTANCE.getNone())) {
            clearShadowLayer();
        } else {
            setShadowLayer(TextPaintExtensions_androidKt.correctBlurRadius(this.shadow.getBlurRadius()), Offset.m2400getXimpl(this.shadow.getOffset()), Offset.m2401getYimpl(this.shadow.getOffset()), ColorKt.m2693toArgb8_81llA(this.shadow.getColor()));
        }
    }

    /* renamed from: setBrush-12SF9DM$default, reason: not valid java name */
    public static /* synthetic */ void m4647setBrush12SF9DM$default(AndroidTextPaint androidTextPaint, Brush brush, long j, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = Float.NaN;
        }
        androidTextPaint.m4650setBrush12SF9DM(brush, j, f);
    }

    /* renamed from: setBrush-12SF9DM, reason: not valid java name */
    public final void m4650setBrush12SF9DM(Brush brush, long size, float alpha) {
        if (((brush instanceof SolidColor) && ((SolidColor) brush).getValue() != Color.INSTANCE.m2675getUnspecified0d7_KjU()) || ((brush instanceof ShaderBrush) && size != Size.INSTANCE.m2477getUnspecifiedNHjbRc())) {
            brush.mo2586applyToPq9zytI(size, this.composePaint, Float.isNaN(alpha) ? this.composePaint.getAlpha() : RangesKt.coerceIn(alpha, 0.0f, 1.0f));
        } else if (brush == null) {
            this.composePaint.setShader(null);
        }
    }

    public final void setDrawStyle(DrawStyle drawStyle) {
        if (drawStyle == null || Intrinsics.areEqual(this.drawStyle, drawStyle)) {
            return;
        }
        this.drawStyle = drawStyle;
        if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
            this.composePaint.mo2524setStylek9PVt8s(PaintingStyle.INSTANCE.m2900getFillTiuSbCo());
            return;
        }
        if (drawStyle instanceof Stroke) {
            this.composePaint.mo2524setStylek9PVt8s(PaintingStyle.INSTANCE.m2901getStrokeTiuSbCo());
            Stroke stroke = (Stroke) drawStyle;
            this.composePaint.setStrokeWidth(stroke.getWidth());
            this.composePaint.setStrokeMiterLimit(stroke.getMiter());
            this.composePaint.mo2523setStrokeJoinWw9F2mQ(stroke.getJoin());
            this.composePaint.mo2522setStrokeCapBeK7IIE(stroke.getCap());
            this.composePaint.setPathEffect(stroke.getPathEffect());
        }
    }

    /* renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m4648getBlendMode0nO6VwU() {
        return this.composePaint.get_blendMode();
    }

    /* renamed from: setBlendMode-s9anfk8, reason: not valid java name */
    public final void m4649setBlendModes9anfk8(int i) {
        this.composePaint.mo2519setBlendModes9anfk8(i);
    }

    /* renamed from: setColor-8_81llA, reason: not valid java name */
    public final void m4651setColor8_81llA(long color) {
        if (color != Color.INSTANCE.m2675getUnspecified0d7_KjU()) {
            this.composePaint.mo2520setColor8_81llA(color);
            this.composePaint.setShader(null);
        }
    }
}
