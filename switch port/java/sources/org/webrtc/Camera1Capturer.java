package org.webrtc;

import android.content.Context;
import org.webrtc.CameraSession;
import org.webrtc.CameraVideoCapturer;

/* loaded from: classes3.dex */
public class Camera1Capturer extends CameraCapturer {
    private final boolean captureToTexture;

    @Override // org.webrtc.CameraCapturer, org.webrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void changeCaptureFormat(int i, int i2, int i3) {
        super.changeCaptureFormat(i, i2, i3);
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void dispose() {
        super.dispose();
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void initialize(SurfaceTextureHelper surfaceTextureHelper, Context context, CapturerObserver capturerObserver) {
        super.initialize(surfaceTextureHelper, context, capturerObserver);
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.VideoCapturer
    public /* bridge */ /* synthetic */ boolean isScreencast() {
        return super.isScreencast();
    }

    @Override // org.webrtc.CameraCapturer
    public /* bridge */ /* synthetic */ void printStackTrace() {
        super.printStackTrace();
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void startCapture(int i, int i2, int i3) {
        super.startCapture(i, i2, i3);
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void stopCapture() {
        super.stopCapture();
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.CameraVideoCapturer
    public /* bridge */ /* synthetic */ void switchCamera(CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler) {
        super.switchCamera(cameraSwitchHandler);
    }

    @Override // org.webrtc.CameraCapturer, org.webrtc.CameraVideoCapturer
    public /* bridge */ /* synthetic */ void switchCamera(CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler, String str) {
        super.switchCamera(cameraSwitchHandler, str);
    }

    public Camera1Capturer(String str, CameraVideoCapturer.CameraEventsHandler cameraEventsHandler, boolean z) {
        super(str, cameraEventsHandler, new Camera1Enumerator(z));
        this.captureToTexture = z;
    }

    @Override // org.webrtc.CameraCapturer
    protected void createCameraSession(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, Context context, SurfaceTextureHelper surfaceTextureHelper, String str, int i, int i2, int i3) {
        Camera1Session.create(createSessionCallback, events, this.captureToTexture, context, surfaceTextureHelper, Camera1Enumerator.getCameraIndex(str), i, i2, i3);
    }
}
