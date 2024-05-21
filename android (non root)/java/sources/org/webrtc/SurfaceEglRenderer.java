package org.webrtc;

import android.view.SurfaceHolder;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import org.webrtc.EglBase;
import org.webrtc.RendererCommon;

/* loaded from: classes3.dex */
public class SurfaceEglRenderer extends EglRenderer implements SurfaceHolder.Callback {
    private static final String TAG = "SurfaceEglRenderer";
    private int frameRotation;
    private boolean isFirstFrameRendered;
    private boolean isRenderingPaused;
    private final Object layoutLock;
    private RendererCommon.RendererEvents rendererEvents;
    private int rotatedFrameHeight;
    private int rotatedFrameWidth;

    public SurfaceEglRenderer(String str) {
        super(str);
        this.layoutLock = new Object();
    }

    public void init(EglBase.Context context, RendererCommon.RendererEvents rendererEvents, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        ThreadUtils.checkIsOnMainThread();
        this.rendererEvents = rendererEvents;
        synchronized (this.layoutLock) {
            this.isFirstFrameRendered = false;
            this.rotatedFrameWidth = 0;
            this.rotatedFrameHeight = 0;
            this.frameRotation = 0;
        }
        super.init(context, iArr, glDrawer);
    }

    @Override // org.webrtc.EglRenderer
    public void init(EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        init(context, (RendererCommon.RendererEvents) null, iArr, glDrawer);
    }

    @Override // org.webrtc.EglRenderer
    public void setFpsReduction(float f) {
        synchronized (this.layoutLock) {
            this.isRenderingPaused = f == 0.0f;
        }
        super.setFpsReduction(f);
    }

    @Override // org.webrtc.EglRenderer
    public void disableFpsReduction() {
        synchronized (this.layoutLock) {
            this.isRenderingPaused = false;
        }
        super.disableFpsReduction();
    }

    @Override // org.webrtc.EglRenderer
    public void pauseVideo() {
        synchronized (this.layoutLock) {
            this.isRenderingPaused = true;
        }
        super.pauseVideo();
    }

    @Override // org.webrtc.EglRenderer, org.webrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        updateFrameDimensionsAndReportEvents(videoFrame);
        super.onFrame(videoFrame);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        createEglSurface(surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        Objects.requireNonNull(countDownLatch);
        releaseEglSurface(new Runnable() { // from class: org.webrtc.SurfaceEglRenderer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                countDownLatch.countDown();
            }
        });
        ThreadUtils.awaitUninterruptibly(countDownLatch);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        ThreadUtils.checkIsOnMainThread();
        logD("surfaceChanged: format: " + i + " size: " + i2 + ViewHierarchyNode.JsonKeys.X + i3);
    }

    private void updateFrameDimensionsAndReportEvents(VideoFrame videoFrame) {
        synchronized (this.layoutLock) {
            if (this.isRenderingPaused) {
                return;
            }
            if (!this.isFirstFrameRendered) {
                this.isFirstFrameRendered = true;
                logD("Reporting first rendered frame.");
                RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
                if (rendererEvents != null) {
                    rendererEvents.onFirstFrameRendered();
                }
            }
            if (this.rotatedFrameWidth != videoFrame.getRotatedWidth() || this.rotatedFrameHeight != videoFrame.getRotatedHeight() || this.frameRotation != videoFrame.getRotation()) {
                logD("Reporting frame resolution changed to " + videoFrame.getBuffer().getWidth() + ViewHierarchyNode.JsonKeys.X + videoFrame.getBuffer().getHeight() + " with rotation " + videoFrame.getRotation());
                RendererCommon.RendererEvents rendererEvents2 = this.rendererEvents;
                if (rendererEvents2 != null) {
                    rendererEvents2.onFrameResolutionChanged(videoFrame.getBuffer().getWidth(), videoFrame.getBuffer().getHeight(), videoFrame.getRotation());
                }
                this.rotatedFrameWidth = videoFrame.getRotatedWidth();
                this.rotatedFrameHeight = videoFrame.getRotatedHeight();
                this.frameRotation = videoFrame.getRotation();
            }
        }
    }

    private void logD(String str) {
        Logging.d(TAG, this.name + ": " + str);
    }
}
