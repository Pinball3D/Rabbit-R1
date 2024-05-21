package org.webrtc;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Range;
import android.view.Surface;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.webrtc.Camera2Session;
import org.webrtc.CameraEnumerationAndroid;
import org.webrtc.CameraSession;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Camera2Session implements CameraSession {
    private static final String TAG = "Camera2Session";
    private final Context applicationContext;
    private final CameraSession.CreateSessionCallback callback;
    private CameraCharacteristics cameraCharacteristics;
    private CameraDevice cameraDevice;
    private final String cameraId;
    private final CameraManager cameraManager;
    private int cameraOrientation;
    private final Handler cameraThreadHandler;
    private CameraEnumerationAndroid.CaptureFormat captureFormat;
    private CameraCaptureSession captureSession;
    private final long constructionTimeNs;
    private final CameraSession.Events events;
    private boolean firstFrameReported;
    private int fpsUnitFactor;
    private final int framerate;
    private final int height;
    private boolean isCameraFrontFacing;
    private SessionState state = SessionState.RUNNING;
    private Surface surface;
    private final SurfaceTextureHelper surfaceTextureHelper;
    private final int width;
    private static final Histogram camera2StartTimeMsHistogram = Histogram.createCounts("WebRTC.Android.Camera2.StartTimeMs", 1, 10000, 50);
    private static final Histogram camera2StopTimeMsHistogram = Histogram.createCounts("WebRTC.Android.Camera2.StopTimeMs", 1, 10000, 50);
    private static final Histogram camera2ResolutionHistogram = Histogram.createEnumeration("WebRTC.Android.Camera2.Resolution", CameraEnumerationAndroid.COMMON_RESOLUTIONS.size());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum SessionState {
        RUNNING,
        STOPPED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class CameraStateCallback extends CameraDevice.StateCallback {
        private CameraStateCallback() {
        }

        private String getErrorDescription(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "Unknown camera error: " + i : "Camera service has encountered a fatal error." : "Camera device has encountered a fatal error." : "Camera device could not be opened due to a device policy." : "Camera device could not be opened because there are too many other open camera devices." : "Camera device is in use already.";
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Camera2Session.this.checkIsOnCameraThread();
            boolean z = Camera2Session.this.captureSession == null && Camera2Session.this.state != SessionState.STOPPED;
            Camera2Session.this.state = SessionState.STOPPED;
            Camera2Session.this.stopInternal();
            if (z) {
                Camera2Session.this.callback.onFailure(CameraSession.FailureType.DISCONNECTED, "Camera disconnected / evicted.");
            } else {
                Camera2Session.this.events.onCameraDisconnected(Camera2Session.this);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            Camera2Session.this.checkIsOnCameraThread();
            Camera2Session.this.reportError(getErrorDescription(i));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Camera2Session.this.checkIsOnCameraThread();
            Logging.d(Camera2Session.TAG, "Camera opened.");
            Camera2Session.this.cameraDevice = cameraDevice;
            Camera2Session.this.surfaceTextureHelper.setTextureSize(Camera2Session.this.captureFormat.width, Camera2Session.this.captureFormat.height);
            Camera2Session.this.surface = new Surface(Camera2Session.this.surfaceTextureHelper.getSurfaceTexture());
            try {
                cameraDevice.createCaptureSession(Arrays.asList(Camera2Session.this.surface), new CaptureSessionCallback(), Camera2Session.this.cameraThreadHandler);
            } catch (CameraAccessException e) {
                Camera2Session.this.reportError("Failed to create capture session. " + e);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            Camera2Session.this.checkIsOnCameraThread();
            Logging.d(Camera2Session.TAG, "Camera device closed.");
            Camera2Session.this.events.onCameraClosed(Camera2Session.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class CaptureSessionCallback extends CameraCaptureSession.StateCallback {
        private CaptureSessionCallback() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            Camera2Session.this.checkIsOnCameraThread();
            cameraCaptureSession.close();
            Camera2Session.this.reportError("Failed to configure capture session.");
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            Camera2Session.this.checkIsOnCameraThread();
            Logging.d(Camera2Session.TAG, "Camera capture session configured.");
            Camera2Session.this.captureSession = cameraCaptureSession;
            try {
                CaptureRequest.Builder createCaptureRequest = Camera2Session.this.cameraDevice.createCaptureRequest(3);
                createCaptureRequest.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, new Range(Integer.valueOf(Camera2Session.this.captureFormat.framerate.min / Camera2Session.this.fpsUnitFactor), Integer.valueOf(Camera2Session.this.captureFormat.framerate.max / Camera2Session.this.fpsUnitFactor)));
                createCaptureRequest.set(CaptureRequest.CONTROL_AE_MODE, 1);
                createCaptureRequest.set(CaptureRequest.CONTROL_AE_LOCK, false);
                chooseStabilizationMode(createCaptureRequest);
                chooseFocusMode(createCaptureRequest);
                createCaptureRequest.addTarget(Camera2Session.this.surface);
                cameraCaptureSession.setRepeatingRequest(createCaptureRequest.build(), new CameraCaptureCallback(), Camera2Session.this.cameraThreadHandler);
                Camera2Session.this.surfaceTextureHelper.startListening(new VideoSink() { // from class: org.webrtc.Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0
                    @Override // org.webrtc.VideoSink
                    public final void onFrame(VideoFrame videoFrame) {
                        Camera2Session.CaptureSessionCallback.this.m7428x8bd2b057(videoFrame);
                    }
                });
                Logging.d(Camera2Session.TAG, "Camera device successfully started.");
                Camera2Session.this.callback.onDone(Camera2Session.this);
            } catch (CameraAccessException e) {
                Camera2Session.this.reportError("Failed to start capture request. " + e);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onConfigured$0$org-webrtc-Camera2Session$CaptureSessionCallback, reason: not valid java name */
        public /* synthetic */ void m7428x8bd2b057(VideoFrame videoFrame) {
            Camera2Session.this.checkIsOnCameraThread();
            if (Camera2Session.this.state == SessionState.RUNNING) {
                if (!Camera2Session.this.firstFrameReported) {
                    Camera2Session.this.firstFrameReported = true;
                    Camera2Session.camera2StartTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - Camera2Session.this.constructionTimeNs));
                }
                VideoFrame videoFrame2 = new VideoFrame(CameraSession.createTextureBufferWithModifiedTransformMatrix((TextureBufferImpl) videoFrame.getBuffer(), Camera2Session.this.isCameraFrontFacing, -Camera2Session.this.cameraOrientation), Camera2Session.this.getFrameOrientation(), videoFrame.getTimestampNs());
                Camera2Session.this.events.onFrameCaptured(Camera2Session.this, videoFrame2);
                videoFrame2.release();
                return;
            }
            Logging.d(Camera2Session.TAG, "Texture frame captured but camera is no longer running.");
        }

        private void chooseStabilizationMode(CaptureRequest.Builder builder) {
            int[] iArr = (int[]) Camera2Session.this.cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION);
            if (iArr != null) {
                for (int i : iArr) {
                    if (i == 1) {
                        builder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, 1);
                        builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 0);
                        Logging.d(Camera2Session.TAG, "Using optical stabilization.");
                        return;
                    }
                }
            }
            for (int i2 : (int[]) Camera2Session.this.cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)) {
                if (i2 == 1) {
                    builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 1);
                    builder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, 0);
                    Logging.d(Camera2Session.TAG, "Using video stabilization.");
                    return;
                }
            }
            Logging.d(Camera2Session.TAG, "Stabilization not available.");
        }

        private void chooseFocusMode(CaptureRequest.Builder builder) {
            for (int i : (int[]) Camera2Session.this.cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES)) {
                if (i == 3) {
                    builder.set(CaptureRequest.CONTROL_AF_MODE, 3);
                    Logging.d(Camera2Session.TAG, "Using continuous video auto-focus.");
                    return;
                }
            }
            Logging.d(Camera2Session.TAG, "Auto-focus is not available.");
        }
    }

    /* loaded from: classes3.dex */
    private static class CameraCaptureCallback extends CameraCaptureSession.CaptureCallback {
        private CameraCaptureCallback() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            Logging.d(Camera2Session.TAG, "Capture failed: " + captureFailure);
        }
    }

    public static void create(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, Context context, CameraManager cameraManager, SurfaceTextureHelper surfaceTextureHelper, String str, int i, int i2, int i3) {
        new Camera2Session(createSessionCallback, events, context, cameraManager, surfaceTextureHelper, str, i, i2, i3);
    }

    private Camera2Session(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, Context context, CameraManager cameraManager, SurfaceTextureHelper surfaceTextureHelper, String str, int i, int i2, int i3) {
        Logging.d(TAG, "Create new camera2 session on camera " + str);
        this.constructionTimeNs = System.nanoTime();
        this.cameraThreadHandler = new Handler();
        this.callback = createSessionCallback;
        this.events = events;
        this.applicationContext = context;
        this.cameraManager = cameraManager;
        this.surfaceTextureHelper = surfaceTextureHelper;
        this.cameraId = str;
        this.width = i;
        this.height = i2;
        this.framerate = i3;
        start();
    }

    private void start() {
        checkIsOnCameraThread();
        Logging.d(TAG, "start");
        try {
            CameraCharacteristics cameraCharacteristics = this.cameraManager.getCameraCharacteristics(this.cameraId);
            this.cameraCharacteristics = cameraCharacteristics;
            this.cameraOrientation = ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
            this.isCameraFrontFacing = ((Integer) this.cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == 0;
            findCaptureFormat();
            openCamera();
        } catch (CameraAccessException e) {
            reportError("getCameraCharacteristics(): " + e.getMessage());
        }
    }

    private void findCaptureFormat() {
        checkIsOnCameraThread();
        Range[] rangeArr = (Range[]) this.cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        int fpsUnitFactor = Camera2Enumerator.getFpsUnitFactor(rangeArr);
        this.fpsUnitFactor = fpsUnitFactor;
        List<CameraEnumerationAndroid.CaptureFormat.FramerateRange> convertFramerates = Camera2Enumerator.convertFramerates(rangeArr, fpsUnitFactor);
        List<Size> supportedSizes = Camera2Enumerator.getSupportedSizes(this.cameraCharacteristics);
        Logging.d(TAG, "Available preview sizes: " + supportedSizes);
        Logging.d(TAG, "Available fps ranges: " + convertFramerates);
        if (convertFramerates.isEmpty() || supportedSizes.isEmpty()) {
            reportError("No supported capture formats.");
            return;
        }
        CameraEnumerationAndroid.CaptureFormat.FramerateRange closestSupportedFramerateRange = CameraEnumerationAndroid.getClosestSupportedFramerateRange(convertFramerates, this.framerate);
        Size closestSupportedSize = CameraEnumerationAndroid.getClosestSupportedSize(supportedSizes, this.width, this.height);
        CameraEnumerationAndroid.reportCameraResolution(camera2ResolutionHistogram, closestSupportedSize);
        this.captureFormat = new CameraEnumerationAndroid.CaptureFormat(closestSupportedSize.width, closestSupportedSize.height, closestSupportedFramerateRange);
        Logging.d(TAG, "Using capture format: " + this.captureFormat);
    }

    private void openCamera() {
        checkIsOnCameraThread();
        Logging.d(TAG, "Opening camera " + this.cameraId);
        this.events.onCameraOpening();
        try {
            this.cameraManager.openCamera(this.cameraId, new CameraStateCallback(), this.cameraThreadHandler);
        } catch (CameraAccessException e) {
            reportError("Failed to open camera: " + e);
        }
    }

    @Override // org.webrtc.CameraSession
    public void stop() {
        Logging.d(TAG, "Stop camera2 session on camera " + this.cameraId);
        checkIsOnCameraThread();
        if (this.state != SessionState.STOPPED) {
            long nanoTime = System.nanoTime();
            this.state = SessionState.STOPPED;
            stopInternal();
            camera2StopTimeMsHistogram.addSample((int) TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal() {
        Logging.d(TAG, "Stop internal");
        checkIsOnCameraThread();
        this.surfaceTextureHelper.stopListening();
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.captureSession = null;
        }
        Surface surface = this.surface;
        if (surface != null) {
            surface.release();
            this.surface = null;
        }
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        Logging.d(TAG, "Stop done");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportError(String str) {
        checkIsOnCameraThread();
        Logging.e(TAG, "Error: " + str);
        boolean z = this.captureSession == null && this.state != SessionState.STOPPED;
        this.state = SessionState.STOPPED;
        stopInternal();
        if (z) {
            this.callback.onFailure(CameraSession.FailureType.ERROR, str);
        } else {
            this.events.onCameraError(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFrameOrientation() {
        int deviceOrientation = CameraSession.getDeviceOrientation(this.applicationContext);
        if (!this.isCameraFrontFacing) {
            deviceOrientation = 360 - deviceOrientation;
        }
        return (this.cameraOrientation + deviceOrientation) % 360;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsOnCameraThread() {
        if (Thread.currentThread() != this.cameraThreadHandler.getLooper().getThread()) {
            throw new IllegalStateException("Wrong thread");
        }
    }
}
