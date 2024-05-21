package io.flutter.embedding.engine.renderer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.TextureRegistry;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public class FlutterRenderer implements TextureRegistry {
    private static final String TAG = "FlutterRenderer";
    private final FlutterJNI flutterJNI;
    private final FlutterUiDisplayListener flutterUiDisplayListener;
    private Surface surface;
    private final AtomicLong nextTextureId = new AtomicLong(0);
    private boolean isDisplayingFlutterUi = false;
    private int isRenderingToImageViewCount = 0;
    private Handler handler = new Handler();
    private final Set<WeakReference<TextureRegistry.OnTrimMemoryListener>> onTrimMemoryListeners = new HashSet();

    /* loaded from: classes3.dex */
    public static final class ViewportMetrics {
        public static final int unsetValue = -1;
        public float devicePixelRatio = 1.0f;
        public int width = 0;
        public int height = 0;
        public int viewPaddingTop = 0;
        public int viewPaddingRight = 0;
        public int viewPaddingBottom = 0;
        public int viewPaddingLeft = 0;
        public int viewInsetTop = 0;
        public int viewInsetRight = 0;
        public int viewInsetBottom = 0;
        public int viewInsetLeft = 0;
        public int systemGestureInsetTop = 0;
        public int systemGestureInsetRight = 0;
        public int systemGestureInsetBottom = 0;
        public int systemGestureInsetLeft = 0;
        public int physicalTouchSlop = -1;
        public List<DisplayFeature> displayFeatures = new ArrayList();

        boolean validate() {
            return this.width > 0 && this.height > 0 && this.devicePixelRatio > 0.0f;
        }
    }

    public boolean isDisplayingFlutterUi() {
        return this.isDisplayingFlutterUi;
    }

    public FlutterRenderer(FlutterJNI flutterJNI) {
        FlutterUiDisplayListener flutterUiDisplayListener = new FlutterUiDisplayListener() { // from class: io.flutter.embedding.engine.renderer.FlutterRenderer.1
            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiDisplayed() {
                FlutterRenderer.this.isDisplayingFlutterUi = true;
            }

            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiNoLongerDisplayed() {
                FlutterRenderer.this.isDisplayingFlutterUi = false;
            }
        };
        this.flutterUiDisplayListener = flutterUiDisplayListener;
        this.flutterJNI = flutterJNI;
        flutterJNI.addIsDisplayingFlutterUiListener(flutterUiDisplayListener);
    }

    public void SetRenderingToImageView(boolean z) {
        if (z) {
            this.isRenderingToImageViewCount++;
        } else {
            this.isRenderingToImageViewCount--;
        }
        this.flutterJNI.SetIsRenderingToImageView(this.isRenderingToImageViewCount > 0);
    }

    public void addIsDisplayingFlutterUiListener(FlutterUiDisplayListener flutterUiDisplayListener) {
        this.flutterJNI.addIsDisplayingFlutterUiListener(flutterUiDisplayListener);
        if (this.isDisplayingFlutterUi) {
            flutterUiDisplayListener.onFlutterUiDisplayed();
        }
    }

    public void removeIsDisplayingFlutterUiListener(FlutterUiDisplayListener flutterUiDisplayListener) {
        this.flutterJNI.removeIsDisplayingFlutterUiListener(flutterUiDisplayListener);
    }

    private void clearDeadListeners() {
        Iterator<WeakReference<TextureRegistry.OnTrimMemoryListener>> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            if (it.next().get() == null) {
                it.remove();
            }
        }
    }

    void addOnTrimMemoryListener(TextureRegistry.OnTrimMemoryListener onTrimMemoryListener) {
        clearDeadListeners();
        this.onTrimMemoryListeners.add(new WeakReference<>(onTrimMemoryListener));
    }

    void removeOnTrimMemoryListener(TextureRegistry.OnTrimMemoryListener onTrimMemoryListener) {
        for (WeakReference<TextureRegistry.OnTrimMemoryListener> weakReference : this.onTrimMemoryListeners) {
            if (weakReference.get() == onTrimMemoryListener) {
                this.onTrimMemoryListeners.remove(weakReference);
                return;
            }
        }
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceProducer createSurfaceProducer() {
        ImageReaderSurfaceProducer imageReaderSurfaceProducer = new ImageReaderSurfaceProducer(this.nextTextureId.getAndIncrement());
        Log.v(TAG, "New SurfaceProducer ID: " + imageReaderSurfaceProducer.id());
        registerImageTexture(imageReaderSurfaceProducer.id(), imageReaderSurfaceProducer);
        return imageReaderSurfaceProducer;
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceTextureEntry createSurfaceTexture() {
        Log.v(TAG, "Creating a SurfaceTexture.");
        return registerSurfaceTexture(new SurfaceTexture(0));
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.SurfaceTextureEntry registerSurfaceTexture(SurfaceTexture surfaceTexture) {
        surfaceTexture.detachFromGLContext();
        SurfaceTextureRegistryEntry surfaceTextureRegistryEntry = new SurfaceTextureRegistryEntry(this.nextTextureId.getAndIncrement(), surfaceTexture);
        Log.v(TAG, "New SurfaceTexture ID: " + surfaceTextureRegistryEntry.id());
        registerTexture(surfaceTextureRegistryEntry.id(), surfaceTextureRegistryEntry.textureWrapper());
        addOnTrimMemoryListener(surfaceTextureRegistryEntry);
        return surfaceTextureRegistryEntry;
    }

    @Override // io.flutter.view.TextureRegistry
    public TextureRegistry.ImageTextureEntry createImageTexture() {
        ImageTextureRegistryEntry imageTextureRegistryEntry = new ImageTextureRegistryEntry(this.nextTextureId.getAndIncrement());
        Log.v(TAG, "New ImageTextureEntry ID: " + imageTextureRegistryEntry.id());
        registerImageTexture(imageTextureRegistryEntry.id(), imageTextureRegistryEntry);
        return imageTextureRegistryEntry;
    }

    @Override // io.flutter.view.TextureRegistry
    public void onTrimMemory(int i) {
        Iterator<WeakReference<TextureRegistry.OnTrimMemoryListener>> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            TextureRegistry.OnTrimMemoryListener onTrimMemoryListener = it.next().get();
            if (onTrimMemoryListener != null) {
                onTrimMemoryListener.onTrimMemory(i);
            } else {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class SurfaceTextureRegistryEntry implements TextureRegistry.SurfaceTextureEntry, TextureRegistry.OnTrimMemoryListener {
        private TextureRegistry.OnFrameConsumedListener frameConsumedListener;
        private final long id;
        private final Runnable onFrameConsumed;
        private SurfaceTexture.OnFrameAvailableListener onFrameListener;
        private boolean released;
        private final SurfaceTextureWrapper textureWrapper;
        private TextureRegistry.OnTrimMemoryListener trimMemoryListener;

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry, io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.id;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public void setOnFrameConsumedListener(TextureRegistry.OnFrameConsumedListener onFrameConsumedListener) {
            this.frameConsumedListener = onFrameConsumedListener;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public void setOnTrimMemoryListener(TextureRegistry.OnTrimMemoryListener onTrimMemoryListener) {
            this.trimMemoryListener = onTrimMemoryListener;
        }

        public SurfaceTextureWrapper textureWrapper() {
            return this.textureWrapper;
        }

        SurfaceTextureRegistryEntry(long j, SurfaceTexture surfaceTexture) {
            Runnable runnable = new Runnable() { // from class: io.flutter.embedding.engine.renderer.FlutterRenderer.SurfaceTextureRegistryEntry.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SurfaceTextureRegistryEntry.this.frameConsumedListener != null) {
                        SurfaceTextureRegistryEntry.this.frameConsumedListener.onFrameConsumed();
                    }
                }
            };
            this.onFrameConsumed = runnable;
            this.onFrameListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: io.flutter.embedding.engine.renderer.FlutterRenderer.SurfaceTextureRegistryEntry.2
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                    if (SurfaceTextureRegistryEntry.this.released || !FlutterRenderer.this.flutterJNI.isAttached()) {
                        return;
                    }
                    FlutterRenderer.this.markTextureFrameAvailable(SurfaceTextureRegistryEntry.this.id);
                }
            };
            this.id = j;
            this.textureWrapper = new SurfaceTextureWrapper(surfaceTexture, runnable);
            surfaceTexture().setOnFrameAvailableListener(this.onFrameListener, new Handler());
        }

        @Override // io.flutter.view.TextureRegistry.OnTrimMemoryListener
        public void onTrimMemory(int i) {
            TextureRegistry.OnTrimMemoryListener onTrimMemoryListener = this.trimMemoryListener;
            if (onTrimMemoryListener != null) {
                onTrimMemoryListener.onTrimMemory(i);
            }
        }

        private void removeListener() {
            FlutterRenderer.this.removeOnTrimMemoryListener(this);
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry
        public SurfaceTexture surfaceTexture() {
            return this.textureWrapper.surfaceTexture();
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceTextureEntry, io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            Log.v(FlutterRenderer.TAG, "Releasing a SurfaceTexture (" + this.id + ").");
            this.textureWrapper.release();
            FlutterRenderer.this.unregisterTexture(this.id);
            removeListener();
            this.released = true;
        }

        protected void finalize() throws Throwable {
            try {
                if (this.released) {
                    return;
                }
                FlutterRenderer.this.handler.post(new TextureFinalizerRunnable(this.id, FlutterRenderer.this.flutterJNI));
            } finally {
                super.finalize();
            }
        }
    }

    /* loaded from: classes3.dex */
    static final class TextureFinalizerRunnable implements Runnable {
        private final FlutterJNI flutterJNI;
        private final long id;

        TextureFinalizerRunnable(long j, FlutterJNI flutterJNI) {
            this.id = j;
            this.flutterJNI = flutterJNI;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.flutterJNI.isAttached()) {
                Log.v(FlutterRenderer.TAG, "Releasing a Texture (" + this.id + ").");
                this.flutterJNI.unregisterTexture(this.id);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class ImageReaderSurfaceProducer implements TextureRegistry.SurfaceProducer, TextureRegistry.ImageConsumer {
        private static final int MAX_IMAGES = 4;
        private static final String TAG = "ImageReaderSurfaceProducer";
        private ImageReader activeReader;
        private final long id;
        private PerImage lastConsumedImage;
        private PerImage lastProducedImage;
        private boolean released;
        private boolean ignoringFence = false;
        private int requestedWidth = 0;
        private int requestedHeight = 0;
        private final Set<ImageReader> readersToClose = new HashSet();
        private final Handler onImageAvailableHandler = new Handler();
        private final ImageReader.OnImageAvailableListener onImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: io.flutter.embedding.engine.renderer.FlutterRenderer.ImageReaderSurfaceProducer.1
            @Override // android.media.ImageReader.OnImageAvailableListener
            public void onImageAvailable(ImageReader imageReader) {
                Image image;
                try {
                    image = imageReader.acquireLatestImage();
                } catch (IllegalStateException e) {
                    Log.e(ImageReaderSurfaceProducer.TAG, "onImageAvailable acquireLatestImage failed: " + e.toString());
                    image = null;
                }
                if (image == null) {
                    return;
                }
                ImageReaderSurfaceProducer.this.onImage(new PerImage(imageReader, image));
            }
        };

        public void disableFenceForTest() {
            this.ignoringFence = true;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public int getHeight() {
            return this.requestedHeight;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public int getWidth() {
            return this.requestedWidth;
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer, io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.id;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class PerImage {
            public final Image image;
            public final ImageReader reader;

            public PerImage(ImageReader imageReader, Image image) {
                this.reader = imageReader;
                this.image = image;
            }

            public void close() {
                this.image.close();
                ImageReaderSurfaceProducer.this.maybeCloseReader(this.reader);
            }
        }

        ImageReaderSurfaceProducer(long j) {
            this.id = j;
        }

        private void releaseInternal() {
            this.released = true;
            PerImage perImage = this.lastProducedImage;
            if (perImage != null) {
                perImage.close();
                this.lastProducedImage = null;
            }
            PerImage perImage2 = this.lastConsumedImage;
            if (perImage2 != null) {
                perImage2.close();
                this.lastConsumedImage = null;
            }
            Iterator<ImageReader> it = this.readersToClose.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.readersToClose.clear();
            ImageReader imageReader = this.activeReader;
            if (imageReader != null) {
                imageReader.close();
                this.activeReader = null;
            }
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer, io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            releaseInternal();
            FlutterRenderer.this.unregisterTexture(this.id);
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public void setSize(int i, int i2) {
            if (this.requestedWidth == i && this.requestedHeight == i2) {
                return;
            }
            this.requestedHeight = i2;
            this.requestedWidth = i;
            synchronized (this) {
                ImageReader imageReader = this.activeReader;
                if (imageReader != null) {
                    this.readersToClose.add(imageReader);
                    this.activeReader = null;
                }
            }
        }

        @Override // io.flutter.view.TextureRegistry.SurfaceProducer
        public Surface getSurface() {
            maybeCreateReader();
            return this.activeReader.getSurface();
        }

        @Override // io.flutter.view.TextureRegistry.ImageConsumer
        public Image acquireLatestImage() {
            PerImage perImage;
            PerImage perImage2;
            synchronized (this) {
                perImage = this.lastProducedImage;
                this.lastProducedImage = null;
                perImage2 = this.lastConsumedImage;
                this.lastConsumedImage = perImage;
            }
            if (perImage2 != null) {
                perImage2.close();
            }
            if (perImage == null) {
                return null;
            }
            maybeWaitOnFence(perImage.image);
            return perImage.image;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void maybeCloseReader(ImageReader imageReader) {
            synchronized (this) {
                if (this.readersToClose.contains(imageReader)) {
                    PerImage perImage = this.lastConsumedImage;
                    if (perImage == null || perImage.reader != imageReader) {
                        PerImage perImage2 = this.lastProducedImage;
                        if (perImage2 == null || perImage2.reader != imageReader) {
                            this.readersToClose.remove(imageReader);
                            imageReader.close();
                        }
                    }
                }
            }
        }

        private void maybeCreateReader() {
            synchronized (this) {
                if (this.activeReader != null) {
                    return;
                }
                this.activeReader = createImageReader();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onImage(PerImage perImage) {
            if (this.released) {
                return;
            }
            synchronized (this) {
                if (this.readersToClose.contains(perImage.reader)) {
                    Log.i(TAG, "Skipped frame because resize is in flight.");
                    perImage.close();
                    return;
                }
                PerImage perImage2 = this.lastProducedImage;
                this.lastProducedImage = perImage;
                if (perImage2 != null) {
                    Log.i(TAG, "Dropping rendered frame that was not acquired in time.");
                    perImage2.close();
                }
                if (perImage != null) {
                    FlutterRenderer.this.markTextureFrameAvailable(this.id);
                }
            }
        }

        private void waitOnFence(Image image) {
            try {
                if (image.getFence().awaitForever()) {
                    return;
                }
                Log.e(TAG, "acquireLatestImage image's fence was never signalled.");
            } catch (IOException unused) {
            }
        }

        private void maybeWaitOnFence(Image image) {
            if (image == null || this.ignoringFence) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                waitOnFence(image);
            } else {
                if (this.ignoringFence) {
                    return;
                }
                this.ignoringFence = true;
                Log.w(TAG, "ImageTextureEntry can't wait on the fence on Android < 33");
            }
        }

        protected void finalize() throws Throwable {
            try {
                if (this.released) {
                    return;
                }
                releaseInternal();
                FlutterRenderer.this.handler.post(new TextureFinalizerRunnable(this.id, FlutterRenderer.this.flutterJNI));
            } finally {
                super.finalize();
            }
        }

        private ImageReader createImageReader33() {
            ImageReader.Builder builder = new ImageReader.Builder(this.requestedWidth, this.requestedHeight);
            builder.setMaxImages(4);
            builder.setImageFormat(34);
            builder.setUsage(256L);
            ImageReader build = builder.build();
            build.setOnImageAvailableListener(this.onImageAvailableListener, this.onImageAvailableHandler);
            return build;
        }

        private ImageReader createImageReader29() {
            ImageReader newInstance = ImageReader.newInstance(this.requestedWidth, this.requestedHeight, 34, 4, 256L);
            newInstance.setOnImageAvailableListener(this.onImageAvailableListener, this.onImageAvailableHandler);
            return newInstance;
        }

        private ImageReader createImageReader() {
            if (Build.VERSION.SDK_INT >= 33) {
                return createImageReader33();
            }
            return createImageReader29();
        }

        public int readersToCloseSize() {
            return this.readersToClose.size();
        }
    }

    /* loaded from: classes3.dex */
    final class ImageTextureRegistryEntry implements TextureRegistry.ImageTextureEntry, TextureRegistry.ImageConsumer {
        private static final String TAG = "ImageTextureRegistryEntry";
        private final long id;
        private boolean ignoringFence = false;
        private Image image;
        private boolean released;

        @Override // io.flutter.view.TextureRegistry.ImageTextureEntry, io.flutter.view.TextureRegistry.TextureEntry
        public long id() {
            return this.id;
        }

        ImageTextureRegistryEntry(long j) {
            this.id = j;
        }

        @Override // io.flutter.view.TextureRegistry.ImageTextureEntry, io.flutter.view.TextureRegistry.TextureEntry
        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            Image image = this.image;
            if (image != null) {
                image.close();
                this.image = null;
            }
            FlutterRenderer.this.unregisterTexture(this.id);
        }

        @Override // io.flutter.view.TextureRegistry.ImageTextureEntry
        public void pushImage(Image image) {
            Image image2;
            if (this.released) {
                return;
            }
            synchronized (this) {
                image2 = this.image;
                this.image = image;
            }
            if (image2 != null) {
                Log.e(TAG, "Dropping PlatformView Frame");
                image2.close();
            }
            if (image != null) {
                FlutterRenderer.this.markTextureFrameAvailable(this.id);
            }
        }

        private void waitOnFence(Image image) {
            try {
                if (image.getFence().awaitForever()) {
                    return;
                }
                Log.e(TAG, "acquireLatestImage image's fence was never signalled.");
            } catch (IOException unused) {
            }
        }

        private void maybeWaitOnFence(Image image) {
            if (image == null || this.ignoringFence) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                waitOnFence(image);
            } else {
                if (this.ignoringFence) {
                    return;
                }
                this.ignoringFence = true;
                Log.w(TAG, "ImageTextureEntry can't wait on the fence on Android < 33");
            }
        }

        @Override // io.flutter.view.TextureRegistry.ImageConsumer
        public Image acquireLatestImage() {
            Image image;
            synchronized (this) {
                image = this.image;
                this.image = null;
            }
            maybeWaitOnFence(image);
            return image;
        }

        protected void finalize() throws Throwable {
            try {
                if (this.released) {
                    return;
                }
                Image image = this.image;
                if (image != null) {
                    image.close();
                    this.image = null;
                }
                this.released = true;
                FlutterRenderer.this.handler.post(new TextureFinalizerRunnable(this.id, FlutterRenderer.this.flutterJNI));
            } finally {
                super.finalize();
            }
        }
    }

    public void startRenderingToSurface(Surface surface, boolean z) {
        if (!z) {
            stopRenderingToSurface();
        }
        this.surface = surface;
        if (z) {
            this.flutterJNI.onSurfaceWindowChanged(surface);
        } else {
            this.flutterJNI.onSurfaceCreated(surface);
        }
    }

    public void swapSurface(Surface surface) {
        this.surface = surface;
        this.flutterJNI.onSurfaceWindowChanged(surface);
    }

    public void surfaceChanged(int i, int i2) {
        this.flutterJNI.onSurfaceChanged(i, i2);
    }

    public void stopRenderingToSurface() {
        if (this.surface != null) {
            this.flutterJNI.onSurfaceDestroyed();
            if (this.isDisplayingFlutterUi) {
                this.flutterUiDisplayListener.onFlutterUiNoLongerDisplayed();
            }
            this.isDisplayingFlutterUi = false;
            this.surface = null;
        }
    }

    public void setViewportMetrics(ViewportMetrics viewportMetrics) {
        if (viewportMetrics.validate()) {
            Log.v(TAG, "Setting viewport metrics\nSize: " + viewportMetrics.width + " x " + viewportMetrics.height + "\nPadding - L: " + viewportMetrics.viewPaddingLeft + ", T: " + viewportMetrics.viewPaddingTop + ", R: " + viewportMetrics.viewPaddingRight + ", B: " + viewportMetrics.viewPaddingBottom + "\nInsets - L: " + viewportMetrics.viewInsetLeft + ", T: " + viewportMetrics.viewInsetTop + ", R: " + viewportMetrics.viewInsetRight + ", B: " + viewportMetrics.viewInsetBottom + "\nSystem Gesture Insets - L: " + viewportMetrics.systemGestureInsetLeft + ", T: " + viewportMetrics.systemGestureInsetTop + ", R: " + viewportMetrics.systemGestureInsetRight + ", B: " + viewportMetrics.systemGestureInsetRight + "\nDisplay Features: " + viewportMetrics.displayFeatures.size());
            int[] iArr = new int[viewportMetrics.displayFeatures.size() * 4];
            int[] iArr2 = new int[viewportMetrics.displayFeatures.size()];
            int[] iArr3 = new int[viewportMetrics.displayFeatures.size()];
            for (int i = 0; i < viewportMetrics.displayFeatures.size(); i++) {
                DisplayFeature displayFeature = viewportMetrics.displayFeatures.get(i);
                int i2 = i * 4;
                iArr[i2] = displayFeature.bounds.left;
                iArr[i2 + 1] = displayFeature.bounds.top;
                iArr[i2 + 2] = displayFeature.bounds.right;
                iArr[i2 + 3] = displayFeature.bounds.bottom;
                iArr2[i] = displayFeature.type.encodedValue;
                iArr3[i] = displayFeature.state.encodedValue;
            }
            this.flutterJNI.setViewportMetrics(viewportMetrics.devicePixelRatio, viewportMetrics.width, viewportMetrics.height, viewportMetrics.viewPaddingTop, viewportMetrics.viewPaddingRight, viewportMetrics.viewPaddingBottom, viewportMetrics.viewPaddingLeft, viewportMetrics.viewInsetTop, viewportMetrics.viewInsetRight, viewportMetrics.viewInsetBottom, viewportMetrics.viewInsetLeft, viewportMetrics.systemGestureInsetTop, viewportMetrics.systemGestureInsetRight, viewportMetrics.systemGestureInsetBottom, viewportMetrics.systemGestureInsetLeft, viewportMetrics.physicalTouchSlop, iArr, iArr2, iArr3);
        }
    }

    public Bitmap getBitmap() {
        return this.flutterJNI.getBitmap();
    }

    public void dispatchPointerDataPacket(ByteBuffer byteBuffer, int i) {
        this.flutterJNI.dispatchPointerDataPacket(byteBuffer, i);
    }

    private void registerTexture(long j, SurfaceTextureWrapper surfaceTextureWrapper) {
        this.flutterJNI.registerTexture(j, surfaceTextureWrapper);
    }

    private void registerImageTexture(long j, TextureRegistry.ImageConsumer imageConsumer) {
        this.flutterJNI.registerImageTexture(j, imageConsumer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markTextureFrameAvailable(long j) {
        this.flutterJNI.markTextureFrameAvailable(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterTexture(long j) {
        this.flutterJNI.unregisterTexture(j);
    }

    public boolean isSoftwareRenderingEnabled() {
        return this.flutterJNI.getIsSoftwareRenderingEnabled();
    }

    public void setAccessibilityFeatures(int i) {
        this.flutterJNI.setAccessibilityFeatures(i);
    }

    public void setSemanticsEnabled(boolean z) {
        this.flutterJNI.setSemanticsEnabled(z);
    }

    public void dispatchSemanticsAction(int i, int i2, ByteBuffer byteBuffer, int i3) {
        this.flutterJNI.dispatchSemanticsAction(i, i2, byteBuffer, i3);
    }

    /* loaded from: classes3.dex */
    public static final class DisplayFeature {
        public final Rect bounds;
        public final DisplayFeatureState state;
        public final DisplayFeatureType type;

        public DisplayFeature(Rect rect, DisplayFeatureType displayFeatureType, DisplayFeatureState displayFeatureState) {
            this.bounds = rect;
            this.type = displayFeatureType;
            this.state = displayFeatureState;
        }

        public DisplayFeature(Rect rect, DisplayFeatureType displayFeatureType) {
            this.bounds = rect;
            this.type = displayFeatureType;
            this.state = DisplayFeatureState.UNKNOWN;
        }
    }

    /* loaded from: classes3.dex */
    public enum DisplayFeatureType {
        UNKNOWN(0),
        FOLD(1),
        HINGE(2),
        CUTOUT(3);

        public final int encodedValue;

        DisplayFeatureType(int i) {
            this.encodedValue = i;
        }
    }

    /* loaded from: classes3.dex */
    public enum DisplayFeatureState {
        UNKNOWN(0),
        POSTURE_FLAT(1),
        POSTURE_HALF_OPENED(2);

        public final int encodedValue;

        DisplayFeatureState(int i) {
            this.encodedValue = i;
        }
    }
}
