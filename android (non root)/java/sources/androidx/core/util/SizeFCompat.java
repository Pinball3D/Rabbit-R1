package androidx.core.util;

import android.util.SizeF;
import io.sentry.protocol.ViewHierarchyNode;

/* loaded from: classes.dex */
public final class SizeFCompat {
    private final float mHeight;
    private final float mWidth;

    public float getHeight() {
        return this.mHeight;
    }

    public float getWidth() {
        return this.mWidth;
    }

    public SizeFCompat(float f, float f2) {
        this.mWidth = Preconditions.checkArgumentFinite(f, ViewHierarchyNode.JsonKeys.WIDTH);
        this.mHeight = Preconditions.checkArgumentFinite(f2, ViewHierarchyNode.JsonKeys.HEIGHT);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeFCompat)) {
            return false;
        }
        SizeFCompat sizeFCompat = (SizeFCompat) obj;
        return sizeFCompat.mWidth == this.mWidth && sizeFCompat.mHeight == this.mHeight;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.mHeight) ^ Float.floatToIntBits(this.mWidth);
    }

    public String toString() {
        return this.mWidth + ViewHierarchyNode.JsonKeys.X + this.mHeight;
    }

    public SizeF toSizeF() {
        return Api21Impl.toSizeF(this);
    }

    public static SizeFCompat toSizeFCompat(SizeF sizeF) {
        return Api21Impl.toSizeFCompat(sizeF);
    }

    /* loaded from: classes.dex */
    private static final class Api21Impl {
        private Api21Impl() {
        }

        static SizeFCompat toSizeFCompat(SizeF sizeF) {
            Preconditions.checkNotNull(sizeF);
            return new SizeFCompat(sizeF.getWidth(), sizeF.getHeight());
        }

        static SizeF toSizeF(SizeFCompat sizeFCompat) {
            Preconditions.checkNotNull(sizeFCompat);
            return new SizeF(sizeFCompat.getWidth(), sizeFCompat.getHeight());
        }
    }
}
