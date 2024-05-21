package com.journeyapps.barcodescanner.camera;

/* loaded from: classes3.dex */
public class CameraSettings {
    private int requestedCameraId = -1;
    private boolean scanInverted = false;
    private boolean barcodeSceneModeEnabled = false;
    private boolean meteringEnabled = false;
    private boolean autoFocusEnabled = true;
    private boolean continuousFocusEnabled = false;
    private boolean exposureEnabled = false;
    private boolean autoTorchEnabled = false;
    private FocusMode focusMode = FocusMode.AUTO;

    /* loaded from: classes3.dex */
    public enum FocusMode {
        AUTO,
        CONTINUOUS,
        INFINITY,
        MACRO
    }

    public FocusMode getFocusMode() {
        return this.focusMode;
    }

    public int getRequestedCameraId() {
        return this.requestedCameraId;
    }

    public boolean isAutoFocusEnabled() {
        return this.autoFocusEnabled;
    }

    public boolean isAutoTorchEnabled() {
        return this.autoTorchEnabled;
    }

    public boolean isBarcodeSceneModeEnabled() {
        return this.barcodeSceneModeEnabled;
    }

    public boolean isContinuousFocusEnabled() {
        return this.continuousFocusEnabled;
    }

    public boolean isExposureEnabled() {
        return this.exposureEnabled;
    }

    public boolean isMeteringEnabled() {
        return this.meteringEnabled;
    }

    public boolean isScanInverted() {
        return this.scanInverted;
    }

    public void setAutoTorchEnabled(boolean z) {
        this.autoTorchEnabled = z;
    }

    public void setBarcodeSceneModeEnabled(boolean z) {
        this.barcodeSceneModeEnabled = z;
    }

    public void setExposureEnabled(boolean z) {
        this.exposureEnabled = z;
    }

    public void setFocusMode(FocusMode focusMode) {
        this.focusMode = focusMode;
    }

    public void setMeteringEnabled(boolean z) {
        this.meteringEnabled = z;
    }

    public void setRequestedCameraId(int i) {
        this.requestedCameraId = i;
    }

    public void setScanInverted(boolean z) {
        this.scanInverted = z;
    }

    public void setAutoFocusEnabled(boolean z) {
        this.autoFocusEnabled = z;
        if (z && this.continuousFocusEnabled) {
            this.focusMode = FocusMode.CONTINUOUS;
        } else if (z) {
            this.focusMode = FocusMode.AUTO;
        } else {
            this.focusMode = null;
        }
    }

    public void setContinuousFocusEnabled(boolean z) {
        this.continuousFocusEnabled = z;
        if (z) {
            this.focusMode = FocusMode.CONTINUOUS;
        } else if (this.autoFocusEnabled) {
            this.focusMode = FocusMode.AUTO;
        } else {
            this.focusMode = null;
        }
    }
}
