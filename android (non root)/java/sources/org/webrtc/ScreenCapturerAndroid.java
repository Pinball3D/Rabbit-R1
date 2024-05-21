package org.webrtc;

import android.content.Context;
import android.content.Intent;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.view.Surface;

/* loaded from: classes3.dex */
public class ScreenCapturerAndroid implements VideoCapturer, VideoSink {
    private static final int DISPLAY_FLAGS = 3;
    private static final int VIRTUAL_DISPLAY_DPI = 400;
    private CapturerObserver capturerObserver;
    private int height;
    private boolean isDisposed;
    private MediaProjection mediaProjection;
    private final MediaProjection.Callback mediaProjectionCallback;
    private MediaProjectionManager mediaProjectionManager;
    private final Intent mediaProjectionPermissionResultData;
    private long numCapturedFrames;
    private SurfaceTextureHelper surfaceTextureHelper;
    private VirtualDisplay virtualDisplay;
    private int width;

    public MediaProjection getMediaProjection() {
        return this.mediaProjection;
    }

    public long getNumCapturedFrames() {
        return this.numCapturedFrames;
    }

    @Override // org.webrtc.VideoCapturer
    public boolean isScreencast() {
        return true;
    }

    public ScreenCapturerAndroid(Intent intent, MediaProjection.Callback callback) {
        this.mediaProjectionPermissionResultData = intent;
        this.mediaProjectionCallback = callback;
    }

    private void checkNotDisposed() {
        if (this.isDisposed) {
            throw new RuntimeException("capturer is disposed.");
        }
    }

    @Override // org.webrtc.VideoCapturer
    public synchronized void initialize(SurfaceTextureHelper surfaceTextureHelper, Context context, CapturerObserver capturerObserver) {
        checkNotDisposed();
        if (capturerObserver == null) {
            throw new RuntimeException("capturerObserver not set.");
        }
        this.capturerObserver = capturerObserver;
        if (surfaceTextureHelper == null) {
            throw new RuntimeException("surfaceTextureHelper not set.");
        }
        this.surfaceTextureHelper = surfaceTextureHelper;
        this.mediaProjectionManager = (MediaProjectionManager) context.getSystemService("media_projection");
    }

    @Override // org.webrtc.VideoCapturer
    public synchronized void startCapture(int i, int i2, int i3) {
        checkNotDisposed();
        this.width = i;
        this.height = i2;
        MediaProjection mediaProjection = this.mediaProjectionManager.getMediaProjection(-1, this.mediaProjectionPermissionResultData);
        this.mediaProjection = mediaProjection;
        mediaProjection.registerCallback(this.mediaProjectionCallback, this.surfaceTextureHelper.getHandler());
        createVirtualDisplay();
        this.capturerObserver.onCapturerStarted(true);
        this.surfaceTextureHelper.startListening(this);
    }

    @Override // org.webrtc.VideoCapturer
    public synchronized void stopCapture() {
        checkNotDisposed();
        ThreadUtils.invokeAtFrontUninterruptibly(this.surfaceTextureHelper.getHandler(), new Runnable() { // from class: org.webrtc.ScreenCapturerAndroid.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenCapturerAndroid.this.surfaceTextureHelper.stopListening();
                ScreenCapturerAndroid.this.capturerObserver.onCapturerStopped();
                if (ScreenCapturerAndroid.this.virtualDisplay != null) {
                    ScreenCapturerAndroid.this.virtualDisplay.release();
                    ScreenCapturerAndroid.this.virtualDisplay = null;
                }
                if (ScreenCapturerAndroid.this.mediaProjection != null) {
                    ScreenCapturerAndroid.this.mediaProjection.unregisterCallback(ScreenCapturerAndroid.this.mediaProjectionCallback);
                    ScreenCapturerAndroid.this.mediaProjection.stop();
                    ScreenCapturerAndroid.this.mediaProjection = null;
                }
            }
        });
    }

    @Override // org.webrtc.VideoCapturer
    public synchronized void dispose() {
        this.isDisposed = true;
    }

    @Override // org.webrtc.VideoCapturer
    public synchronized void changeCaptureFormat(int i, int i2, int i3) {
        checkNotDisposed();
        this.width = i;
        this.height = i2;
        if (this.virtualDisplay == null) {
            return;
        }
        ThreadUtils.invokeAtFrontUninterruptibly(this.surfaceTextureHelper.getHandler(), new Runnable() { // from class: org.webrtc.ScreenCapturerAndroid.2
            @Override // java.lang.Runnable
            public void run() {
                ScreenCapturerAndroid.this.virtualDisplay.release();
                ScreenCapturerAndroid.this.createVirtualDisplay();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createVirtualDisplay() {
        this.surfaceTextureHelper.setTextureSize(this.width, this.height);
        this.virtualDisplay = this.mediaProjection.createVirtualDisplay("WebRTC_ScreenCapture", this.width, this.height, VIRTUAL_DISPLAY_DPI, 3, new Surface(this.surfaceTextureHelper.getSurfaceTexture()), null, null);
    }

    @Override // org.webrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        this.numCapturedFrames++;
        this.capturerObserver.onFrameCaptured(videoFrame);
    }
}
