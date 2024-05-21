package com.journeyapps.barcodescanner.camera;

import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import android.view.SurfaceHolder;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.zxing.client.android.AmbientLightManager;
import com.google.zxing.client.android.camera.open.OpenCameraInterface;
import com.journeyapps.barcodescanner.Size;
import com.journeyapps.barcodescanner.SourceData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes3.dex */
public final class CameraManager {
    private static final String TAG = "CameraManager";
    private AmbientLightManager ambientLightManager;
    private AutoFocusManager autoFocusManager;
    private Camera camera;
    private Camera.CameraInfo cameraInfo;
    private Context context;
    private String defaultParameters;
    private DisplayConfiguration displayConfiguration;
    private Size previewSize;
    private boolean previewing;
    private Size requestedPreviewSize;
    private CameraSettings settings = new CameraSettings();
    private int rotationDegrees = -1;
    private final CameraPreviewCallback cameraPreviewCallback = new CameraPreviewCallback();

    public Camera getCamera() {
        return this.camera;
    }

    public int getCameraRotation() {
        return this.rotationDegrees;
    }

    public CameraSettings getCameraSettings() {
        return this.settings;
    }

    public DisplayConfiguration getDisplayConfiguration() {
        return this.displayConfiguration;
    }

    public Size getNaturalPreviewSize() {
        return this.previewSize;
    }

    public boolean isOpen() {
        return this.camera != null;
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.settings = cameraSettings;
    }

    public void setDisplayConfiguration(DisplayConfiguration displayConfiguration) {
        this.displayConfiguration = displayConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class CameraPreviewCallback implements Camera.PreviewCallback {
        private PreviewCallback callback;
        private Size resolution;

        public void setCallback(PreviewCallback previewCallback) {
            this.callback = previewCallback;
        }

        public void setResolution(Size size) {
            this.resolution = size;
        }

        public CameraPreviewCallback() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            Size size = this.resolution;
            PreviewCallback previewCallback = this.callback;
            if (size != null && previewCallback != null) {
                try {
                    if (bArr == null) {
                        throw new NullPointerException("No preview data received");
                    }
                    SourceData sourceData = new SourceData(bArr, size.width, size.height, camera.getParameters().getPreviewFormat(), CameraManager.this.getCameraRotation());
                    if (CameraManager.this.cameraInfo.facing == 1) {
                        sourceData.setPreviewMirrored(true);
                    }
                    previewCallback.onPreview(sourceData);
                    return;
                } catch (RuntimeException e) {
                    Log.e(CameraManager.TAG, "Camera preview failed", e);
                    previewCallback.onPreviewError(e);
                    return;
                }
            }
            Log.d(CameraManager.TAG, "Got preview callback, but no handler or resolution available");
            if (previewCallback != null) {
                previewCallback.onPreviewError(new Exception("No resolution available"));
            }
        }
    }

    public CameraManager(Context context) {
        this.context = context;
    }

    public void open() {
        Camera open = OpenCameraInterface.open(this.settings.getRequestedCameraId());
        this.camera = open;
        if (open == null) {
            throw new RuntimeException("Failed to open camera");
        }
        int cameraId = OpenCameraInterface.getCameraId(this.settings.getRequestedCameraId());
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        this.cameraInfo = cameraInfo;
        Camera.getCameraInfo(cameraId, cameraInfo);
    }

    public void configure() {
        if (this.camera == null) {
            throw new RuntimeException("Camera not open");
        }
        setParameters();
    }

    public void setPreviewDisplay(SurfaceHolder surfaceHolder) throws IOException {
        setPreviewDisplay(new CameraSurface(surfaceHolder));
    }

    public void setPreviewDisplay(CameraSurface cameraSurface) throws IOException {
        cameraSurface.setPreview(this.camera);
    }

    public void startPreview() {
        Camera camera = this.camera;
        if (camera == null || this.previewing) {
            return;
        }
        camera.startPreview();
        this.previewing = true;
        this.autoFocusManager = new AutoFocusManager(this.camera, this.settings);
        AmbientLightManager ambientLightManager = new AmbientLightManager(this.context, this, this.settings);
        this.ambientLightManager = ambientLightManager;
        ambientLightManager.start();
    }

    public void stopPreview() {
        AutoFocusManager autoFocusManager = this.autoFocusManager;
        if (autoFocusManager != null) {
            autoFocusManager.stop();
            this.autoFocusManager = null;
        }
        AmbientLightManager ambientLightManager = this.ambientLightManager;
        if (ambientLightManager != null) {
            ambientLightManager.stop();
            this.ambientLightManager = null;
        }
        Camera camera = this.camera;
        if (camera == null || !this.previewing) {
            return;
        }
        camera.stopPreview();
        this.cameraPreviewCallback.setCallback(null);
        this.previewing = false;
    }

    public void close() {
        Camera camera = this.camera;
        if (camera != null) {
            camera.release();
            this.camera = null;
        }
    }

    public boolean isCameraRotated() {
        int i = this.rotationDegrees;
        if (i != -1) {
            return i % SubsamplingScaleImageView.ORIENTATION_180 != 0;
        }
        throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
    }

    private Camera.Parameters getDefaultCameraParameters() {
        Camera.Parameters parameters = this.camera.getParameters();
        String str = this.defaultParameters;
        if (str == null) {
            this.defaultParameters = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        return parameters;
    }

    private void setDesiredParameters(boolean z) {
        Camera.Parameters defaultCameraParameters = getDefaultCameraParameters();
        if (defaultCameraParameters == null) {
            Log.w(TAG, "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        String str = TAG;
        Log.i(str, "Initial camera parameters: " + defaultCameraParameters.flatten());
        if (z) {
            Log.w(str, "In camera config safe mode -- most settings will not be honored");
        }
        CameraConfigurationUtils.setFocus(defaultCameraParameters, this.settings.getFocusMode(), z);
        if (!z) {
            CameraConfigurationUtils.setTorch(defaultCameraParameters, false);
            if (this.settings.isScanInverted()) {
                CameraConfigurationUtils.setInvertColor(defaultCameraParameters);
            }
            if (this.settings.isBarcodeSceneModeEnabled()) {
                CameraConfigurationUtils.setBarcodeSceneMode(defaultCameraParameters);
            }
            if (this.settings.isMeteringEnabled()) {
                CameraConfigurationUtils.setVideoStabilization(defaultCameraParameters);
                CameraConfigurationUtils.setFocusArea(defaultCameraParameters);
                CameraConfigurationUtils.setMetering(defaultCameraParameters);
            }
        }
        List<Size> previewSizes = getPreviewSizes(defaultCameraParameters);
        if (previewSizes.size() == 0) {
            this.requestedPreviewSize = null;
        } else {
            Size bestPreviewSize = this.displayConfiguration.getBestPreviewSize(previewSizes, isCameraRotated());
            this.requestedPreviewSize = bestPreviewSize;
            defaultCameraParameters.setPreviewSize(bestPreviewSize.width, this.requestedPreviewSize.height);
        }
        if (Build.DEVICE.equals("glass-1")) {
            CameraConfigurationUtils.setBestPreviewFPS(defaultCameraParameters);
        }
        Log.i(str, "Final camera parameters: " + defaultCameraParameters.flatten());
        this.camera.setParameters(defaultCameraParameters);
    }

    private static List<Size> getPreviewSizes(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                new Size(previewSize.width, previewSize.height);
                arrayList.add(new Size(previewSize.width, previewSize.height));
            }
            return arrayList;
        }
        for (Camera.Size size : supportedPreviewSizes) {
            arrayList.add(new Size(size.width, size.height));
        }
        return arrayList;
    }

    private int calculateDisplayRotation() {
        int i;
        int rotation = this.displayConfiguration.getRotation();
        int i2 = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i2 = 90;
            } else if (rotation == 2) {
                i2 = SubsamplingScaleImageView.ORIENTATION_180;
            } else if (rotation == 3) {
                i2 = SubsamplingScaleImageView.ORIENTATION_270;
            }
        }
        if (this.cameraInfo.facing == 1) {
            i = (360 - ((this.cameraInfo.orientation + i2) % 360)) % 360;
        } else {
            i = ((this.cameraInfo.orientation - i2) + 360) % 360;
        }
        Log.i(TAG, "Camera Display Orientation: " + i);
        return i;
    }

    private void setCameraDisplayOrientation(int i) {
        this.camera.setDisplayOrientation(i);
    }

    private void setParameters() {
        try {
            int calculateDisplayRotation = calculateDisplayRotation();
            this.rotationDegrees = calculateDisplayRotation;
            setCameraDisplayOrientation(calculateDisplayRotation);
        } catch (Exception unused) {
            Log.w(TAG, "Failed to set rotation.");
        }
        try {
            setDesiredParameters(false);
        } catch (Exception unused2) {
            try {
                setDesiredParameters(true);
            } catch (Exception unused3) {
                Log.w(TAG, "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera.Size previewSize = this.camera.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.previewSize = this.requestedPreviewSize;
        } else {
            this.previewSize = new Size(previewSize.width, previewSize.height);
        }
        this.cameraPreviewCallback.setResolution(this.previewSize);
    }

    public Size getPreviewSize() {
        if (this.previewSize == null) {
            return null;
        }
        return isCameraRotated() ? this.previewSize.rotate() : this.previewSize;
    }

    public void requestPreviewFrame(PreviewCallback previewCallback) {
        Camera camera = this.camera;
        if (camera == null || !this.previewing) {
            return;
        }
        this.cameraPreviewCallback.setCallback(previewCallback);
        camera.setOneShotPreviewCallback(this.cameraPreviewCallback);
    }

    public void setTorch(boolean z) {
        if (this.camera != null) {
            try {
                if (z != isTorchOn()) {
                    AutoFocusManager autoFocusManager = this.autoFocusManager;
                    if (autoFocusManager != null) {
                        autoFocusManager.stop();
                    }
                    Camera.Parameters parameters = this.camera.getParameters();
                    CameraConfigurationUtils.setTorch(parameters, z);
                    if (this.settings.isExposureEnabled()) {
                        CameraConfigurationUtils.setBestExposure(parameters, z);
                    }
                    this.camera.setParameters(parameters);
                    AutoFocusManager autoFocusManager2 = this.autoFocusManager;
                    if (autoFocusManager2 != null) {
                        autoFocusManager2.start();
                    }
                }
            } catch (RuntimeException e) {
                Log.e(TAG, "Failed to set torch", e);
            }
        }
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        Camera camera = this.camera;
        if (camera != null) {
            try {
                camera.setParameters(cameraParametersCallback.changeCameraParameters(camera.getParameters()));
            } catch (RuntimeException e) {
                Log.e(TAG, "Failed to change camera parameters", e);
            }
        }
    }

    public boolean isTorchOn() {
        String flashMode;
        Camera.Parameters parameters = this.camera.getParameters();
        if (parameters == null || (flashMode = parameters.getFlashMode()) == null) {
            return false;
        }
        return DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(flashMode) || "torch".equals(flashMode);
    }
}
