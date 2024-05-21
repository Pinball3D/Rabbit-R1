package androidx.compose.ui.graphics;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PixelMap.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ)\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0086\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Landroidx/compose/ui/graphics/PixelMap;", "", "buffer", "", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "bufferOffset", "stride", "([IIIII)V", "getBuffer", "()[I", "getBufferOffset", "()I", "getHeight", "getStride", "getWidth", "get", "Landroidx/compose/ui/graphics/Color;", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "get-WaAFU9c", "(II)J", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PixelMap {
    private final int[] buffer;
    private final int bufferOffset;
    private final int height;
    private final int stride;
    private final int width;

    public final int[] getBuffer() {
        return this.buffer;
    }

    public final int getBufferOffset() {
        return this.bufferOffset;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getStride() {
        return this.stride;
    }

    public final int getWidth() {
        return this.width;
    }

    public PixelMap(int[] buffer, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.buffer = buffer;
        this.width = i;
        this.height = i2;
        this.bufferOffset = i3;
        this.stride = i4;
    }

    /* renamed from: get-WaAFU9c, reason: not valid java name */
    public final long m2929getWaAFU9c(int x, int y) {
        return ColorKt.Color(this.buffer[this.bufferOffset + (y * this.stride) + x]);
    }
}
