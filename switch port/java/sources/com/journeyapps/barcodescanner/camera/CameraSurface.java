package com.journeyapps.barcodescanner.camera;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import java.io.IOException;

/* loaded from: classes3.dex */
public class CameraSurface {
    private SurfaceHolder surfaceHolder;
    private SurfaceTexture surfaceTexture;

    public SurfaceHolder getSurfaceHolder() {
        return this.surfaceHolder;
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public CameraSurface(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException("surfaceHolder may not be null");
        }
        this.surfaceHolder = surfaceHolder;
    }

    public CameraSurface(SurfaceTexture surfaceTexture) {
        if (surfaceTexture == null) {
            throw new IllegalArgumentException("surfaceTexture may not be null");
        }
        this.surfaceTexture = surfaceTexture;
    }

    public void setPreview(Camera camera) throws IOException {
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            camera.setPreviewDisplay(surfaceHolder);
        } else {
            camera.setPreviewTexture(this.surfaceTexture);
        }
    }
}
