package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GraphicsLayerScope.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R-\u0010\b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8V@VX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0005\"\u0004\b\u0010\u0010\u0007R \u0010\u0011\u001a\u00020\u00128fX¦\u000e¢\u0006\u0012\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R-\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a8V@VX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR(\u0010!\u001a\u0004\u0018\u00010 2\b\u0010\u001f\u001a\u0004\u0018\u00010 8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0018\u0010&\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b'\u0010\u0005\"\u0004\b(\u0010\u0007R\u0018\u0010)\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b*\u0010\u0005\"\u0004\b+\u0010\u0007R\u0018\u0010,\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b-\u0010\u0005\"\u0004\b.\u0010\u0007R\u0018\u0010/\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b0\u0010\u0005\"\u0004\b1\u0010\u0007R\u0018\u00102\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b3\u0010\u0005\"\u0004\b4\u0010\u0007R\u0018\u00105\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b6\u0010\u0005\"\u0004\b7\u0010\u0007R\u0018\u00108\u001a\u000209X¦\u000e¢\u0006\f\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001d\u0010>\u001a\u00020?8VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b@\u0010\u000bR-\u0010A\u001a\u00020\t2\u0006\u0010A\u001a\u00020\t8V@VX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u001a\u0004\bB\u0010\u000b\"\u0004\bC\u0010\rR!\u0010D\u001a\u00020EX¦\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u001a\u0004\bF\u0010\u000b\"\u0004\bG\u0010\rR\u0018\u0010H\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\bI\u0010\u0005\"\u0004\bJ\u0010\u0007R\u0018\u0010K\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\bL\u0010\u0005\"\u0004\bM\u0010\u0007ø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006NÀ\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Landroidx/compose/ui/unit/Density;", ViewHierarchyNode.JsonKeys.ALPHA, "", "getAlpha", "()F", "setAlpha", "(F)V", "ambientShadowColor", "Landroidx/compose/ui/graphics/Color;", "getAmbientShadowColor-0d7_KjU", "()J", "setAmbientShadowColor-8_81llA", "(J)V", "cameraDistance", "getCameraDistance", "setCameraDistance", "clip", "", "getClip$annotations", "()V", "getClip", "()Z", "setClip", "(Z)V", "compositingStrategy", "Landroidx/compose/ui/graphics/CompositingStrategy;", "getCompositingStrategy--NrFUSI", "()I", "setCompositingStrategy-aDBOjCE", "(I)V", "<anonymous parameter 0>", "Landroidx/compose/ui/graphics/RenderEffect;", "renderEffect", "getRenderEffect", "()Landroidx/compose/ui/graphics/RenderEffect;", "setRenderEffect", "(Landroidx/compose/ui/graphics/RenderEffect;)V", "rotationX", "getRotationX", "setRotationX", "rotationY", "getRotationY", "setRotationY", "rotationZ", "getRotationZ", "setRotationZ", "scaleX", "getScaleX", "setScaleX", "scaleY", "getScaleY", "setScaleY", "shadowElevation", "getShadowElevation", "setShadowElevation", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "()Landroidx/compose/ui/graphics/Shape;", "setShape", "(Landroidx/compose/ui/graphics/Shape;)V", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc", "spotShadowColor", "getSpotShadowColor-0d7_KjU", "setSpotShadowColor-8_81llA", "transformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "getTransformOrigin-SzJe1aQ", "setTransformOrigin-__ExYCQ", "translationX", "getTranslationX", "setTranslationX", "translationY", "getTranslationY", "setTranslationY", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface GraphicsLayerScope extends Density {
    float getAlpha();

    float getCameraDistance();

    boolean getClip();

    default RenderEffect getRenderEffect() {
        return null;
    }

    float getRotationX();

    float getRotationY();

    float getRotationZ();

    float getScaleX();

    float getScaleY();

    float getShadowElevation();

    Shape getShape();

    /* renamed from: getTransformOrigin-SzJe1aQ, reason: not valid java name */
    long mo2824getTransformOriginSzJe1aQ();

    float getTranslationX();

    float getTranslationY();

    void setAlpha(float f);

    /* renamed from: setAmbientShadowColor-8_81llA, reason: not valid java name */
    default void mo2825setAmbientShadowColor8_81llA(long j) {
    }

    void setCameraDistance(float f);

    void setClip(boolean z);

    /* renamed from: setCompositingStrategy-aDBOjCE, reason: not valid java name */
    default void mo2826setCompositingStrategyaDBOjCE(int i) {
    }

    default void setRenderEffect(RenderEffect renderEffect) {
    }

    void setRotationX(float f);

    void setRotationY(float f);

    void setRotationZ(float f);

    void setScaleX(float f);

    void setScaleY(float f);

    void setShadowElevation(float f);

    void setShape(Shape shape);

    /* renamed from: setSpotShadowColor-8_81llA, reason: not valid java name */
    default void mo2827setSpotShadowColor8_81llA(long j) {
    }

    /* renamed from: setTransformOrigin-__ExYCQ, reason: not valid java name */
    void mo2828setTransformOrigin__ExYCQ(long j);

    void setTranslationX(float f);

    void setTranslationY(float f);

    /* compiled from: GraphicsLayerScope.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getClip$annotations() {
        }

        @Deprecated
        /* renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m2833roundToPxR2X_6o(GraphicsLayerScope graphicsLayerScope, long j) {
            return GraphicsLayerScope.super.mo328roundToPxR2X_6o(j);
        }

        @Deprecated
        /* renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m2834roundToPx0680j_4(GraphicsLayerScope graphicsLayerScope, float f) {
            return GraphicsLayerScope.super.mo329roundToPx0680j_4(f);
        }

        @Deprecated
        /* renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m2838toDpGaN1DYA(GraphicsLayerScope graphicsLayerScope, long j) {
            return GraphicsLayerScope.super.mo330toDpGaN1DYA(j);
        }

        @Deprecated
        /* renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m2839toDpu2uoSUM(GraphicsLayerScope graphicsLayerScope, float f) {
            return GraphicsLayerScope.super.mo331toDpu2uoSUM(f);
        }

        @Deprecated
        /* renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m2840toDpu2uoSUM(GraphicsLayerScope graphicsLayerScope, int i) {
            return GraphicsLayerScope.super.mo332toDpu2uoSUM(i);
        }

        @Deprecated
        /* renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m2841toDpSizekrfVVM(GraphicsLayerScope graphicsLayerScope, long j) {
            return GraphicsLayerScope.super.mo333toDpSizekrfVVM(j);
        }

        @Deprecated
        /* renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m2842toPxR2X_6o(GraphicsLayerScope graphicsLayerScope, long j) {
            return GraphicsLayerScope.super.mo334toPxR2X_6o(j);
        }

        @Deprecated
        /* renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m2843toPx0680j_4(GraphicsLayerScope graphicsLayerScope, float f) {
            return GraphicsLayerScope.super.mo335toPx0680j_4(f);
        }

        @Deprecated
        public static Rect toRect(GraphicsLayerScope graphicsLayerScope, DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return GraphicsLayerScope.super.toRect(receiver);
        }

        @Deprecated
        /* renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m2844toSizeXkaWNTQ(GraphicsLayerScope graphicsLayerScope, long j) {
            return GraphicsLayerScope.super.mo336toSizeXkaWNTQ(j);
        }

        @Deprecated
        /* renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m2845toSp0xMU5do(GraphicsLayerScope graphicsLayerScope, float f) {
            return GraphicsLayerScope.super.mo337toSp0xMU5do(f);
        }

        @Deprecated
        /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m2846toSpkPz2Gy4(GraphicsLayerScope graphicsLayerScope, float f) {
            return GraphicsLayerScope.super.mo338toSpkPz2Gy4(f);
        }

        @Deprecated
        /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m2847toSpkPz2Gy4(GraphicsLayerScope graphicsLayerScope, int i) {
            return GraphicsLayerScope.super.mo339toSpkPz2Gy4(i);
        }

        @Deprecated
        /* renamed from: getAmbientShadowColor-0d7_KjU, reason: not valid java name */
        public static long m2829getAmbientShadowColor0d7_KjU(GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.mo2820getAmbientShadowColor0d7_KjU();
        }

        @Deprecated
        /* renamed from: setAmbientShadowColor-8_81llA, reason: not valid java name */
        public static void m2835setAmbientShadowColor8_81llA(GraphicsLayerScope graphicsLayerScope, long j) {
            GraphicsLayerScope.super.mo2825setAmbientShadowColor8_81llA(j);
        }

        @Deprecated
        /* renamed from: getSpotShadowColor-0d7_KjU, reason: not valid java name */
        public static long m2832getSpotShadowColor0d7_KjU(GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.mo2823getSpotShadowColor0d7_KjU();
        }

        @Deprecated
        /* renamed from: setSpotShadowColor-8_81llA, reason: not valid java name */
        public static void m2837setSpotShadowColor8_81llA(GraphicsLayerScope graphicsLayerScope, long j) {
            GraphicsLayerScope.super.mo2827setSpotShadowColor8_81llA(j);
        }

        @Deprecated
        public static RenderEffect getRenderEffect(GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.getRenderEffect();
        }

        @Deprecated
        public static void setRenderEffect(GraphicsLayerScope graphicsLayerScope, RenderEffect renderEffect) {
            GraphicsLayerScope.super.setRenderEffect(renderEffect);
        }

        @Deprecated
        /* renamed from: getCompositingStrategy--NrFUSI, reason: not valid java name */
        public static int m2830getCompositingStrategyNrFUSI(GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.mo2821getCompositingStrategyNrFUSI();
        }

        @Deprecated
        /* renamed from: setCompositingStrategy-aDBOjCE, reason: not valid java name */
        public static void m2836setCompositingStrategyaDBOjCE(GraphicsLayerScope graphicsLayerScope, int i) {
            GraphicsLayerScope.super.mo2826setCompositingStrategyaDBOjCE(i);
        }

        @Deprecated
        /* renamed from: getSize-NH-jbRc, reason: not valid java name */
        public static long m2831getSizeNHjbRc(GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.mo2822getSizeNHjbRc();
        }
    }

    /* renamed from: getAmbientShadowColor-0d7_KjU, reason: not valid java name */
    default long mo2820getAmbientShadowColor0d7_KjU() {
        return GraphicsLayerScopeKt.getDefaultShadowColor();
    }

    /* renamed from: getSpotShadowColor-0d7_KjU, reason: not valid java name */
    default long mo2823getSpotShadowColor0d7_KjU() {
        return GraphicsLayerScopeKt.getDefaultShadowColor();
    }

    /* renamed from: getCompositingStrategy--NrFUSI, reason: not valid java name */
    default int mo2821getCompositingStrategyNrFUSI() {
        return CompositingStrategy.INSTANCE.m2724getAutoNrFUSI();
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    default long mo2822getSizeNHjbRc() {
        return Size.INSTANCE.m2477getUnspecifiedNHjbRc();
    }
}
