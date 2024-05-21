package io.flutter.view;

import android.graphics.SurfaceTexture;
import android.media.Image;
import android.view.Surface;

/* loaded from: classes3.dex */
public interface TextureRegistry {

    /* loaded from: classes3.dex */
    public interface ImageConsumer extends TextureEntry {
        Image acquireLatestImage();
    }

    /* loaded from: classes3.dex */
    public interface ImageTextureEntry extends TextureEntry {
        @Override // io.flutter.view.TextureRegistry.TextureEntry
        long id();

        void pushImage(Image image);

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        void release();
    }

    /* loaded from: classes3.dex */
    public interface OnFrameConsumedListener {
        void onFrameConsumed();
    }

    /* loaded from: classes3.dex */
    public interface OnTrimMemoryListener {
        void onTrimMemory(int i);
    }

    /* loaded from: classes3.dex */
    public interface SurfaceProducer extends TextureEntry {
        int getHeight();

        Surface getSurface();

        int getWidth();

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        long id();

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        void release();

        void setSize(int i, int i2);
    }

    /* loaded from: classes3.dex */
    public interface SurfaceTextureEntry extends TextureEntry {
        @Override // io.flutter.view.TextureRegistry.TextureEntry
        long id();

        @Override // io.flutter.view.TextureRegistry.TextureEntry
        void release();

        default void setOnFrameConsumedListener(OnFrameConsumedListener onFrameConsumedListener) {
        }

        default void setOnTrimMemoryListener(OnTrimMemoryListener onTrimMemoryListener) {
        }

        SurfaceTexture surfaceTexture();
    }

    /* loaded from: classes3.dex */
    public interface TextureEntry {
        long id();

        void release();
    }

    ImageTextureEntry createImageTexture();

    SurfaceProducer createSurfaceProducer();

    SurfaceTextureEntry createSurfaceTexture();

    default void onTrimMemory(int i) {
    }

    SurfaceTextureEntry registerSurfaceTexture(SurfaceTexture surfaceTexture);
}
