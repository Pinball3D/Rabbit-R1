package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GraphicsLayerModifier.kt */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0094\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001aø\u0001\u0000¢\u0006\u0002\u0010\u001bJ\u0006\u0010S\u001a\u000203J\b\u0010T\u001a\u00020UH\u0016J)\u0010V\u001a\u00020W*\u00020X2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b]\u0010^R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR%\u0010\u0016\u001a\u00020\u0017X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001d\"\u0004\b&\u0010\u001fR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R%\u0010\u0019\u001a\u00020\u001aX\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010/\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001f\u00100\u001a\u0013\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020301¢\u0006\u0002\b4X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u0010\n\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u001d\"\u0004\b:\u0010\u001fR\u001a\u0010\u000b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u001d\"\u0004\b<\u0010\u001fR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u001d\"\u0004\b>\u0010\u001fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u001d\"\u0004\b@\u0010\u001fR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u001d\"\u0004\bB\u0010\u001fR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u001d\"\u0004\bD\u0010\u001fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u0014\u0010I\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010(R%\u0010\u0018\u001a\u00020\u0017X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\bK\u0010!\"\u0004\bL\u0010#R%\u0010\u000e\u001a\u00020\u000fX\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\bM\u0010!\"\u0004\bN\u0010#R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010\u001d\"\u0004\bP\u0010\u001fR\u001a\u0010\b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010\u001d\"\u0004\bR\u0010\u001f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006_"}, d2 = {"Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "scaleX", "", "scaleY", ViewHierarchyNode.JsonKeys.ALPHA, "translationX", "translationY", "shadowElevation", "rotationX", "rotationY", "rotationZ", "cameraDistance", "transformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "shape", "Landroidx/compose/ui/graphics/Shape;", "clip", "", "renderEffect", "Landroidx/compose/ui/graphics/RenderEffect;", "ambientShadowColor", "Landroidx/compose/ui/graphics/Color;", "spotShadowColor", "compositingStrategy", "Landroidx/compose/ui/graphics/CompositingStrategy;", "(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAlpha", "()F", "setAlpha", "(F)V", "getAmbientShadowColor-0d7_KjU", "()J", "setAmbientShadowColor-8_81llA", "(J)V", "J", "getCameraDistance", "setCameraDistance", "getClip", "()Z", "setClip", "(Z)V", "getCompositingStrategy--NrFUSI", "()I", "setCompositingStrategy-aDBOjCE", "(I)V", "I", "layerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "", "Lkotlin/ExtensionFunctionType;", "getRenderEffect", "()Landroidx/compose/ui/graphics/RenderEffect;", "setRenderEffect", "(Landroidx/compose/ui/graphics/RenderEffect;)V", "getRotationX", "setRotationX", "getRotationY", "setRotationY", "getRotationZ", "setRotationZ", "getScaleX", "setScaleX", "getScaleY", "setScaleY", "getShadowElevation", "setShadowElevation", "getShape", "()Landroidx/compose/ui/graphics/Shape;", "setShape", "(Landroidx/compose/ui/graphics/Shape;)V", "shouldAutoInvalidate", "getShouldAutoInvalidate", "getSpotShadowColor-0d7_KjU", "setSpotShadowColor-8_81llA", "getTransformOrigin-SzJe1aQ", "setTransformOrigin-__ExYCQ", "getTranslationX", "setTranslationX", "getTranslationY", "setTranslationY", "invalidateLayerBlock", "toString", "", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SimpleGraphicsLayerModifier extends Modifier.Node implements LayoutModifierNode {
    private float alpha;
    private long ambientShadowColor;
    private float cameraDistance;
    private boolean clip;
    private int compositingStrategy;
    private Function1<? super GraphicsLayerScope, Unit> layerBlock;
    private RenderEffect renderEffect;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float scaleX;
    private float scaleY;
    private float shadowElevation;
    private Shape shape;
    private long spotShadowColor;
    private long transformOrigin;
    private float translationX;
    private float translationY;

    public /* synthetic */ SimpleGraphicsLayerModifier(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, i);
    }

    public final float getAlpha() {
        return this.alpha;
    }

    /* renamed from: getAmbientShadowColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getAmbientShadowColor() {
        return this.ambientShadowColor;
    }

    public final float getCameraDistance() {
        return this.cameraDistance;
    }

    public final boolean getClip() {
        return this.clip;
    }

    /* renamed from: getCompositingStrategy--NrFUSI, reason: not valid java name and from getter */
    public final int getCompositingStrategy() {
        return this.compositingStrategy;
    }

    public final RenderEffect getRenderEffect() {
        return this.renderEffect;
    }

    public final float getRotationX() {
        return this.rotationX;
    }

    public final float getRotationY() {
        return this.rotationY;
    }

    public final float getRotationZ() {
        return this.rotationZ;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final float getShadowElevation() {
        return this.shadowElevation;
    }

    public final Shape getShape() {
        return this.shape;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    /* renamed from: getSpotShadowColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getSpotShadowColor() {
        return this.spotShadowColor;
    }

    /* renamed from: getTransformOrigin-SzJe1aQ, reason: not valid java name and from getter */
    public final long getTransformOrigin() {
        return this.transformOrigin;
    }

    public final float getTranslationX() {
        return this.translationX;
    }

    public final float getTranslationY() {
        return this.translationY;
    }

    public final void setAlpha(float f) {
        this.alpha = f;
    }

    /* renamed from: setAmbientShadowColor-8_81llA, reason: not valid java name */
    public final void m2963setAmbientShadowColor8_81llA(long j) {
        this.ambientShadowColor = j;
    }

    public final void setCameraDistance(float f) {
        this.cameraDistance = f;
    }

    public final void setClip(boolean z) {
        this.clip = z;
    }

    /* renamed from: setCompositingStrategy-aDBOjCE, reason: not valid java name */
    public final void m2964setCompositingStrategyaDBOjCE(int i) {
        this.compositingStrategy = i;
    }

    public final void setRenderEffect(RenderEffect renderEffect) {
        this.renderEffect = renderEffect;
    }

    public final void setRotationX(float f) {
        this.rotationX = f;
    }

    public final void setRotationY(float f) {
        this.rotationY = f;
    }

    public final void setRotationZ(float f) {
        this.rotationZ = f;
    }

    public final void setScaleX(float f) {
        this.scaleX = f;
    }

    public final void setScaleY(float f) {
        this.scaleY = f;
    }

    public final void setShadowElevation(float f) {
        this.shadowElevation = f;
    }

    public final void setShape(Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }

    /* renamed from: setSpotShadowColor-8_81llA, reason: not valid java name */
    public final void m2965setSpotShadowColor8_81llA(long j) {
        this.spotShadowColor = j;
    }

    /* renamed from: setTransformOrigin-__ExYCQ, reason: not valid java name */
    public final void m2966setTransformOrigin__ExYCQ(long j) {
        this.transformOrigin = j;
    }

    public final void setTranslationX(float f) {
        this.translationX = f;
    }

    public final void setTranslationY(float f) {
        this.translationY = f;
    }

    public /* synthetic */ SimpleGraphicsLayerModifier(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, j, shape, z, renderEffect, j2, j3, (i2 & 65536) != 0 ? CompositingStrategy.INSTANCE.m2724getAutoNrFUSI() : i, null);
    }

    private SimpleGraphicsLayerModifier(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.scaleX = f;
        this.scaleY = f2;
        this.alpha = f3;
        this.translationX = f4;
        this.translationY = f5;
        this.shadowElevation = f6;
        this.rotationX = f7;
        this.rotationY = f8;
        this.rotationZ = f9;
        this.cameraDistance = f10;
        this.transformOrigin = j;
        this.shape = shape;
        this.clip = z;
        this.renderEffect = renderEffect;
        this.ambientShadowColor = j2;
        this.spotShadowColor = j3;
        this.compositingStrategy = i;
        this.layerBlock = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$layerBlock$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                invoke2(graphicsLayerScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
                Intrinsics.checkNotNullParameter(graphicsLayerScope, "$this$null");
                graphicsLayerScope.setScaleX(SimpleGraphicsLayerModifier.this.getScaleX());
                graphicsLayerScope.setScaleY(SimpleGraphicsLayerModifier.this.getScaleY());
                graphicsLayerScope.setAlpha(SimpleGraphicsLayerModifier.this.getAlpha());
                graphicsLayerScope.setTranslationX(SimpleGraphicsLayerModifier.this.getTranslationX());
                graphicsLayerScope.setTranslationY(SimpleGraphicsLayerModifier.this.getTranslationY());
                graphicsLayerScope.setShadowElevation(SimpleGraphicsLayerModifier.this.getShadowElevation());
                graphicsLayerScope.setRotationX(SimpleGraphicsLayerModifier.this.getRotationX());
                graphicsLayerScope.setRotationY(SimpleGraphicsLayerModifier.this.getRotationY());
                graphicsLayerScope.setRotationZ(SimpleGraphicsLayerModifier.this.getRotationZ());
                graphicsLayerScope.setCameraDistance(SimpleGraphicsLayerModifier.this.getCameraDistance());
                graphicsLayerScope.mo2828setTransformOrigin__ExYCQ(SimpleGraphicsLayerModifier.this.getTransformOrigin());
                graphicsLayerScope.setShape(SimpleGraphicsLayerModifier.this.getShape());
                graphicsLayerScope.setClip(SimpleGraphicsLayerModifier.this.getClip());
                graphicsLayerScope.setRenderEffect(SimpleGraphicsLayerModifier.this.getRenderEffect());
                graphicsLayerScope.mo2825setAmbientShadowColor8_81llA(SimpleGraphicsLayerModifier.this.getAmbientShadowColor());
                graphicsLayerScope.mo2827setSpotShadowColor8_81llA(SimpleGraphicsLayerModifier.this.getSpotShadowColor());
                graphicsLayerScope.mo2826setCompositingStrategyaDBOjCE(SimpleGraphicsLayerModifier.this.getCompositingStrategy());
            }
        };
    }

    public final void invalidateLayerBlock() {
        NodeCoordinator wrapped = DelegatableNodeKt.m3989requireCoordinator64DMado(this, NodeKind.m4091constructorimpl(2)).getWrapped();
        if (wrapped != null) {
            wrapped.updateLayerBlock(this.layerBlock, true);
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
        return MeasureScope.layout$default(measure, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope layout) {
                Function1 function1;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable placeable = Placeable.this;
                function1 = this.layerBlock;
                Placeable.PlacementScope.placeWithLayer$default(layout, placeable, 0, 0, 0.0f, function1, 4, null);
            }
        }, 4, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SimpleGraphicsLayerModifier(scaleX=");
        sb.append(this.scaleX).append(", scaleY=").append(this.scaleY).append(", alpha = ").append(this.alpha).append(", translationX=").append(this.translationX).append(", translationY=").append(this.translationY).append(", shadowElevation=").append(this.shadowElevation).append(", rotationX=").append(this.rotationX).append(", rotationY=").append(this.rotationY).append(", rotationZ=").append(this.rotationZ).append(", cameraDistance=").append(this.cameraDistance).append(", transformOrigin=").append((Object) TransformOrigin.m3021toStringimpl(this.transformOrigin)).append(", shape=");
        sb.append(this.shape).append(", clip=").append(this.clip).append(", renderEffect=").append(this.renderEffect).append(", ambientShadowColor=").append((Object) Color.m2647toStringimpl(this.ambientShadowColor)).append(", spotShadowColor=").append((Object) Color.m2647toStringimpl(this.spotShadowColor)).append(", compositingStrategy=").append((Object) CompositingStrategy.m2722toStringimpl(this.compositingStrategy)).append(')');
        return sb.toString();
    }
}
