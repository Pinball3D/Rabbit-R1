package org.webrtc;

import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class YuvHelper {
    private static native void nativeABGRToI420(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, int i5, int i6);

    private static native void nativeCopyPlane(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, int i3, int i4);

    private static native void nativeI420Copy(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, ByteBuffer byteBuffer5, int i5, ByteBuffer byteBuffer6, int i6, int i7, int i8);

    private static native void nativeI420Rotate(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, ByteBuffer byteBuffer5, int i5, ByteBuffer byteBuffer6, int i6, int i7, int i8, int i9);

    private static native void nativeI420ToNV12(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, ByteBuffer byteBuffer5, int i5, int i6, int i7);

    public static void I420Copy(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, int i5) {
        int i6 = (i4 + 1) / 2;
        int i7 = i4 * i5;
        int i8 = ((i5 + 1) / 2) * i6;
        int i9 = (i8 * 2) + i7;
        if (byteBuffer4.capacity() < i9) {
            throw new IllegalArgumentException("Expected destination buffer capacity to be at least " + i9 + " was " + byteBuffer4.capacity());
        }
        byteBuffer4.position(0);
        ByteBuffer slice = byteBuffer4.slice();
        byteBuffer4.position(i7);
        ByteBuffer slice2 = byteBuffer4.slice();
        byteBuffer4.position(i8 + i7);
        nativeI420Copy(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, slice, i4, slice2, i6, byteBuffer4.slice(), i6, i4, i5);
    }

    public static void I420ToNV12(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, int i5) {
        int i6 = (i4 + 1) / 2;
        int i7 = i4 * i5;
        int i8 = (((i5 + 1) / 2) * i6 * 2) + i7;
        if (byteBuffer4.capacity() < i8) {
            throw new IllegalArgumentException("Expected destination buffer capacity to be at least " + i8 + " was " + byteBuffer4.capacity());
        }
        byteBuffer4.position(0);
        ByteBuffer slice = byteBuffer4.slice();
        byteBuffer4.position(i7);
        nativeI420ToNV12(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, slice, i4, byteBuffer4.slice(), i6 * 2, i4, i5);
    }

    public static void I420Rotate(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, int i5, int i6) {
        int i7 = i6 % SubsamplingScaleImageView.ORIENTATION_180;
        int i8 = i7 == 0 ? i4 : i5;
        int i9 = i7 == 0 ? i5 : i4;
        int i10 = (i9 + 1) / 2;
        int i11 = (i8 + 1) / 2;
        int i12 = i9 * i8;
        int i13 = i10 * i11;
        int i14 = (i13 * 2) + i12;
        if (byteBuffer4.capacity() < i14) {
            throw new IllegalArgumentException("Expected destination buffer capacity to be at least " + i14 + " was " + byteBuffer4.capacity());
        }
        byteBuffer4.position(0);
        ByteBuffer slice = byteBuffer4.slice();
        byteBuffer4.position(i12);
        ByteBuffer slice2 = byteBuffer4.slice();
        byteBuffer4.position(i13 + i12);
        nativeI420Rotate(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, slice, i8, slice2, i11, byteBuffer4.slice(), i11, i4, i5, i6);
    }

    public static void copyPlane(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, int i3, int i4) {
        nativeCopyPlane(byteBuffer, i, byteBuffer2, i2, i3, i4);
    }

    public static void ABGRToI420(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, int i5, int i6) {
        nativeABGRToI420(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, byteBuffer4, i4, i5, i6);
    }

    public static void I420Copy(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, ByteBuffer byteBuffer5, int i5, ByteBuffer byteBuffer6, int i6, int i7, int i8) {
        nativeI420Copy(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, byteBuffer4, i4, byteBuffer5, i5, byteBuffer6, i6, i7, i8);
    }

    public static void I420ToNV12(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, ByteBuffer byteBuffer5, int i5, int i6, int i7) {
        nativeI420ToNV12(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, byteBuffer4, i4, byteBuffer5, i5, i6, i7);
    }

    public static void I420Rotate(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, ByteBuffer byteBuffer3, int i3, ByteBuffer byteBuffer4, int i4, ByteBuffer byteBuffer5, int i5, ByteBuffer byteBuffer6, int i6, int i7, int i8, int i9) {
        nativeI420Rotate(byteBuffer, i, byteBuffer2, i2, byteBuffer3, i3, byteBuffer4, i4, byteBuffer5, i5, byteBuffer6, i6, i7, i8, i9);
    }
}
