package com.google.zxing.client.android.camera.open;

import android.hardware.Camera;
import android.util.Log;

/* loaded from: classes3.dex */
public final class OpenCameraInterface {
    public static final int NO_REQUESTED_CAMERA = -1;
    private static final String TAG = "com.google.zxing.client.android.camera.open.OpenCameraInterface";

    private OpenCameraInterface() {
    }

    public static int getCameraId(int i) {
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w(TAG, "No cameras!");
            return -1;
        }
        boolean z = i >= 0;
        if (!z) {
            i = 0;
            while (i < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i++;
            }
        }
        return i < numberOfCameras ? i : z ? -1 : 0;
    }

    public static Camera open(int i) {
        int cameraId = getCameraId(i);
        if (cameraId == -1) {
            return null;
        }
        return Camera.open(cameraId);
    }
}
