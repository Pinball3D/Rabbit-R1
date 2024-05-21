package org.webrtc;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Arrays;
import java.util.List;
import org.webrtc.CameraSession;
import org.webrtc.CameraVideoCapturer;

/* loaded from: classes3.dex */
abstract class CameraCapturer implements CameraVideoCapturer {
    private static final int MAX_OPEN_CAMERA_ATTEMPTS = 3;
    private static final int OPEN_CAMERA_DELAY_MS = 500;
    private static final int OPEN_CAMERA_TIMEOUT = 10000;
    private static final String TAG = "CameraCapturer";
    private Context applicationContext;
    private final CameraEnumerator cameraEnumerator;
    private String cameraName;
    private CameraVideoCapturer.CameraStatistics cameraStatistics;
    private Handler cameraThreadHandler;
    private CapturerObserver capturerObserver;
    private CameraSession currentSession;
    private final CameraVideoCapturer.CameraEventsHandler eventsHandler;
    private boolean firstFrameObserved;
    private int framerate;
    private int height;
    private int openAttemptsRemaining;
    private String pendingCameraName;
    private boolean sessionOpening;
    private SurfaceTextureHelper surfaceHelper;
    private CameraVideoCapturer.CameraSwitchHandler switchEventsHandler;
    private final Handler uiThreadHandler;
    private int width;
    private final CameraSession.CreateSessionCallback createSessionCallback = new CameraSession.CreateSessionCallback() { // from class: org.webrtc.CameraCapturer.1
        @Override // org.webrtc.CameraSession.CreateSessionCallback
        public void onDone(CameraSession cameraSession) {
            CameraCapturer.this.checkIsOnCameraThread();
            Logging.d(CameraCapturer.TAG, "Create session done. Switch state: " + CameraCapturer.this.switchState);
            CameraCapturer.this.uiThreadHandler.removeCallbacks(CameraCapturer.this.openCameraTimeoutRunnable);
            synchronized (CameraCapturer.this.stateLock) {
                CameraCapturer.this.capturerObserver.onCapturerStarted(true);
                CameraCapturer.this.sessionOpening = false;
                CameraCapturer.this.currentSession = cameraSession;
                CameraCapturer.this.cameraStatistics = new CameraVideoCapturer.CameraStatistics(CameraCapturer.this.surfaceHelper, CameraCapturer.this.eventsHandler);
                CameraCapturer.this.firstFrameObserved = false;
                CameraCapturer.this.stateLock.notifyAll();
                if (CameraCapturer.this.switchState == SwitchState.IN_PROGRESS) {
                    CameraCapturer.this.switchState = SwitchState.IDLE;
                    if (CameraCapturer.this.switchEventsHandler != null) {
                        CameraCapturer.this.switchEventsHandler.onCameraSwitchDone(CameraCapturer.this.cameraEnumerator.isFrontFacing(CameraCapturer.this.cameraName));
                        CameraCapturer.this.switchEventsHandler = null;
                    }
                } else if (CameraCapturer.this.switchState == SwitchState.PENDING) {
                    String str = CameraCapturer.this.pendingCameraName;
                    CameraCapturer.this.pendingCameraName = null;
                    CameraCapturer.this.switchState = SwitchState.IDLE;
                    CameraCapturer cameraCapturer = CameraCapturer.this;
                    cameraCapturer.switchCameraInternal(cameraCapturer.switchEventsHandler, str);
                }
            }
        }

        @Override // org.webrtc.CameraSession.CreateSessionCallback
        public void onFailure(CameraSession.FailureType failureType, String str) {
            CameraCapturer.this.checkIsOnCameraThread();
            CameraCapturer.this.uiThreadHandler.removeCallbacks(CameraCapturer.this.openCameraTimeoutRunnable);
            synchronized (CameraCapturer.this.stateLock) {
                CameraCapturer.this.capturerObserver.onCapturerStarted(false);
                CameraCapturer.access$1710(CameraCapturer.this);
                if (CameraCapturer.this.openAttemptsRemaining <= 0) {
                    Logging.w(CameraCapturer.TAG, "Opening camera failed, passing: " + str);
                    CameraCapturer.this.sessionOpening = false;
                    CameraCapturer.this.stateLock.notifyAll();
                    if (CameraCapturer.this.switchState != SwitchState.IDLE) {
                        if (CameraCapturer.this.switchEventsHandler != null) {
                            CameraCapturer.this.switchEventsHandler.onCameraSwitchError(str);
                            CameraCapturer.this.switchEventsHandler = null;
                        }
                        CameraCapturer.this.switchState = SwitchState.IDLE;
                    }
                    if (failureType == CameraSession.FailureType.DISCONNECTED) {
                        CameraCapturer.this.eventsHandler.onCameraDisconnected();
                    } else {
                        CameraCapturer.this.eventsHandler.onCameraError(str);
                    }
                } else {
                    Logging.w(CameraCapturer.TAG, "Opening camera failed, retry: " + str);
                    CameraCapturer.this.createSessionInternal(500);
                }
            }
        }
    };
    private final CameraSession.Events cameraSessionEventsHandler = new CameraSession.Events() { // from class: org.webrtc.CameraCapturer.2
        @Override // org.webrtc.CameraSession.Events
        public void onCameraOpening() {
            CameraCapturer.this.checkIsOnCameraThread();
            synchronized (CameraCapturer.this.stateLock) {
                if (CameraCapturer.this.currentSession == null) {
                    CameraCapturer.this.eventsHandler.onCameraOpening(CameraCapturer.this.cameraName);
                } else {
                    Logging.w(CameraCapturer.TAG, "onCameraOpening while session was open.");
                }
            }
        }

        @Override // org.webrtc.CameraSession.Events
        public void onCameraError(CameraSession cameraSession, String str) {
            CameraCapturer.this.checkIsOnCameraThread();
            synchronized (CameraCapturer.this.stateLock) {
                if (cameraSession == CameraCapturer.this.currentSession) {
                    CameraCapturer.this.eventsHandler.onCameraError(str);
                    CameraCapturer.this.stopCapture();
                } else {
                    Logging.w(CameraCapturer.TAG, "onCameraError from another session: " + str);
                }
            }
        }

        @Override // org.webrtc.CameraSession.Events
        public void onCameraDisconnected(CameraSession cameraSession) {
            CameraCapturer.this.checkIsOnCameraThread();
            synchronized (CameraCapturer.this.stateLock) {
                if (cameraSession == CameraCapturer.this.currentSession) {
                    CameraCapturer.this.eventsHandler.onCameraDisconnected();
                    CameraCapturer.this.stopCapture();
                } else {
                    Logging.w(CameraCapturer.TAG, "onCameraDisconnected from another session.");
                }
            }
        }

        @Override // org.webrtc.CameraSession.Events
        public void onCameraClosed(CameraSession cameraSession) {
            CameraCapturer.this.checkIsOnCameraThread();
            synchronized (CameraCapturer.this.stateLock) {
                if (cameraSession == CameraCapturer.this.currentSession || CameraCapturer.this.currentSession == null) {
                    CameraCapturer.this.eventsHandler.onCameraClosed();
                } else {
                    Logging.d(CameraCapturer.TAG, "onCameraClosed from another session.");
                }
            }
        }

        @Override // org.webrtc.CameraSession.Events
        public void onFrameCaptured(CameraSession cameraSession, VideoFrame videoFrame) {
            CameraCapturer.this.checkIsOnCameraThread();
            synchronized (CameraCapturer.this.stateLock) {
                if (cameraSession == CameraCapturer.this.currentSession) {
                    if (!CameraCapturer.this.firstFrameObserved) {
                        CameraCapturer.this.eventsHandler.onFirstFrameAvailable();
                        CameraCapturer.this.firstFrameObserved = true;
                    }
                    CameraCapturer.this.cameraStatistics.addFrame();
                    CameraCapturer.this.capturerObserver.onFrameCaptured(videoFrame);
                    return;
                }
                Logging.w(CameraCapturer.TAG, "onFrameCaptured from another session.");
            }
        }
    };
    private final Runnable openCameraTimeoutRunnable = new Runnable() { // from class: org.webrtc.CameraCapturer.3
        @Override // java.lang.Runnable
        public void run() {
            CameraCapturer.this.eventsHandler.onCameraError("Camera failed to start within timeout.");
        }
    };
    private final Object stateLock = new Object();
    private SwitchState switchState = SwitchState.IDLE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum SwitchState {
        IDLE,
        PENDING,
        IN_PROGRESS
    }

    protected abstract void createCameraSession(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, Context context, SurfaceTextureHelper surfaceTextureHelper, String str, int i, int i2, int i3);

    @Override // org.webrtc.VideoCapturer
    public boolean isScreencast() {
        return false;
    }

    static /* synthetic */ int access$1710(CameraCapturer cameraCapturer) {
        int i = cameraCapturer.openAttemptsRemaining;
        cameraCapturer.openAttemptsRemaining = i - 1;
        return i;
    }

    public CameraCapturer(String str, CameraVideoCapturer.CameraEventsHandler cameraEventsHandler, CameraEnumerator cameraEnumerator) {
        this.eventsHandler = cameraEventsHandler == null ? new CameraVideoCapturer.CameraEventsHandler() { // from class: org.webrtc.CameraCapturer.4
            @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
            public void onCameraClosed() {
            }

            @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
            public void onCameraDisconnected() {
            }

            @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
            public void onCameraError(String str2) {
            }

            @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
            public void onCameraFreezed(String str2) {
            }

            @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
            public void onCameraOpening(String str2) {
            }

            @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
            public void onFirstFrameAvailable() {
            }
        } : cameraEventsHandler;
        this.cameraEnumerator = cameraEnumerator;
        this.cameraName = str;
        List asList = Arrays.asList(cameraEnumerator.getDeviceNames());
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        if (asList.isEmpty()) {
            throw new RuntimeException("No cameras attached.");
        }
        if (!asList.contains(this.cameraName)) {
            throw new IllegalArgumentException("Camera name " + this.cameraName + " does not match any known camera device.");
        }
    }

    @Override // org.webrtc.VideoCapturer
    public void initialize(SurfaceTextureHelper surfaceTextureHelper, Context context, CapturerObserver capturerObserver) {
        this.applicationContext = context;
        this.capturerObserver = capturerObserver;
        this.surfaceHelper = surfaceTextureHelper;
        this.cameraThreadHandler = surfaceTextureHelper.getHandler();
    }

    @Override // org.webrtc.VideoCapturer
    public void startCapture(int i, int i2, int i3) {
        Logging.d(TAG, "startCapture: " + i + ViewHierarchyNode.JsonKeys.X + i2 + "@" + i3);
        if (this.applicationContext == null) {
            throw new RuntimeException("CameraCapturer must be initialized before calling startCapture.");
        }
        synchronized (this.stateLock) {
            if (!this.sessionOpening && this.currentSession == null) {
                this.width = i;
                this.height = i2;
                this.framerate = i3;
                this.sessionOpening = true;
                this.openAttemptsRemaining = 3;
                createSessionInternal(0);
                return;
            }
            Logging.w(TAG, "Session already open");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createSessionInternal(int i) {
        this.uiThreadHandler.postDelayed(this.openCameraTimeoutRunnable, i + 10000);
        this.cameraThreadHandler.postDelayed(new Runnable() { // from class: org.webrtc.CameraCapturer.5
            @Override // java.lang.Runnable
            public void run() {
                CameraCapturer cameraCapturer = CameraCapturer.this;
                cameraCapturer.createCameraSession(cameraCapturer.createSessionCallback, CameraCapturer.this.cameraSessionEventsHandler, CameraCapturer.this.applicationContext, CameraCapturer.this.surfaceHelper, CameraCapturer.this.cameraName, CameraCapturer.this.width, CameraCapturer.this.height, CameraCapturer.this.framerate);
            }
        }, i);
    }

    @Override // org.webrtc.VideoCapturer
    public void stopCapture() {
        Logging.d(TAG, "Stop capture");
        synchronized (this.stateLock) {
            while (this.sessionOpening) {
                Logging.d(TAG, "Stop capture: Waiting for session to open");
                try {
                    this.stateLock.wait();
                } catch (InterruptedException unused) {
                    Logging.w(TAG, "Stop capture interrupted while waiting for the session to open.");
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (this.currentSession != null) {
                Logging.d(TAG, "Stop capture: Nulling session");
                this.cameraStatistics.release();
                this.cameraStatistics = null;
                final CameraSession cameraSession = this.currentSession;
                this.cameraThreadHandler.post(new Runnable() { // from class: org.webrtc.CameraCapturer.6
                    @Override // java.lang.Runnable
                    public void run() {
                        cameraSession.stop();
                    }
                });
                this.currentSession = null;
                this.capturerObserver.onCapturerStopped();
            } else {
                Logging.d(TAG, "Stop capture: No session open");
            }
        }
        Logging.d(TAG, "Stop capture done");
    }

    @Override // org.webrtc.VideoCapturer
    public void changeCaptureFormat(int i, int i2, int i3) {
        Logging.d(TAG, "changeCaptureFormat: " + i + ViewHierarchyNode.JsonKeys.X + i2 + "@" + i3);
        synchronized (this.stateLock) {
            stopCapture();
            startCapture(i, i2, i3);
        }
    }

    @Override // org.webrtc.VideoCapturer
    public void dispose() {
        Logging.d(TAG, "dispose");
        stopCapture();
    }

    @Override // org.webrtc.CameraVideoCapturer
    public void switchCamera(final CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler) {
        Logging.d(TAG, "switchCamera");
        this.cameraThreadHandler.post(new Runnable() { // from class: org.webrtc.CameraCapturer.7
            @Override // java.lang.Runnable
            public void run() {
                List asList = Arrays.asList(CameraCapturer.this.cameraEnumerator.getDeviceNames());
                if (asList.size() < 2) {
                    CameraCapturer.this.reportCameraSwitchError("No camera to switch to.", cameraSwitchHandler);
                } else {
                    CameraCapturer.this.switchCameraInternal(cameraSwitchHandler, (String) asList.get((asList.indexOf(CameraCapturer.this.cameraName) + 1) % asList.size()));
                }
            }
        });
    }

    @Override // org.webrtc.CameraVideoCapturer
    public void switchCamera(final CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler, final String str) {
        Logging.d(TAG, "switchCamera");
        this.cameraThreadHandler.post(new Runnable() { // from class: org.webrtc.CameraCapturer.8
            @Override // java.lang.Runnable
            public void run() {
                CameraCapturer.this.switchCameraInternal(cameraSwitchHandler, str);
            }
        });
    }

    public void printStackTrace() {
        Handler handler = this.cameraThreadHandler;
        Thread thread = handler != null ? handler.getLooper().getThread() : null;
        if (thread != null) {
            StackTraceElement[] stackTrace = thread.getStackTrace();
            if (stackTrace.length > 0) {
                Logging.d(TAG, "CameraCapturer stack trace:");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    Logging.d(TAG, stackTraceElement.toString());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportCameraSwitchError(String str, CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler) {
        Logging.e(TAG, str);
        if (cameraSwitchHandler != null) {
            cameraSwitchHandler.onCameraSwitchError(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchCameraInternal(CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler, String str) {
        Logging.d(TAG, "switchCamera internal");
        if (!Arrays.asList(this.cameraEnumerator.getDeviceNames()).contains(str)) {
            reportCameraSwitchError("Attempted to switch to unknown camera device " + str, cameraSwitchHandler);
            return;
        }
        synchronized (this.stateLock) {
            if (this.switchState != SwitchState.IDLE) {
                reportCameraSwitchError("Camera switch already in progress.", cameraSwitchHandler);
                return;
            }
            boolean z = this.sessionOpening;
            if (!z && this.currentSession == null) {
                reportCameraSwitchError("switchCamera: camera is not running.", cameraSwitchHandler);
                return;
            }
            this.switchEventsHandler = cameraSwitchHandler;
            if (z) {
                this.switchState = SwitchState.PENDING;
                this.pendingCameraName = str;
                return;
            }
            this.switchState = SwitchState.IN_PROGRESS;
            Logging.d(TAG, "switchCamera: Stopping session");
            this.cameraStatistics.release();
            this.cameraStatistics = null;
            final CameraSession cameraSession = this.currentSession;
            this.cameraThreadHandler.post(new Runnable() { // from class: org.webrtc.CameraCapturer.9
                @Override // java.lang.Runnable
                public void run() {
                    cameraSession.stop();
                }
            });
            this.currentSession = null;
            this.cameraName = str;
            this.sessionOpening = true;
            this.openAttemptsRemaining = 1;
            createSessionInternal(0);
            Logging.d(TAG, "switchCamera done");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsOnCameraThread() {
        if (Thread.currentThread() == this.cameraThreadHandler.getLooper().getThread()) {
            return;
        }
        Logging.e(TAG, "Check is on camera thread failed.");
        throw new RuntimeException("Not on camera thread.");
    }

    protected String getCameraName() {
        String str;
        synchronized (this.stateLock) {
            str = this.cameraName;
        }
        return str;
    }
}
