package org.webrtc;

import android.media.MediaRecorder;

/* loaded from: classes3.dex */
public interface CameraVideoCapturer extends VideoCapturer {

    /* loaded from: classes3.dex */
    public interface CameraEventsHandler {
        void onCameraClosed();

        void onCameraDisconnected();

        void onCameraError(String str);

        void onCameraFreezed(String str);

        void onCameraOpening(String str);

        void onFirstFrameAvailable();
    }

    /* loaded from: classes3.dex */
    public interface CameraSwitchHandler {
        void onCameraSwitchDone(boolean z);

        void onCameraSwitchError(String str);
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface MediaRecorderHandler {
        void onMediaRecorderError(String str);

        void onMediaRecorderSuccess();
    }

    void switchCamera(CameraSwitchHandler cameraSwitchHandler);

    void switchCamera(CameraSwitchHandler cameraSwitchHandler, String str);

    @Deprecated
    default void addMediaRecorderToCamera(MediaRecorder mediaRecorder, MediaRecorderHandler mediaRecorderHandler) {
        throw new UnsupportedOperationException("Deprecated and not implemented.");
    }

    @Deprecated
    default void removeMediaRecorderFromCamera(MediaRecorderHandler mediaRecorderHandler) {
        throw new UnsupportedOperationException("Deprecated and not implemented.");
    }

    /* loaded from: classes3.dex */
    public static class CameraStatistics {
        private static final int CAMERA_FREEZE_REPORT_TIMOUT_MS = 4000;
        private static final int CAMERA_OBSERVER_PERIOD_MS = 2000;
        private static final String TAG = "CameraStatistics";
        private final Runnable cameraObserver;
        private final CameraEventsHandler eventsHandler;
        private int frameCount;
        private int freezePeriodCount;
        private final SurfaceTextureHelper surfaceTextureHelper;

        static /* synthetic */ int access$104(CameraStatistics cameraStatistics) {
            int i = cameraStatistics.freezePeriodCount + 1;
            cameraStatistics.freezePeriodCount = i;
            return i;
        }

        public CameraStatistics(SurfaceTextureHelper surfaceTextureHelper, CameraEventsHandler cameraEventsHandler) {
            Runnable runnable = new Runnable() { // from class: org.webrtc.CameraVideoCapturer.CameraStatistics.1
                @Override // java.lang.Runnable
                public void run() {
                    Logging.d(CameraStatistics.TAG, "Camera fps: " + Math.round((CameraStatistics.this.frameCount * 1000.0f) / 2000.0f) + ".");
                    if (CameraStatistics.this.frameCount != 0) {
                        CameraStatistics.this.freezePeriodCount = 0;
                    } else {
                        CameraStatistics.access$104(CameraStatistics.this);
                        if (CameraStatistics.this.freezePeriodCount * 2000 >= CameraStatistics.CAMERA_FREEZE_REPORT_TIMOUT_MS && CameraStatistics.this.eventsHandler != null) {
                            Logging.e(CameraStatistics.TAG, "Camera freezed.");
                            if (CameraStatistics.this.surfaceTextureHelper.isTextureInUse()) {
                                CameraStatistics.this.eventsHandler.onCameraFreezed("Camera failure. Client must return video buffers.");
                                return;
                            } else {
                                CameraStatistics.this.eventsHandler.onCameraFreezed("Camera failure.");
                                return;
                            }
                        }
                    }
                    CameraStatistics.this.frameCount = 0;
                    CameraStatistics.this.surfaceTextureHelper.getHandler().postDelayed(this, 2000L);
                }
            };
            this.cameraObserver = runnable;
            if (surfaceTextureHelper == null) {
                throw new IllegalArgumentException("SurfaceTextureHelper is null");
            }
            this.surfaceTextureHelper = surfaceTextureHelper;
            this.eventsHandler = cameraEventsHandler;
            this.frameCount = 0;
            this.freezePeriodCount = 0;
            surfaceTextureHelper.getHandler().postDelayed(runnable, 2000L);
        }

        private void checkThread() {
            if (Thread.currentThread() != this.surfaceTextureHelper.getHandler().getLooper().getThread()) {
                throw new IllegalStateException("Wrong thread");
            }
        }

        public void addFrame() {
            checkThread();
            this.frameCount++;
        }

        public void release() {
            this.surfaceTextureHelper.getHandler().removeCallbacks(this.cameraObserver);
        }
    }
}
