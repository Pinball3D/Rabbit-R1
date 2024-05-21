package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageBitmap.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\u001aA\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u001aP\u0010\r\u001a\u00020\u000e*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"ImageBitmap", "Landroidx/compose/ui/graphics/ImageBitmap;", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "config", "Landroidx/compose/ui/graphics/ImageBitmapConfig;", "hasAlpha", "", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "ImageBitmap-x__-hDU", "(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/ImageBitmap;", "toPixelMap", "Landroidx/compose/ui/graphics/PixelMap;", "startX", "startY", "buffer", "", "bufferOffset", "stride", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageBitmapKt {
    public static /* synthetic */ PixelMap toPixelMap$default(ImageBitmap imageBitmap, int i, int i2, int i3, int i4, int[] iArr, int i5, int i6, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i = 0;
        }
        if ((i7 & 2) != 0) {
            i2 = 0;
        }
        if ((i7 & 4) != 0) {
            i3 = imageBitmap.getWidth();
        }
        if ((i7 & 8) != 0) {
            i4 = imageBitmap.getHeight();
        }
        if ((i7 & 16) != 0) {
            iArr = new int[i3 * i4];
        }
        if ((i7 & 32) != 0) {
            i5 = 0;
        }
        if ((i7 & 64) != 0) {
            i6 = i3;
        }
        return toPixelMap(imageBitmap, i, i2, i3, i4, iArr, i5, i6);
    }

    public static final PixelMap toPixelMap(ImageBitmap imageBitmap, int i, int i2, int i3, int i4, int[] buffer, int i5, int i6) {
        Intrinsics.checkNotNullParameter(imageBitmap, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        imageBitmap.readPixels(buffer, i, i2, i3, i4, i5, i6);
        return new PixelMap(buffer, i3, i4, i5, i6);
    }

    /* renamed from: ImageBitmap-x__-hDU$default, reason: not valid java name */
    public static /* synthetic */ ImageBitmap m2861ImageBitmapx__hDU$default(int i, int i2, int i3, boolean z, ColorSpace colorSpace, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = ImageBitmapConfig.INSTANCE.m2856getArgb8888_sVssgQ();
        }
        if ((i4 & 8) != 0) {
            z = true;
        }
        if ((i4 & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return m2860ImageBitmapx__hDU(i, i2, i3, z, colorSpace);
    }

    /* renamed from: ImageBitmap-x__-hDU, reason: not valid java name */
    public static final ImageBitmap m2860ImageBitmapx__hDU(int i, int i2, int i3, boolean z, ColorSpace colorSpace) {
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        return AndroidImageBitmap_androidKt.m2509ActualImageBitmapx__hDU(i, i2, i3, z, colorSpace);
    }
}
