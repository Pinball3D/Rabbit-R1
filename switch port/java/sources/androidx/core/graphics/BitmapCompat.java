package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public final class BitmapCompat {
    static int sizeAtStep(int i, int i2, int i3, int i4) {
        return i3 == 0 ? i2 : i3 > 0 ? i * (1 << (i4 - i3)) : i2 << ((-i3) - 1);
    }

    public static boolean hasMipMap(Bitmap bitmap) {
        return Api17Impl.hasMipMap(bitmap);
    }

    public static void setHasMipMap(Bitmap bitmap, boolean z) {
        Api17Impl.setHasMipMap(bitmap, z);
    }

    public static int getAllocationByteCount(Bitmap bitmap) {
        return Api19Impl.getAllocationByteCount(bitmap);
    }

    public static Bitmap createScaledBitmap(Bitmap bitmap, int i, int i2, Rect rect, boolean z) {
        int i3;
        double floor;
        double floor2;
        Bitmap bitmap2;
        int i4;
        int i5;
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("dstW and dstH must be > 0!");
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            throw new IllegalArgumentException("srcRect must be contained by srcBm!");
        }
        Bitmap copyBitmapIfHardware = Api27Impl.copyBitmapIfHardware(bitmap);
        int width = rect != null ? rect.width() : bitmap.getWidth();
        int height = rect != null ? rect.height() : bitmap.getHeight();
        float f = i / width;
        float f2 = i2 / height;
        int i6 = rect != null ? rect.left : 0;
        int i7 = rect != null ? rect.top : 0;
        if (i6 == 0 && i7 == 0 && i == bitmap.getWidth() && i2 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == copyBitmapIfHardware) ? bitmap.copy(bitmap.getConfig(), true) : copyBitmapIfHardware;
        }
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        Api29Impl.setPaintBlendMode(paint);
        if (width == i && height == i2) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, copyBitmapIfHardware.getConfig());
            new Canvas(createBitmap).drawBitmap(copyBitmapIfHardware, -i6, -i7, paint);
            return createBitmap;
        }
        double log = Math.log(2.0d);
        if (f > 1.0f) {
            i3 = i6;
            floor = Math.ceil(Math.log(f) / log);
        } else {
            i3 = i6;
            floor = Math.floor(Math.log(f) / log);
        }
        int i8 = (int) floor;
        if (f2 > 1.0f) {
            floor2 = Math.ceil(Math.log(f2) / log);
        } else {
            floor2 = Math.floor(Math.log(f2) / log);
        }
        int i9 = (int) floor2;
        if (!z || Api27Impl.isAlreadyF16AndLinear(bitmap)) {
            bitmap2 = null;
            i4 = i3;
            i5 = 0;
        } else {
            Bitmap createBitmapWithSourceColorspace = Api27Impl.createBitmapWithSourceColorspace(i8 > 0 ? sizeAtStep(width, i, 1, i8) : width, i9 > 0 ? sizeAtStep(height, i2, 1, i9) : height, bitmap, true);
            new Canvas(createBitmapWithSourceColorspace).drawBitmap(copyBitmapIfHardware, -i3, -i7, paint);
            i5 = 1;
            i7 = 0;
            i4 = 0;
            bitmap2 = copyBitmapIfHardware;
            copyBitmapIfHardware = createBitmapWithSourceColorspace;
        }
        Rect rect2 = new Rect(i4, i7, width, height);
        Rect rect3 = new Rect();
        int i10 = i8;
        int i11 = i9;
        while (true) {
            if (i10 == 0 && i11 == 0) {
                break;
            }
            if (i10 < 0) {
                i10++;
            } else if (i10 > 0) {
                i10--;
            }
            if (i11 < 0) {
                i11++;
            } else if (i11 > 0) {
                i11--;
            }
            Bitmap bitmap3 = copyBitmapIfHardware;
            Paint paint2 = paint;
            rect3.set(0, 0, sizeAtStep(width, i, i10, i8), sizeAtStep(height, i2, i11, i9));
            boolean z2 = i10 == 0 && i11 == 0;
            boolean z3 = bitmap2 != null && bitmap2.getWidth() == i && bitmap2.getHeight() == i2;
            if (bitmap2 == null || bitmap2 == bitmap || ((z && !Api27Impl.isAlreadyF16AndLinear(bitmap2)) || (z2 && !(z3 && i5 == 0)))) {
                if (bitmap2 != bitmap && bitmap2 != null) {
                    bitmap2.recycle();
                }
                copyBitmapIfHardware = Api27Impl.createBitmapWithSourceColorspace(sizeAtStep(width, i, i10 > 0 ? i5 : i10, i8), sizeAtStep(height, i2, i11 > 0 ? i5 : i11, i9), bitmap, z && !z2);
            } else {
                copyBitmapIfHardware = bitmap2;
            }
            new Canvas(copyBitmapIfHardware).drawBitmap(bitmap3, rect2, rect3, paint2);
            rect2.set(rect3);
            bitmap2 = bitmap3;
            paint = paint2;
        }
        if (bitmap2 != bitmap && bitmap2 != null) {
            bitmap2.recycle();
        }
        return copyBitmapIfHardware;
    }

    private BitmapCompat() {
    }

    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        static boolean hasMipMap(Bitmap bitmap) {
            return bitmap.hasMipMap();
        }

        static void setHasMipMap(Bitmap bitmap, boolean z) {
            bitmap.setHasMipMap(z);
        }
    }

    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        static int getAllocationByteCount(Bitmap bitmap) {
            return bitmap.getAllocationByteCount();
        }
    }

    /* loaded from: classes.dex */
    static class Api27Impl {
        private Api27Impl() {
        }

        static Bitmap createBitmapWithSourceColorspace(int i, int i2, Bitmap bitmap, boolean z) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                config = Api31Impl.getHardwareBitmapConfig(bitmap);
            }
            return Bitmap.createBitmap(i, i2, config, bitmap.hasAlpha(), colorSpace);
        }

        static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }

        static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            return bitmap.copy(Api31Impl.getHardwareBitmapConfig(bitmap), true);
        }
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static void setPaintBlendMode(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        private Api31Impl() {
        }

        static Bitmap.Config getHardwareBitmapConfig(Bitmap bitmap) {
            if (bitmap.getHardwareBuffer().getFormat() == 22) {
                return Bitmap.Config.RGBA_F16;
            }
            return Bitmap.Config.ARGB_8888;
        }
    }
}
