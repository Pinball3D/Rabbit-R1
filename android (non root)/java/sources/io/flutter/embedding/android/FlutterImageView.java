package io.flutter.embedding.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import io.flutter.Log;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.renderer.RenderSurface;
import java.util.Locale;

/* loaded from: classes3.dex */
public class FlutterImageView extends View implements RenderSurface {
    private static final String TAG = "FlutterImageView";
    private Bitmap currentBitmap;
    private Image currentImage;
    private FlutterRenderer flutterRenderer;
    private ImageReader imageReader;
    private boolean isAttachedToFlutterRenderer;
    private SurfaceKind kind;

    /* loaded from: classes3.dex */
    public enum SurfaceKind {
        background,
        overlay
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public FlutterRenderer getAttachedRenderer() {
        return this.flutterRenderer;
    }

    public ImageReader getImageReader() {
        return this.imageReader;
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void pause() {
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void resume() {
    }

    public FlutterImageView(Context context, int i, int i2, SurfaceKind surfaceKind) {
        this(context, createImageReader(i, i2), surfaceKind);
    }

    public FlutterImageView(Context context) {
        this(context, 1, 1, SurfaceKind.background);
    }

    public FlutterImageView(Context context, AttributeSet attributeSet) {
        this(context, 1, 1, SurfaceKind.background);
    }

    FlutterImageView(Context context, ImageReader imageReader, SurfaceKind surfaceKind) {
        super(context, null);
        this.isAttachedToFlutterRenderer = false;
        this.imageReader = imageReader;
        this.kind = surfaceKind;
        init();
    }

    private void init() {
        setAlpha(0.0f);
    }

    private static void logW(String str, Object... objArr) {
        Log.w(TAG, String.format(Locale.US, str, objArr));
    }

    private static ImageReader createImageReader(int i, int i2) {
        int i3;
        int i4;
        if (i <= 0) {
            logW("ImageReader width must be greater than 0, but given width=%d, set width=1", Integer.valueOf(i));
            i3 = 1;
        } else {
            i3 = i;
        }
        if (i2 <= 0) {
            logW("ImageReader height must be greater than 0, but given height=%d, set height=1", Integer.valueOf(i2));
            i4 = 1;
        } else {
            i4 = i2;
        }
        return ImageReader.newInstance(i3, i4, 1, 3, 768L);
    }

    public Surface getSurface() {
        return this.imageReader.getSurface();
    }

    /* renamed from: io.flutter.embedding.android.FlutterImageView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$embedding$android$FlutterImageView$SurfaceKind;

        static {
            int[] iArr = new int[SurfaceKind.values().length];
            $SwitchMap$io$flutter$embedding$android$FlutterImageView$SurfaceKind = iArr;
            try {
                iArr[SurfaceKind.background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$embedding$android$FlutterImageView$SurfaceKind[SurfaceKind.overlay.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void attachToRenderer(FlutterRenderer flutterRenderer) {
        if (AnonymousClass1.$SwitchMap$io$flutter$embedding$android$FlutterImageView$SurfaceKind[this.kind.ordinal()] == 1) {
            flutterRenderer.swapSurface(this.imageReader.getSurface());
            flutterRenderer.SetRenderingToImageView(true);
        }
        setAlpha(1.0f);
        this.flutterRenderer = flutterRenderer;
        this.isAttachedToFlutterRenderer = true;
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void detachFromRenderer() {
        if (this.isAttachedToFlutterRenderer) {
            setAlpha(0.0f);
            acquireLatestImage();
            this.currentBitmap = null;
            closeCurrentImage();
            invalidate();
            this.isAttachedToFlutterRenderer = false;
            if (this.kind == SurfaceKind.background) {
                this.flutterRenderer.SetRenderingToImageView(false);
            }
        }
    }

    public boolean acquireLatestImage() {
        if (!this.isAttachedToFlutterRenderer) {
            return false;
        }
        Image acquireLatestImage = this.imageReader.acquireLatestImage();
        if (acquireLatestImage != null) {
            closeCurrentImage();
            this.currentImage = acquireLatestImage;
            invalidate();
        }
        return acquireLatestImage != null;
    }

    public void resizeIfNeeded(int i, int i2) {
        if (this.flutterRenderer == null) {
            return;
        }
        if (i == this.imageReader.getWidth() && i2 == this.imageReader.getHeight()) {
            return;
        }
        closeCurrentImage();
        closeImageReader();
        this.imageReader = createImageReader(i, i2);
    }

    public void closeImageReader() {
        this.imageReader.close();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.currentImage != null) {
            updateCurrentBitmap();
        }
        Bitmap bitmap = this.currentBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    private void closeCurrentImage() {
        Image image = this.currentImage;
        if (image != null) {
            image.close();
            this.currentImage = null;
        }
    }

    private void updateCurrentBitmap() {
        HardwareBuffer hardwareBuffer = this.currentImage.getHardwareBuffer();
        this.currentBitmap = Bitmap.wrapHardwareBuffer(hardwareBuffer, ColorSpace.get(ColorSpace.Named.SRGB));
        hardwareBuffer.close();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (!(i == this.imageReader.getWidth() && i2 == this.imageReader.getHeight()) && this.kind == SurfaceKind.background && this.isAttachedToFlutterRenderer) {
            resizeIfNeeded(i, i2);
            this.flutterRenderer.swapSurface(this.imageReader.getSurface());
        }
    }
}
