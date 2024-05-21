package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RenderNodeApi29.android.kt */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010b\u001a\u00020cH\u0016J\u0010\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020fH\u0016J\b\u0010g\u001a\u00020hH\u0016J\u0010\u0010i\u001a\u00020c2\u0006\u0010j\u001a\u00020kH\u0016J\u0010\u0010l\u001a\u00020c2\u0006\u0010j\u001a\u00020kH\u0016J\r\u0010m\u001a\u00020\u0017H\u0000¢\u0006\u0002\bnJ\r\u0010o\u001a\u00020\u0017H\u0000¢\u0006\u0002\bpJ\u0010\u0010q\u001a\u00020c2\u0006\u0010r\u001a\u00020\fH\u0016J\u0010\u0010s\u001a\u00020c2\u0006\u0010r\u001a\u00020\fH\u0016J.\u0010t\u001a\u00020c2\u0006\u0010u\u001a\u00020v2\b\u0010w\u001a\u0004\u0018\u00010x2\u0012\u0010y\u001a\u000e\u0012\u0004\u0012\u00020{\u0012\u0004\u0012\u00020c0zH\u0016J\u0010\u0010|\u001a\u00020\u00172\u0006\u0010m\u001a\u00020\u0017H\u0016J\u0012\u0010}\u001a\u00020c2\b\u0010~\u001a\u0004\u0018\u00010\u007fH\u0016J)\u0010\u0080\u0001\u001a\u00020\u00172\u0006\u0010/\u001a\u00020\f2\u0006\u0010T\u001a\u00020\f2\u0006\u0010@\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\fH\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR$\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bR$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00178V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00178V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR-\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020 8V@VX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR\u0014\u0010'\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010\u001aR\u0014\u0010)\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u000fR\u0019\u0010+\u001a\u00020 X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010,R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R$\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b4\u0010\t\"\u0004\b5\u0010\u000bR$\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b7\u0010\t\"\u0004\b8\u0010\u000bR(\u00109\u001a\u0004\u0018\u00010.2\b\u0010\u0005\u001a\u0004\u0018\u00010.8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u000e\u0010>\u001a\u00020?X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010@\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\u000fR$\u0010B\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bC\u0010\t\"\u0004\bD\u0010\u000bR$\u0010E\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bF\u0010\t\"\u0004\bG\u0010\u000bR$\u0010H\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bI\u0010\t\"\u0004\bJ\u0010\u000bR$\u0010K\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bL\u0010\t\"\u0004\bM\u0010\u000bR$\u0010N\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bO\u0010\t\"\u0004\bP\u0010\u000bR$\u0010Q\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bR\u0010\u000f\"\u0004\bS\u0010\u0011R\u0014\u0010T\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010\u000fR$\u0010V\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bW\u0010\t\"\u0004\bX\u0010\u000bR$\u0010Y\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bZ\u0010\t\"\u0004\b[\u0010\u000bR\u0014\u0010\\\u001a\u00020]8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b^\u0010_R\u0014\u0010`\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\ba\u0010\u000f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0081\u0001"}, d2 = {"Landroidx/compose/ui/platform/RenderNodeApi29;", "Landroidx/compose/ui/platform/DeviceRenderNode;", "ownerView", "Landroidx/compose/ui/platform/AndroidComposeView;", "(Landroidx/compose/ui/platform/AndroidComposeView;)V", "value", "", ViewHierarchyNode.JsonKeys.ALPHA, "getAlpha", "()F", "setAlpha", "(F)V", "", "ambientShadowColor", "getAmbientShadowColor", "()I", "setAmbientShadowColor", "(I)V", "bottom", "getBottom", "cameraDistance", "getCameraDistance", "setCameraDistance", "", "clipToBounds", "getClipToBounds", "()Z", "setClipToBounds", "(Z)V", "clipToOutline", "getClipToOutline", "setClipToOutline", "Landroidx/compose/ui/graphics/CompositingStrategy;", "compositingStrategy", "getCompositingStrategy--NrFUSI", "setCompositingStrategy-aDBOjCE", "elevation", "getElevation", "setElevation", "hasDisplayList", "getHasDisplayList", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "internalCompositingStrategy", "I", "internalRenderEffect", "Landroidx/compose/ui/graphics/RenderEffect;", "left", "getLeft", "getOwnerView", "()Landroidx/compose/ui/platform/AndroidComposeView;", "pivotX", "getPivotX", "setPivotX", "pivotY", "getPivotY", "setPivotY", "renderEffect", "getRenderEffect", "()Landroidx/compose/ui/graphics/RenderEffect;", "setRenderEffect", "(Landroidx/compose/ui/graphics/RenderEffect;)V", "renderNode", "Landroid/graphics/RenderNode;", "right", "getRight", "rotationX", "getRotationX", "setRotationX", "rotationY", "getRotationY", "setRotationY", "rotationZ", "getRotationZ", "setRotationZ", "scaleX", "getScaleX", "setScaleX", "scaleY", "getScaleY", "setScaleY", "spotShadowColor", "getSpotShadowColor", "setSpotShadowColor", "top", "getTop", "translationX", "getTranslationX", "setTranslationX", "translationY", "getTranslationY", "setTranslationY", "uniqueId", "", "getUniqueId", "()J", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "discardDisplayList", "", "drawInto", "canvas", "Landroid/graphics/Canvas;", "dumpRenderNodeData", "Landroidx/compose/ui/platform/DeviceRenderNodeData;", "getInverseMatrix", "matrix", "Landroid/graphics/Matrix;", "getMatrix", "hasOverlappingRendering", "hasOverlappingRendering$ui_release", "isUsingCompositingLayer", "isUsingCompositingLayer$ui_release", "offsetLeftAndRight", "offset", "offsetTopAndBottom", "record", "canvasHolder", "Landroidx/compose/ui/graphics/CanvasHolder;", "clipPath", "Landroidx/compose/ui/graphics/Path;", "drawBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Canvas;", "setHasOverlappingRendering", "setOutline", "outline", "Landroid/graphics/Outline;", "setPosition", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RenderNodeApi29 implements DeviceRenderNode {
    private int internalCompositingStrategy;
    private RenderEffect internalRenderEffect;
    private final AndroidComposeView ownerView;
    private final RenderNode renderNode;

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    /* renamed from: getCompositingStrategy--NrFUSI, reason: from getter */
    public int getInternalCompositingStrategy() {
        return this.internalCompositingStrategy;
    }

    public final AndroidComposeView getOwnerView() {
        return this.ownerView;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    /* renamed from: getRenderEffect, reason: from getter */
    public RenderEffect getInternalRenderEffect() {
        return this.internalRenderEffect;
    }

    public RenderNodeApi29(AndroidComposeView ownerView) {
        Intrinsics.checkNotNullParameter(ownerView, "ownerView");
        this.ownerView = ownerView;
        this.renderNode = new RenderNode("Compose");
        this.internalCompositingStrategy = CompositingStrategy.INSTANCE.m2724getAutoNrFUSI();
    }

    public final boolean isUsingCompositingLayer$ui_release() {
        return this.renderNode.getUseCompositingLayer();
    }

    public final boolean hasOverlappingRendering$ui_release() {
        return this.renderNode.hasOverlappingRendering();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public long getUniqueId() {
        return this.renderNode.getUniqueId();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getLeft() {
        return this.renderNode.getLeft();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getTop() {
        return this.renderNode.getTop();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getRight() {
        return this.renderNode.getRight();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getBottom() {
        return this.renderNode.getBottom();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getWidth() {
        return this.renderNode.getWidth();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getHeight() {
        return this.renderNode.getHeight();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getScaleX() {
        return this.renderNode.getScaleX();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setScaleX(float f) {
        this.renderNode.setScaleX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getScaleY() {
        return this.renderNode.getScaleY();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setScaleY(float f) {
        this.renderNode.setScaleY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getTranslationX() {
        return this.renderNode.getTranslationX();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setTranslationX(float f) {
        this.renderNode.setTranslationX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getTranslationY() {
        return this.renderNode.getTranslationY();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setTranslationY(float f) {
        this.renderNode.setTranslationY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getElevation() {
        return this.renderNode.getElevation();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setElevation(float f) {
        this.renderNode.setElevation(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getAmbientShadowColor() {
        return this.renderNode.getAmbientShadowColor();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setAmbientShadowColor(int i) {
        this.renderNode.setAmbientShadowColor(i);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getSpotShadowColor() {
        return this.renderNode.getSpotShadowColor();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setSpotShadowColor(int i) {
        this.renderNode.setSpotShadowColor(i);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getRotationZ() {
        return this.renderNode.getRotationZ();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setRotationZ(float f) {
        this.renderNode.setRotationZ(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getRotationX() {
        return this.renderNode.getRotationX();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setRotationX(float f) {
        this.renderNode.setRotationX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getRotationY() {
        return this.renderNode.getRotationY();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setRotationY(float f) {
        this.renderNode.setRotationY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getCameraDistance() {
        return this.renderNode.getCameraDistance();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setCameraDistance(float f) {
        this.renderNode.setCameraDistance(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getPivotX() {
        return this.renderNode.getPivotX();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setPivotX(float f) {
        this.renderNode.setPivotX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getPivotY() {
        return this.renderNode.getPivotY();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setPivotY(float f) {
        this.renderNode.setPivotY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean getClipToOutline() {
        return this.renderNode.getClipToOutline();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setClipToOutline(boolean z) {
        this.renderNode.setClipToOutline(z);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean getClipToBounds() {
        return this.renderNode.getClipToBounds();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setClipToBounds(boolean z) {
        this.renderNode.setClipToBounds(z);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float getAlpha() {
        return this.renderNode.getAlpha();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setAlpha(float f) {
        this.renderNode.setAlpha(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setRenderEffect(RenderEffect renderEffect) {
        this.internalRenderEffect = renderEffect;
        RenderNodeApi29VerificationHelper.INSTANCE.setRenderEffect(this.renderNode, renderEffect);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    /* renamed from: setCompositingStrategy-aDBOjCE */
    public void mo4193setCompositingStrategyaDBOjCE(int i) {
        RenderNode renderNode = this.renderNode;
        if (CompositingStrategy.m2720equalsimpl0(i, CompositingStrategy.INSTANCE.m2726getOffscreenNrFUSI())) {
            renderNode.setUseCompositingLayer(true, null);
            renderNode.setHasOverlappingRendering(true);
        } else if (CompositingStrategy.m2720equalsimpl0(i, CompositingStrategy.INSTANCE.m2725getModulateAlphaNrFUSI())) {
            renderNode.setUseCompositingLayer(false, null);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, null);
            renderNode.setHasOverlappingRendering(true);
        }
        this.internalCompositingStrategy = i;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean getHasDisplayList() {
        return this.renderNode.hasDisplayList();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void setOutline(Outline outline) {
        this.renderNode.setOutline(outline);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean setPosition(int left, int top, int right, int bottom) {
        return this.renderNode.setPosition(left, top, right, bottom);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void offsetLeftAndRight(int offset) {
        this.renderNode.offsetLeftAndRight(offset);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void offsetTopAndBottom(int offset) {
        this.renderNode.offsetTopAndBottom(offset);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void record(CanvasHolder canvasHolder, Path clipPath, Function1<? super Canvas, Unit> drawBlock) {
        Intrinsics.checkNotNullParameter(canvasHolder, "canvasHolder");
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        RecordingCanvas beginRecording = this.renderNode.beginRecording();
        Intrinsics.checkNotNullExpressionValue(beginRecording, "renderNode.beginRecording()");
        android.graphics.Canvas internalCanvas = canvasHolder.getAndroidCanvas().getInternalCanvas();
        canvasHolder.getAndroidCanvas().setInternalCanvas(beginRecording);
        AndroidCanvas androidCanvas = canvasHolder.getAndroidCanvas();
        if (clipPath != null) {
            androidCanvas.save();
            Canvas.m2610clipPathmtrdDE$default(androidCanvas, clipPath, 0, 2, null);
        }
        drawBlock.invoke(androidCanvas);
        if (clipPath != null) {
            androidCanvas.restore();
        }
        canvasHolder.getAndroidCanvas().setInternalCanvas(internalCanvas);
        this.renderNode.endRecording();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void getMatrix(Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.renderNode.getMatrix(matrix);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void getInverseMatrix(Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.renderNode.getInverseMatrix(matrix);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void drawInto(android.graphics.Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawRenderNode(this.renderNode);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean setHasOverlappingRendering(boolean hasOverlappingRendering) {
        return this.renderNode.setHasOverlappingRendering(hasOverlappingRendering);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public DeviceRenderNodeData dumpRenderNodeData() {
        return new DeviceRenderNodeData(this.renderNode.getUniqueId(), this.renderNode.getLeft(), this.renderNode.getTop(), this.renderNode.getRight(), this.renderNode.getBottom(), this.renderNode.getWidth(), this.renderNode.getHeight(), this.renderNode.getScaleX(), this.renderNode.getScaleY(), this.renderNode.getTranslationX(), this.renderNode.getTranslationY(), this.renderNode.getElevation(), this.renderNode.getAmbientShadowColor(), this.renderNode.getSpotShadowColor(), this.renderNode.getRotationZ(), this.renderNode.getRotationX(), this.renderNode.getRotationY(), this.renderNode.getCameraDistance(), this.renderNode.getPivotX(), this.renderNode.getPivotY(), this.renderNode.getClipToOutline(), this.renderNode.getClipToBounds(), this.renderNode.getAlpha(), this.internalRenderEffect, this.internalCompositingStrategy, null);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void discardDisplayList() {
        this.renderNode.discardDisplayList();
    }
}
