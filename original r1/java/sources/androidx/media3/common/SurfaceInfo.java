package androidx.media3.common;

import android.view.Surface;
import androidx.media3.common.util.Assertions;

/* loaded from: classes2.dex */
public final class SurfaceInfo {
    public final int height;
    public final int orientationDegrees;
    public final Surface surface;
    public final int width;

    public SurfaceInfo(Surface surface, int i, int i2) {
        this(surface, i, i2, 0);
    }

    public SurfaceInfo(Surface surface, int i, int i2, int i3) {
        Assertions.checkArgument(i3 == 0 || i3 == 90 || i3 == 180 || i3 == 270, "orientationDegrees must be 0, 90, 180, or 270");
        this.surface = surface;
        this.width = i;
        this.height = i2;
        this.orientationDegrees = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceInfo)) {
            return false;
        }
        SurfaceInfo surfaceInfo = (SurfaceInfo) obj;
        return this.width == surfaceInfo.width && this.height == surfaceInfo.height && this.orientationDegrees == surfaceInfo.orientationDegrees && this.surface.equals(surfaceInfo.surface);
    }

    public int hashCode() {
        return (((((this.surface.hashCode() * 31) + this.width) * 31) + this.height) * 31) + this.orientationDegrees;
    }
}
