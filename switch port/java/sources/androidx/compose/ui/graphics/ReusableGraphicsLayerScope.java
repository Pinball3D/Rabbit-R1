package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GraphicsLayerScope.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010Y\u001a\u00020ZR\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR%\u0010\t\u001a\u00020\nX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\u001a\u0010\u0013\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R%\u0010\u0019\u001a\u00020\u001aX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0006R\u0014\u0010\"\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u0006R\u001a\u0010$\u001a\u00020%X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001a\u00106\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\u001a\u00109\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0006\"\u0004\b;\u0010\bR\u001a\u0010<\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0006\"\u0004\b>\u0010\bR\u001a\u0010?\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0006\"\u0004\bA\u0010\bR\u001a\u0010B\u001a\u00020CX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR%\u0010H\u001a\u00020IX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\bJ\u0010\f\"\u0004\bK\u0010\u000eR%\u0010L\u001a\u00020\nX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\bM\u0010\f\"\u0004\bN\u0010\u000eR%\u0010O\u001a\u00020PX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\bQ\u0010\f\"\u0004\bR\u0010\u000eR\u001a\u0010S\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010\u0006\"\u0004\bU\u0010\bR\u001a\u0010V\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010\u0006\"\u0004\bX\u0010\b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006["}, d2 = {"Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "()V", ViewHierarchyNode.JsonKeys.ALPHA, "", "getAlpha", "()F", "setAlpha", "(F)V", "ambientShadowColor", "Landroidx/compose/ui/graphics/Color;", "getAmbientShadowColor-0d7_KjU", "()J", "setAmbientShadowColor-8_81llA", "(J)V", "J", "cameraDistance", "getCameraDistance", "setCameraDistance", "clip", "", "getClip", "()Z", "setClip", "(Z)V", "compositingStrategy", "Landroidx/compose/ui/graphics/CompositingStrategy;", "getCompositingStrategy--NrFUSI", "()I", "setCompositingStrategy-aDBOjCE", "(I)V", "I", "density", "getDensity", "fontScale", "getFontScale", "graphicsDensity", "Landroidx/compose/ui/unit/Density;", "getGraphicsDensity$ui_release", "()Landroidx/compose/ui/unit/Density;", "setGraphicsDensity$ui_release", "(Landroidx/compose/ui/unit/Density;)V", "renderEffect", "Landroidx/compose/ui/graphics/RenderEffect;", "getRenderEffect", "()Landroidx/compose/ui/graphics/RenderEffect;", "setRenderEffect", "(Landroidx/compose/ui/graphics/RenderEffect;)V", "rotationX", "getRotationX", "setRotationX", "rotationY", "getRotationY", "setRotationY", "rotationZ", "getRotationZ", "setRotationZ", "scaleX", "getScaleX", "setScaleX", "scaleY", "getScaleY", "setScaleY", "shadowElevation", "getShadowElevation", "setShadowElevation", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "()Landroidx/compose/ui/graphics/Shape;", "setShape", "(Landroidx/compose/ui/graphics/Shape;)V", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc", "setSize-uvyYCjk", "spotShadowColor", "getSpotShadowColor-0d7_KjU", "setSpotShadowColor-8_81llA", "transformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "getTransformOrigin-SzJe1aQ", "setTransformOrigin-__ExYCQ", "translationX", "getTranslationX", "setTranslationX", "translationY", "getTranslationY", "setTranslationY", "reset", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReusableGraphicsLayerScope implements GraphicsLayerScope {
    private boolean clip;
    private RenderEffect renderEffect;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float shadowElevation;
    private float translationX;
    private float translationY;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float alpha = 1.0f;
    private long ambientShadowColor = GraphicsLayerScopeKt.getDefaultShadowColor();
    private long spotShadowColor = GraphicsLayerScopeKt.getDefaultShadowColor();
    private float cameraDistance = 8.0f;
    private long transformOrigin = TransformOrigin.INSTANCE.m3023getCenterSzJe1aQ();
    private Shape shape = RectangleShapeKt.getRectangleShape();
    private int compositingStrategy = CompositingStrategy.INSTANCE.m2724getAutoNrFUSI();
    private long size = Size.INSTANCE.m2477getUnspecifiedNHjbRc();
    private Density graphicsDensity = DensityKt.Density$default(1.0f, 0.0f, 2, null);

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getAlpha() {
        return this.alpha;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getAmbientShadowColor-0d7_KjU, reason: from getter */
    public long getAmbientShadowColor() {
        return this.ambientShadowColor;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getCameraDistance() {
        return this.cameraDistance;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public boolean getClip() {
        return this.clip;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getCompositingStrategy--NrFUSI, reason: from getter */
    public int getCompositingStrategy() {
        return this.compositingStrategy;
    }

    /* renamed from: getGraphicsDensity$ui_release, reason: from getter */
    public final Density getGraphicsDensity() {
        return this.graphicsDensity;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public RenderEffect getRenderEffect() {
        return this.renderEffect;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getRotationX() {
        return this.rotationX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getRotationY() {
        return this.rotationY;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getRotationZ() {
        return this.rotationZ;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getScaleX() {
        return this.scaleX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getScaleY() {
        return this.scaleY;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getShadowElevation() {
        return this.shadowElevation;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public Shape getShape() {
        return this.shape;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getSize-NH-jbRc, reason: from getter */
    public long getSize() {
        return this.size;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getSpotShadowColor-0d7_KjU, reason: from getter */
    public long getSpotShadowColor() {
        return this.spotShadowColor;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getTransformOrigin-SzJe1aQ, reason: from getter */
    public long getTransformOrigin() {
        return this.transformOrigin;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getTranslationX() {
        return this.translationX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getTranslationY() {
        return this.translationY;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setAlpha(float f) {
        this.alpha = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setAmbientShadowColor-8_81llA */
    public void mo2825setAmbientShadowColor8_81llA(long j) {
        this.ambientShadowColor = j;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setCameraDistance(float f) {
        this.cameraDistance = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setClip(boolean z) {
        this.clip = z;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setCompositingStrategy-aDBOjCE */
    public void mo2826setCompositingStrategyaDBOjCE(int i) {
        this.compositingStrategy = i;
    }

    public final void setGraphicsDensity$ui_release(Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.graphicsDensity = density;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRenderEffect(RenderEffect renderEffect) {
        this.renderEffect = renderEffect;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRotationX(float f) {
        this.rotationX = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRotationY(float f) {
        this.rotationY = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRotationZ(float f) {
        this.rotationZ = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setScaleX(float f) {
        this.scaleX = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setScaleY(float f) {
        this.scaleY = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setShadowElevation(float f) {
        this.shadowElevation = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setShape(Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }

    /* renamed from: setSize-uvyYCjk, reason: not valid java name */
    public void m2944setSizeuvyYCjk(long j) {
        this.size = j;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setSpotShadowColor-8_81llA */
    public void mo2827setSpotShadowColor8_81llA(long j) {
        this.spotShadowColor = j;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setTransformOrigin-__ExYCQ */
    public void mo2828setTransformOrigin__ExYCQ(long j) {
        this.transformOrigin = j;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setTranslationX(float f) {
        this.translationX = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setTranslationY(float f) {
        this.translationY = f;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.graphicsDensity.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.graphicsDensity.getFontScale();
    }

    public final void reset() {
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        setShadowElevation(0.0f);
        mo2825setAmbientShadowColor8_81llA(GraphicsLayerScopeKt.getDefaultShadowColor());
        mo2827setSpotShadowColor8_81llA(GraphicsLayerScopeKt.getDefaultShadowColor());
        setRotationX(0.0f);
        setRotationY(0.0f);
        setRotationZ(0.0f);
        setCameraDistance(8.0f);
        mo2828setTransformOrigin__ExYCQ(TransformOrigin.INSTANCE.m3023getCenterSzJe1aQ());
        setShape(RectangleShapeKt.getRectangleShape());
        setClip(false);
        setRenderEffect(null);
        mo2826setCompositingStrategyaDBOjCE(CompositingStrategy.INSTANCE.m2724getAutoNrFUSI());
        m2944setSizeuvyYCjk(Size.INSTANCE.m2477getUnspecifiedNHjbRc());
    }
}
