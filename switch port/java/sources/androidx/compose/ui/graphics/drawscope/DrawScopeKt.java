package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.DegreesKt;
import androidx.compose.ui.graphics.Path;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawScope.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aH\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\n\u0010\u000b\u001ah\u0010\f\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u000e2\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a$\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00010\bH\u0086\bø\u0001\u0000\u001a1\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u000e2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u001a=\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u000e2\b\b\u0002\u0010\u0018\u001a\u00020\u000e2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u001aI\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u001aH\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u000e2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001d\u0010\u001e\u001aH\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010 \u001a\u00020\u000e2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b!\u0010\u001e\u001aH\u0010\"\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000e2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b#\u0010\u001e\u001aP\u0010\"\u001a\u00020\u0001*\u00020\u00022\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b&\u0010'\u001a=\u0010(\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u001aB\u0010)\u001a\u00020\u0001*\u00020\u00022\u0017\u0010*\u001a\u0013\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\t2\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u0082\u0002\u0012\n\u0005\b\u009920\u0001\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006-"}, d2 = {"clipPath", "", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "path", "Landroidx/compose/ui/graphics/Path;", "clipOp", "Landroidx/compose/ui/graphics/ClipOp;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "clipPath-KD09W0M", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/functions/Function1;)V", "clipRect", "left", "", "top", "right", "bottom", "clipRect-rOu3jXo", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFFILkotlin/jvm/functions/Function1;)V", "drawIntoCanvas", "Landroidx/compose/ui/graphics/Canvas;", "inset", "horizontal", "vertical", "rotate", "degrees", "pivot", "Landroidx/compose/ui/geometry/Offset;", "rotate-Rg1IO4c", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJLkotlin/jvm/functions/Function1;)V", "rotateRad", "radians", "rotateRad-Rg1IO4c", "scale", "scale-Rg1IO4c", "scaleX", "scaleY", "scale-Fgt4K4Q", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLkotlin/jvm/functions/Function1;)V", "translate", "withTransform", "transformBlock", "Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "drawBlock", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DrawScopeKt {
    public static final void inset(DrawScope drawScope, float f, float f2, float f3, float f4, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f, f2, f3, f4);
        block.invoke(drawScope);
        drawScope.getDrawContext().getTransform().inset(-f, -f2, -f3, -f4);
    }

    public static final void inset(DrawScope drawScope, float f, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f, f, f, f);
        block.invoke(drawScope);
        float f2 = -f;
        drawScope.getDrawContext().getTransform().inset(f2, f2, f2, f2);
    }

    public static /* synthetic */ void inset$default(DrawScope drawScope, float f, float f2, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f, f2, f, f2);
        block.invoke(drawScope);
        float f3 = -f;
        float f4 = -f2;
        drawScope.getDrawContext().getTransform().inset(f3, f4, f3, f4);
    }

    public static /* synthetic */ void translate$default(DrawScope drawScope, float f, float f2, Function1 block, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().translate(f, f2);
        block.invoke(drawScope);
        drawScope.getDrawContext().getTransform().translate(-f, -f2);
    }

    public static final void translate(DrawScope drawScope, float f, float f2, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().translate(f, f2);
        block.invoke(drawScope);
        drawScope.getDrawContext().getTransform().translate(-f, -f2);
    }

    /* renamed from: rotate-Rg1IO4c$default, reason: not valid java name */
    public static /* synthetic */ void m3224rotateRg1IO4c$default(DrawScope rotate, float f, long j, Function1 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = rotate.mo3181getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(rotate, "$this$rotate");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotate.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3113rotateUv8p0NA(f, j);
        block.invoke(rotate);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: rotateRad-Rg1IO4c$default, reason: not valid java name */
    public static /* synthetic */ void m3226rotateRadRg1IO4c$default(DrawScope rotateRad, float f, long j, Function1 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = rotateRad.mo3181getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotateRad.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3113rotateUv8p0NA(DegreesKt.degrees(f), j);
        block.invoke(rotateRad);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: scale-Fgt4K4Q$default, reason: not valid java name */
    public static /* synthetic */ void m3228scaleFgt4K4Q$default(DrawScope scale, float f, float f2, long j, Function1 block, int i, Object obj) {
        if ((i & 4) != 0) {
            j = scale.mo3181getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3114scale0AR0LA0(f, f2, j);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: scale-Rg1IO4c$default, reason: not valid java name */
    public static /* synthetic */ void m3230scaleRg1IO4c$default(DrawScope scale, float f, long j, Function1 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = scale.mo3181getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3114scale0AR0LA0(f, f, j);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: clipRect-rOu3jXo$default, reason: not valid java name */
    public static /* synthetic */ void m3222clipRectrOu3jXo$default(DrawScope clipRect, float f, float f2, float f3, float f4, int i, Function1 block, int i2, Object obj) {
        float f5 = (i2 & 1) != 0 ? 0.0f : f;
        float f6 = (i2 & 2) != 0 ? 0.0f : f2;
        if ((i2 & 4) != 0) {
            f3 = Size.m2469getWidthimpl(clipRect.mo3182getSizeNHjbRc());
        }
        float f7 = f3;
        if ((i2 & 8) != 0) {
            f4 = Size.m2466getHeightimpl(clipRect.mo3182getSizeNHjbRc());
        }
        float f8 = f4;
        if ((i2 & 16) != 0) {
            i = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
        }
        Intrinsics.checkNotNullParameter(clipRect, "$this$clipRect");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipRect.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3110clipRectN_I0leg(f5, f6, f7, f8, i);
        block.invoke(clipRect);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: clipPath-KD09W0M$default, reason: not valid java name */
    public static /* synthetic */ void m3220clipPathKD09W0M$default(DrawScope clipPath, Path path, int i, Function1 block, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
        }
        Intrinsics.checkNotNullParameter(clipPath, "$this$clipPath");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipPath.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3109clipPathmtrdDE(path, i);
        block.invoke(clipPath);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    public static final void drawIntoCanvas(DrawScope drawScope, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(drawScope.getDrawContext().getCanvas());
    }

    public static final void withTransform(DrawScope drawScope, Function1<? super DrawTransform, Unit> transformBlock, Function1<? super DrawScope, Unit> drawBlock) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(transformBlock, "transformBlock");
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        DrawContext drawContext = drawScope.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        transformBlock.invoke(drawContext.getTransform());
        drawBlock.invoke(drawScope);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    public static final void inset(DrawScope drawScope, float f, float f2, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f, f2, f, f2);
        block.invoke(drawScope);
        float f3 = -f;
        float f4 = -f2;
        drawScope.getDrawContext().getTransform().inset(f3, f4, f3, f4);
    }

    /* renamed from: rotate-Rg1IO4c, reason: not valid java name */
    public static final void m3223rotateRg1IO4c(DrawScope rotate, float f, long j, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(rotate, "$this$rotate");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotate.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3113rotateUv8p0NA(f, j);
        block.invoke(rotate);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: rotateRad-Rg1IO4c, reason: not valid java name */
    public static final void m3225rotateRadRg1IO4c(DrawScope rotateRad, float f, long j, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotateRad.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3113rotateUv8p0NA(DegreesKt.degrees(f), j);
        block.invoke(rotateRad);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: scale-Fgt4K4Q, reason: not valid java name */
    public static final void m3227scaleFgt4K4Q(DrawScope scale, float f, float f2, long j, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3114scale0AR0LA0(f, f2, j);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: scale-Rg1IO4c, reason: not valid java name */
    public static final void m3229scaleRg1IO4c(DrawScope scale, float f, long j, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3114scale0AR0LA0(f, f, j);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: clipRect-rOu3jXo, reason: not valid java name */
    public static final void m3221clipRectrOu3jXo(DrawScope clipRect, float f, float f2, float f3, float f4, int i, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(clipRect, "$this$clipRect");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipRect.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3110clipRectN_I0leg(f, f2, f3, f4, i);
        block.invoke(clipRect);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    /* renamed from: clipPath-KD09W0M, reason: not valid java name */
    public static final void m3219clipPathKD09W0M(DrawScope clipPath, Path path, int i, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(clipPath, "$this$clipPath");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipPath.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3109clipPathmtrdDE(path, i);
        block.invoke(clipPath);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }
}
