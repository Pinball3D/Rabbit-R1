package org.webrtc;

import android.content.Context;
import android.graphics.Matrix;
import android.view.WindowManager;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import org.webrtc.VideoFrame;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface CameraSession {

    /* loaded from: classes3.dex */
    public interface CreateSessionCallback {
        void onDone(CameraSession cameraSession);

        void onFailure(FailureType failureType, String str);
    }

    /* loaded from: classes3.dex */
    public interface Events {
        void onCameraClosed(CameraSession cameraSession);

        void onCameraDisconnected(CameraSession cameraSession);

        void onCameraError(CameraSession cameraSession, String str);

        void onCameraOpening();

        void onFrameCaptured(CameraSession cameraSession, VideoFrame videoFrame);
    }

    /* loaded from: classes3.dex */
    public enum FailureType {
        ERROR,
        DISCONNECTED
    }

    void stop();

    static int getDeviceOrientation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation == 2) {
            return SubsamplingScaleImageView.ORIENTATION_180;
        }
        if (rotation != 3) {
            return 0;
        }
        return SubsamplingScaleImageView.ORIENTATION_270;
    }

    static VideoFrame.TextureBuffer createTextureBufferWithModifiedTransformMatrix(TextureBufferImpl textureBufferImpl, boolean z, int i) {
        Matrix matrix = new Matrix();
        matrix.preTranslate(0.5f, 0.5f);
        if (z) {
            matrix.preScale(-1.0f, 1.0f);
        }
        matrix.preRotate(i);
        matrix.preTranslate(-0.5f, -0.5f);
        return textureBufferImpl.applyTransformMatrix(matrix, textureBufferImpl.getWidth(), textureBufferImpl.getHeight());
    }
}
