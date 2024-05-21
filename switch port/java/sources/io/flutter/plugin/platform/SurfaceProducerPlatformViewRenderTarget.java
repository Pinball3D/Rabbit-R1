package io.flutter.plugin.platform;

import android.graphics.Canvas;
import android.view.Surface;
import io.flutter.view.TextureRegistry;

/* loaded from: classes3.dex */
public class SurfaceProducerPlatformViewRenderTarget implements PlatformViewRenderTarget {
    private static final String TAG = "SurfaceProducerRenderTarget";
    private TextureRegistry.SurfaceProducer producer;

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public boolean isReleased() {
        return this.producer == null;
    }

    public SurfaceProducerPlatformViewRenderTarget(TextureRegistry.SurfaceProducer surfaceProducer) {
        this.producer = surfaceProducer;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public void resize(int i, int i2) {
        this.producer.setSize(i, i2);
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public int getWidth() {
        return this.producer.getWidth();
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public int getHeight() {
        return this.producer.getHeight();
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public Canvas lockHardwareCanvas() {
        return this.producer.getSurface().lockHardwareCanvas();
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public void unlockCanvasAndPost(Canvas canvas) {
        this.producer.getSurface().unlockCanvasAndPost(canvas);
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public long getId() {
        return this.producer.id();
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public void release() {
        this.producer.release();
        this.producer = null;
    }

    @Override // io.flutter.plugin.platform.PlatformViewRenderTarget
    public Surface getSurface() {
        return this.producer.getSurface();
    }
}
