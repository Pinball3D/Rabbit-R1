package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidImageBitmap.android.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u00020\r*\u00020\u0004H\u0001¢\u0006\u0002\b\u0011\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/graphics/Api26Bitmap;", "", "()V", "createBitmap", "Landroid/graphics/Bitmap;", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "bitmapConfig", "Landroidx/compose/ui/graphics/ImageBitmapConfig;", "hasAlpha", "", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "createBitmap-x__-hDU$ui_graphics_release", "(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/Bitmap;", "composeColorSpace", "composeColorSpace$ui_graphics_release", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Api26Bitmap {
    public static final Api26Bitmap INSTANCE = new Api26Bitmap();

    private Api26Bitmap() {
    }

    @JvmStatic
    /* renamed from: createBitmap-x__-hDU$ui_graphics_release */
    public static final Bitmap m2548createBitmapx__hDU$ui_graphics_release(int r7, int r8, int bitmapConfig, boolean hasAlpha, ColorSpace colorSpace) {
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap((DisplayMetrics) null, r7, r8, AndroidImageBitmap_androidKt.m2510toBitmapConfig1JJdX4A(bitmapConfig), hasAlpha, AndroidColorSpace_androidKt.toAndroidColorSpace(colorSpace));
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(\n          …oidColorSpace()\n        )");
        return createBitmap;
    }

    @JvmStatic
    public static final ColorSpace composeColorSpace$ui_graphics_release(Bitmap bitmap) {
        ColorSpace composeColorSpace;
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        android.graphics.ColorSpace colorSpace = bitmap.getColorSpace();
        return (colorSpace == null || (composeColorSpace = AndroidColorSpace_androidKt.toComposeColorSpace(colorSpace)) == null) ? ColorSpaces.INSTANCE.getSrgb() : composeColorSpace;
    }
}
