package org.webrtc;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import io.sentry.protocol.ViewHierarchyNode;
import org.webrtc.EglBase;
import org.webrtc.EglRenderer;
import org.webrtc.RendererCommon;

/* loaded from: classes3.dex */
public class SurfaceViewRenderer extends SurfaceView implements SurfaceHolder.Callback, VideoSink, RendererCommon.RendererEvents {
    private static final String TAG = "SurfaceViewRenderer";
    private final SurfaceEglRenderer eglRenderer;
    private boolean enableFixedSize;
    private RendererCommon.RendererEvents rendererEvents;
    private final String resourceName;
    private int rotatedFrameHeight;
    private int rotatedFrameWidth;
    private int surfaceHeight;
    private int surfaceWidth;
    private final RendererCommon.VideoLayoutMeasure videoLayoutMeasure;

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    public SurfaceViewRenderer(Context context) {
        super(context);
        this.videoLayoutMeasure = new RendererCommon.VideoLayoutMeasure();
        String resourceName = getResourceName();
        this.resourceName = resourceName;
        SurfaceEglRenderer surfaceEglRenderer = new SurfaceEglRenderer(resourceName);
        this.eglRenderer = surfaceEglRenderer;
        getHolder().addCallback(this);
        getHolder().addCallback(surfaceEglRenderer);
    }

    public SurfaceViewRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.videoLayoutMeasure = new RendererCommon.VideoLayoutMeasure();
        String resourceName = getResourceName();
        this.resourceName = resourceName;
        SurfaceEglRenderer surfaceEglRenderer = new SurfaceEglRenderer(resourceName);
        this.eglRenderer = surfaceEglRenderer;
        getHolder().addCallback(this);
        getHolder().addCallback(surfaceEglRenderer);
    }

    public void init(EglBase.Context context, RendererCommon.RendererEvents rendererEvents) {
        init(context, rendererEvents, EglBase.CONFIG_PLAIN, new GlRectDrawer());
    }

    public void init(EglBase.Context context, RendererCommon.RendererEvents rendererEvents, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        ThreadUtils.checkIsOnMainThread();
        this.rendererEvents = rendererEvents;
        this.rotatedFrameWidth = 0;
        this.rotatedFrameHeight = 0;
        this.eglRenderer.init(context, this, iArr, glDrawer);
    }

    public void release() {
        this.eglRenderer.release();
    }

    public void addFrameListener(EglRenderer.FrameListener frameListener, float f, RendererCommon.GlDrawer glDrawer) {
        this.eglRenderer.addFrameListener(frameListener, f, glDrawer);
    }

    public void addFrameListener(EglRenderer.FrameListener frameListener, float f) {
        this.eglRenderer.addFrameListener(frameListener, f);
    }

    public void removeFrameListener(EglRenderer.FrameListener frameListener) {
        this.eglRenderer.removeFrameListener(frameListener);
    }

    public void setEnableHardwareScaler(boolean z) {
        ThreadUtils.checkIsOnMainThread();
        this.enableFixedSize = z;
        updateSurfaceSize();
    }

    public void setMirror(boolean z) {
        this.eglRenderer.setMirror(z);
    }

    public void setScalingType(RendererCommon.ScalingType scalingType) {
        ThreadUtils.checkIsOnMainThread();
        this.videoLayoutMeasure.setScalingType(scalingType);
        requestLayout();
    }

    public void setScalingType(RendererCommon.ScalingType scalingType, RendererCommon.ScalingType scalingType2) {
        ThreadUtils.checkIsOnMainThread();
        this.videoLayoutMeasure.setScalingType(scalingType, scalingType2);
        requestLayout();
    }

    public void setFpsReduction(float f) {
        this.eglRenderer.setFpsReduction(f);
    }

    public void disableFpsReduction() {
        this.eglRenderer.disableFpsReduction();
    }

    public void pauseVideo() {
        this.eglRenderer.pauseVideo();
    }

    @Override // org.webrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        this.eglRenderer.onFrame(videoFrame);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        ThreadUtils.checkIsOnMainThread();
        Point measure = this.videoLayoutMeasure.measure(i, i2, this.rotatedFrameWidth, this.rotatedFrameHeight);
        setMeasuredDimension(measure.x, measure.y);
        logD("onMeasure(). New size: " + measure.x + ViewHierarchyNode.JsonKeys.X + measure.y);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.setLayoutAspectRatio((i3 - i) / (i4 - i2));
        updateSurfaceSize();
    }

    private void updateSurfaceSize() {
        ThreadUtils.checkIsOnMainThread();
        if (this.enableFixedSize && this.rotatedFrameWidth != 0 && this.rotatedFrameHeight != 0 && getWidth() != 0 && getHeight() != 0) {
            float width = getWidth() / getHeight();
            int i = this.rotatedFrameWidth;
            int i2 = this.rotatedFrameHeight;
            if (i / i2 > width) {
                i = (int) (i2 * width);
            } else {
                i2 = (int) (i / width);
            }
            int min = Math.min(getWidth(), i);
            int min2 = Math.min(getHeight(), i2);
            logD("updateSurfaceSize. Layout size: " + getWidth() + ViewHierarchyNode.JsonKeys.X + getHeight() + ", frame size: " + this.rotatedFrameWidth + ViewHierarchyNode.JsonKeys.X + this.rotatedFrameHeight + ", requested surface size: " + min + ViewHierarchyNode.JsonKeys.X + min2 + ", old surface size: " + this.surfaceWidth + ViewHierarchyNode.JsonKeys.X + this.surfaceHeight);
            if (min == this.surfaceWidth && min2 == this.surfaceHeight) {
                return;
            }
            this.surfaceWidth = min;
            this.surfaceHeight = min2;
            getHolder().setFixedSize(min, min2);
            return;
        }
        this.surfaceHeight = 0;
        this.surfaceWidth = 0;
        getHolder().setSizeFromLayout();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        this.surfaceHeight = 0;
        this.surfaceWidth = 0;
        updateSurfaceSize();
    }

    private String getResourceName() {
        try {
            return getResources().getResourceEntryName(getId());
        } catch (Resources.NotFoundException unused) {
            return "";
        }
    }

    public void clearImage() {
        this.eglRenderer.clearImage();
    }

    @Override // org.webrtc.RendererCommon.RendererEvents
    public void onFirstFrameRendered() {
        RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
        if (rendererEvents != null) {
            rendererEvents.onFirstFrameRendered();
        }
    }

    @Override // org.webrtc.RendererCommon.RendererEvents
    public void onFrameResolutionChanged(final int i, int i2, int i3) {
        RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
        if (rendererEvents != null) {
            rendererEvents.onFrameResolutionChanged(i, i2, i3);
        }
        final int i4 = (i3 == 0 || i3 == 180) ? i : i2;
        if (i3 == 0 || i3 == 180) {
            i = i2;
        }
        postOrRun(new Runnable() { // from class: org.webrtc.SurfaceViewRenderer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SurfaceViewRenderer.this.m7447lambda$onFrameResolutionChanged$0$orgwebrtcSurfaceViewRenderer(i4, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onFrameResolutionChanged$0$org-webrtc-SurfaceViewRenderer, reason: not valid java name */
    public /* synthetic */ void m7447lambda$onFrameResolutionChanged$0$orgwebrtcSurfaceViewRenderer(int i, int i2) {
        this.rotatedFrameWidth = i;
        this.rotatedFrameHeight = i2;
        updateSurfaceSize();
        requestLayout();
    }

    private void postOrRun(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    private void logD(String str) {
        Logging.d(TAG, this.resourceName + ": " + str);
    }
}
