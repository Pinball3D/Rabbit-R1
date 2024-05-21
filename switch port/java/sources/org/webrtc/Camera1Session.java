package org.webrtc;

import android.content.Context;
import android.hardware.Camera;
import android.os.Handler;
import android.os.SystemClock;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.webrtc.Camera1Session;
import org.webrtc.CameraEnumerationAndroid;
import org.webrtc.CameraSession;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Camera1Session implements CameraSession {
    private static final int NUMBER_OF_CAPTURE_BUFFERS = 3;
    private static final String TAG = "Camera1Session";
    private final Context applicationContext;
    private final Camera camera;
    private final int cameraId;
    private final Handler cameraThreadHandler;
    private final CameraEnumerationAndroid.CaptureFormat captureFormat;
    private final boolean captureToTexture;
    private final long constructionTimeNs;
    private final CameraSession.Events events;
    private boolean firstFrameReported;
    private final Camera.CameraInfo info;
    private SessionState state;
    private final SurfaceTextureHelper surfaceTextureHelper;
    private static final Histogram camera1StartTimeMsHistogram = Histogram.createCounts("WebRTC.Android.Camera1.StartTimeMs", 1, 10000, 50);
    private static final Histogram camera1StopTimeMsHistogram = Histogram.createCounts("WebRTC.Android.Camera1.StopTimeMs", 1, 10000, 50);
    private static final Histogram camera1ResolutionHistogram = Histogram.createEnumeration("WebRTC.Android.Camera1.Resolution", CameraEnumerationAndroid.COMMON_RESOLUTIONS.size());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum SessionState {
        RUNNING,
        STOPPED
    }

    public static void create(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, boolean z, Context context, SurfaceTextureHelper surfaceTextureHelper, int i, int i2, int i3, int i4) {
        long nanoTime = System.nanoTime();
        Logging.d(TAG, "Open camera " + i);
        events.onCameraOpening();
        try {
            Camera open = Camera.open(i);
            if (open == null) {
                createSessionCallback.onFailure(CameraSession.FailureType.ERROR, "android.hardware.Camera.open returned null for camera id = " + i);
                return;
            }
            try {
                open.setPreviewTexture(surfaceTextureHelper.getSurfaceTexture());
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i, cameraInfo);
                try {
                    Camera.Parameters parameters = open.getParameters();
                    CameraEnumerationAndroid.CaptureFormat findClosestCaptureFormat = findClosestCaptureFormat(parameters, i2, i3, i4);
                    updateCameraParameters(open, parameters, findClosestCaptureFormat, findClosestPictureSize(parameters, i2, i3), z);
                    if (!z) {
                        int frameSize = findClosestCaptureFormat.frameSize();
                        for (int i5 = 0; i5 < 3; i5++) {
                            open.addCallbackBuffer(ByteBuffer.allocateDirect(frameSize).array());
                        }
                    }
                    open.setDisplayOrientation(0);
                    createSessionCallback.onDone(new Camera1Session(events, z, context, surfaceTextureHelper, i, open, cameraInfo, findClosestCaptureFormat, nanoTime));
                } catch (RuntimeException e) {
                    open.release();
                    createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e.getMessage());
                }
            } catch (IOException | RuntimeException e2) {
                open.release();
                createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e2.getMessage());
            }
        } catch (RuntimeException e3) {
            createSessionCallback.onFailure(CameraSession.FailureType.ERROR, e3.getMessage());
        }
    }

    private static void updateCameraParameters(Camera camera, Camera.Parameters parameters, CameraEnumerationAndroid.CaptureFormat captureFormat, Size size, boolean z) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        parameters.setPreviewFpsRange(captureFormat.framerate.min, captureFormat.framerate.max);
        parameters.setPreviewSize(captureFormat.width, captureFormat.height);
        parameters.setPictureSize(size.width, size.height);
        if (!z) {
            Objects.requireNonNull(captureFormat);
            parameters.setPreviewFormat(17);
        }
        if (parameters.isVideoStabilizationSupported()) {
            parameters.setVideoStabilization(true);
        }
        if (supportedFocusModes.contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
        }
        camera.setParameters(parameters);
    }

    private static CameraEnumerationAndroid.CaptureFormat findClosestCaptureFormat(Camera.Parameters parameters, int i, int i2, int i3) {
        List<CameraEnumerationAndroid.CaptureFormat.FramerateRange> convertFramerates = Camera1Enumerator.convertFramerates(parameters.getSupportedPreviewFpsRange());
        Logging.d(TAG, "Available fps ranges: " + convertFramerates);
        CameraEnumerationAndroid.CaptureFormat.FramerateRange closestSupportedFramerateRange = CameraEnumerationAndroid.getClosestSupportedFramerateRange(convertFramerates, i3);
        Size closestSupportedSize = CameraEnumerationAndroid.getClosestSupportedSize(Camera1Enumerator.convertSizes(parameters.getSupportedPreviewSizes()), i, i2);
        CameraEnumerationAndroid.reportCameraResolution(camera1ResolutionHistogram, closestSupportedSize);
        return new CameraEnumerationAndroid.CaptureFormat(closestSupportedSize.width, closestSupportedSize.height, closestSupportedFramerateRange);
    }

    private static Size findClosestPictureSize(Camera.Parameters parameters, int i, int i2) {
        return CameraEnumerationAndroid.getClosestSupportedSize(Camera1Enumerator.convertSizes(parameters.getSupportedPictureSizes()), i, i2);
    }

    private Camera1Session(CameraSession.Events events, boolean z, Context context, SurfaceTextureHelper surfaceTextureHelper, int i, Camera camera, Camera.CameraInfo cameraInfo, CameraEnumerationAndroid.CaptureFormat captureFormat, long j) {
        Logging.d(TAG, "Create new camera1 session on camera " + i);
        this.cameraThreadHandler = new Handler();
        this.events = events;
        this.captureToTexture = z;
        this.applicationContext = context;
        this.surfaceTextureHelper = surfaceTextureHelper;
        this.cameraId = i;
        this.camera = camera;
        this.info = cameraInfo;
        this.captureFormat = captureFormat;
        this.constructionTimeNs = j;
        surfaceTextureHelper.setTextureSize(captureFormat.width, captureFormat.height);
        startCapturing();
    }

    @Override // org.webrtc.CameraSession
    public void stop() {
        Logging.d(TAG, "Stop camera1 session on camera " + this.cameraId);
        checkIsOnCameraThread();
        if (this.state != SessionState.STOPPED) {
            long nanoTime = System.nanoTime();
            stopInternal();
            camera1StopTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime));
        }
    }

    private void startCapturing() {
        Logging.d(TAG, "Start capturing");
        checkIsOnCameraThread();
        this.state = SessionState.RUNNING;
        this.camera.setErrorCallback(new Camera.ErrorCallback() { // from class: org.webrtc.Camera1Session.1
            @Override // android.hardware.Camera.ErrorCallback
            public void onError(int i, Camera camera) {
                String str = i == 100 ? "Camera server died!" : "Camera error: " + i;
                Logging.e(Camera1Session.TAG, str);
                Camera1Session.this.stopInternal();
                if (i == 2) {
                    Camera1Session.this.events.onCameraDisconnected(Camera1Session.this);
                } else {
                    Camera1Session.this.events.onCameraError(Camera1Session.this, str);
                }
            }
        });
        if (this.captureToTexture) {
            listenForTextureFrames();
        } else {
            listenForBytebufferFrames();
        }
        try {
            this.camera.startPreview();
        } catch (RuntimeException e) {
            stopInternal();
            this.events.onCameraError(this, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal() {
        Logging.d(TAG, "Stop internal");
        checkIsOnCameraThread();
        if (this.state == SessionState.STOPPED) {
            Logging.d(TAG, "Camera is already stopped");
            return;
        }
        this.state = SessionState.STOPPED;
        this.surfaceTextureHelper.stopListening();
        this.camera.stopPreview();
        this.camera.release();
        this.events.onCameraClosed(this);
        Logging.d(TAG, "Stop done");
    }

    private void listenForTextureFrames() {
        this.surfaceTextureHelper.startListening(new VideoSink() { // from class: org.webrtc.Camera1Session$$ExternalSyntheticLambda0
            @Override // org.webrtc.VideoSink
            public final void onFrame(VideoFrame videoFrame) {
                Camera1Session.this.m7425lambda$listenForTextureFrames$0$orgwebrtcCamera1Session(videoFrame);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$listenForTextureFrames$0$org-webrtc-Camera1Session, reason: not valid java name */
    public /* synthetic */ void m7425lambda$listenForTextureFrames$0$orgwebrtcCamera1Session(VideoFrame videoFrame) {
        checkIsOnCameraThread();
        if (this.state != SessionState.RUNNING) {
            Logging.d(TAG, "Texture frame captured but camera is no longer running.");
            return;
        }
        if (!this.firstFrameReported) {
            camera1StartTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.constructionTimeNs));
            this.firstFrameReported = true;
        }
        VideoFrame videoFrame2 = new VideoFrame(CameraSession.createTextureBufferWithModifiedTransformMatrix((TextureBufferImpl) videoFrame.getBuffer(), this.info.facing == 1, 0), getFrameOrientation(), videoFrame.getTimestampNs());
        this.events.onFrameCaptured(this, videoFrame2);
        videoFrame2.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.webrtc.Camera1Session$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Camera.PreviewCallback {
        AnonymousClass2() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(final byte[] bArr, Camera camera) {
            Camera1Session.this.checkIsOnCameraThread();
            if (camera == Camera1Session.this.camera) {
                if (Camera1Session.this.state != SessionState.RUNNING) {
                    Logging.d(Camera1Session.TAG, "Bytebuffer frame captured but camera is no longer running.");
                    return;
                }
                long nanos = TimeUnit.MILLISECONDS.toNanos(SystemClock.elapsedRealtime());
                if (!Camera1Session.this.firstFrameReported) {
                    Camera1Session.camera1StartTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - Camera1Session.this.constructionTimeNs));
                    Camera1Session.this.firstFrameReported = true;
                }
                VideoFrame videoFrame = new VideoFrame(new NV21Buffer(bArr, Camera1Session.this.captureFormat.width, Camera1Session.this.captureFormat.height, new Runnable() { // from class: org.webrtc.Camera1Session$2$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Camera1Session.AnonymousClass2.this.m7427lambda$onPreviewFrame$1$orgwebrtcCamera1Session$2(bArr);
                    }
                }), Camera1Session.this.getFrameOrientation(), nanos);
                Camera1Session.this.events.onFrameCaptured(Camera1Session.this, videoFrame);
                videoFrame.release();
                return;
            }
            Logging.e(Camera1Session.TAG, "Callback from a different camera. This should never happen.");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onPreviewFrame$1$org-webrtc-Camera1Session$2, reason: not valid java name */
        public /* synthetic */ void m7427lambda$onPreviewFrame$1$orgwebrtcCamera1Session$2(final byte[] bArr) {
            Camera1Session.this.cameraThreadHandler.post(new Runnable() { // from class: org.webrtc.Camera1Session$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Camera1Session.AnonymousClass2.this.m7426lambda$onPreviewFrame$0$orgwebrtcCamera1Session$2(bArr);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onPreviewFrame$0$org-webrtc-Camera1Session$2, reason: not valid java name */
        public /* synthetic */ void m7426lambda$onPreviewFrame$0$orgwebrtcCamera1Session$2(byte[] bArr) {
            if (Camera1Session.this.state == SessionState.RUNNING) {
                Camera1Session.this.camera.addCallbackBuffer(bArr);
            }
        }
    }

    private void listenForBytebufferFrames() {
        this.camera.setPreviewCallbackWithBuffer(new AnonymousClass2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFrameOrientation() {
        int deviceOrientation = CameraSession.getDeviceOrientation(this.applicationContext);
        if (this.info.facing == 0) {
            deviceOrientation = 360 - deviceOrientation;
        }
        return (this.info.orientation + deviceOrientation) % 360;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsOnCameraThread() {
        if (Thread.currentThread() != this.cameraThreadHandler.getLooper().getThread()) {
            throw new IllegalStateException("Wrong thread");
        }
    }
}
