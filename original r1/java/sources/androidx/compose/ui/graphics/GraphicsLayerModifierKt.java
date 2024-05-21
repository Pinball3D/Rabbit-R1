package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GraphicsLayerModifier.kt */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0007\u001a\u009b\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019\u001a§\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001d\u001a»\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020\u001fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\"\u001aÅ\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020\u001f2\b\b\u0002\u0010#\u001a\u00020$H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b%\u0010&\u001a\f\u0010'\u001a\u00020\u0001*\u00020\u0001H\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006("}, d2 = {"graphicsLayer", "Landroidx/compose/ui/Modifier;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "", "Lkotlin/ExtensionFunctionType;", "scaleX", "", "scaleY", ViewHierarchyNode.JsonKeys.ALPHA, "translationX", "translationY", "shadowElevation", "rotationX", "rotationY", "rotationZ", "cameraDistance", "transformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "shape", "Landroidx/compose/ui/graphics/Shape;", "clip", "", "graphicsLayer-sKFY_QE", "(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;Z)Landroidx/compose/ui/Modifier;", "renderEffect", "Landroidx/compose/ui/graphics/RenderEffect;", "graphicsLayer-2Xn7asI", "(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;)Landroidx/compose/ui/Modifier;", "ambientShadowColor", "Landroidx/compose/ui/graphics/Color;", "spotShadowColor", "graphicsLayer-pANQ8Wg", "(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJ)Landroidx/compose/ui/Modifier;", "compositingStrategy", "Landroidx/compose/ui/graphics/CompositingStrategy;", "graphicsLayer-Ap8cVGQ", "(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJI)Landroidx/compose/ui/Modifier;", "toolingGraphicsLayer", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GraphicsLayerModifierKt {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Replace with graphicsLayer that consumes an optional RenderEffect parameter and shadow color parameters", replaceWith = @ReplaceWith(expression = "Modifier.graphicsLayer(scaleX, scaleY, alpha, translationX, translationY, shadowElevation, rotationX, rotationY, rotationZ, cameraDistance, transformOrigin, shape, clip, null, DefaultShadowColor, DefaultShadowColor)", imports = {"androidx.compose.ui.graphics"}))
    /* renamed from: graphicsLayer-sKFY_QE */
    public static final /* synthetic */ Modifier m2799graphicsLayersKFY_QE(Modifier graphicsLayer, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m2796graphicsLayerAp8cVGQ$default(graphicsLayer, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, null, 0L, 0L, 0, 114688, null);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Replace with graphicsLayer that consumes shadow color parameters", replaceWith = @ReplaceWith(expression = "Modifier.graphicsLayer(scaleX, scaleY, alpha, translationX, translationY, shadowElevation, rotationX, rotationY, rotationZ, cameraDistance, transformOrigin, shape, clip, null, DefaultShadowColor, DefaultShadowColor)", imports = {"androidx.compose.ui.graphics"}))
    /* renamed from: graphicsLayer-2Xn7asI */
    public static final /* synthetic */ Modifier m2793graphicsLayer2Xn7asI(Modifier graphicsLayer, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m2795graphicsLayerAp8cVGQ(graphicsLayer, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, GraphicsLayerScopeKt.getDefaultShadowColor(), GraphicsLayerScopeKt.getDefaultShadowColor(), CompositingStrategy.INSTANCE.m2724getAutoNrFUSI());
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Replace with graphicsLayer that consumes a compositing strategy", replaceWith = @ReplaceWith(expression = "Modifier.graphicsLayer(scaleX, scaleY, alpha, translationX, translationY, shadowElevation, rotationX, rotationY, rotationZ, cameraDistance, transformOrigin, shape, clip, null, DefaultShadowColor, DefaultShadowColor, CompositingStrategy.Auto)", imports = {"androidx.compose.ui.graphics"}))
    /* renamed from: graphicsLayer-pANQ8Wg */
    public static final /* synthetic */ Modifier m2797graphicsLayerpANQ8Wg(Modifier graphicsLayer, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m2795graphicsLayerAp8cVGQ(graphicsLayer, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, CompositingStrategy.INSTANCE.m2724getAutoNrFUSI());
    }

    /* renamed from: graphicsLayer-Ap8cVGQ$default */
    public static /* synthetic */ Modifier m2796graphicsLayerAp8cVGQ$default(Modifier modifier, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i, int i2, Object obj) {
        return m2795graphicsLayerAp8cVGQ(modifier, (i2 & 1) != 0 ? 1.0f : f, (i2 & 2) != 0 ? 1.0f : f2, (i2 & 4) == 0 ? f3 : 1.0f, (i2 & 8) != 0 ? 0.0f : f4, (i2 & 16) != 0 ? 0.0f : f5, (i2 & 32) != 0 ? 0.0f : f6, (i2 & 64) != 0 ? 0.0f : f7, (i2 & 128) != 0 ? 0.0f : f8, (i2 & 256) == 0 ? f9 : 0.0f, (i2 & 512) != 0 ? 8.0f : f10, (i2 & 1024) != 0 ? TransformOrigin.INSTANCE.m3023getCenterSzJe1aQ() : j, (i2 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : shape, (i2 & 4096) != 0 ? false : z, (i2 & 8192) != 0 ? null : renderEffect, (i2 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : j2, (i2 & 32768) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : j3, (i2 & 65536) != 0 ? CompositingStrategy.INSTANCE.m2724getAutoNrFUSI() : i);
    }

    /* renamed from: graphicsLayer-Ap8cVGQ */
    public static final Modifier m2795graphicsLayerAp8cVGQ(Modifier graphicsLayer, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return graphicsLayer.then(new GraphicsLayerElement(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, i, null));
    }

    public static final Modifier graphicsLayer(Modifier modifier, Function1<? super GraphicsLayerScope, Unit> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return modifier.then(new BlockGraphicsLayerElement(block));
    }

    public static final Modifier toolingGraphicsLayer(Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return InspectableValueKt.isDebugInspectorInfoEnabled() ? modifier.then(m2796graphicsLayerAp8cVGQ$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null)) : modifier;
    }
}
