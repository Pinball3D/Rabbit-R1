package com.journeyapps.barcodescanner;

import io.sentry.protocol.ViewHierarchyNode;

/* loaded from: classes3.dex */
public class Size implements Comparable<Size> {
    public final int height;
    public final int width;

    public int hashCode() {
        return (this.width * 31) + this.height;
    }

    public Size(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public Size rotate() {
        return new Size(this.height, this.width);
    }

    public Size scale(int i, int i2) {
        return new Size((this.width * i) / i2, (this.height * i) / i2);
    }

    public Size scaleFit(Size size) {
        int i = this.width;
        int i2 = size.height;
        int i3 = i * i2;
        int i4 = size.width;
        int i5 = this.height;
        if (i3 >= i4 * i5) {
            return new Size(i4, (i5 * i4) / i);
        }
        return new Size((i * i2) / i5, i2);
    }

    public Size scaleCrop(Size size) {
        int i = this.width;
        int i2 = size.height;
        int i3 = i * i2;
        int i4 = size.width;
        int i5 = this.height;
        if (i3 <= i4 * i5) {
            return new Size(i4, (i5 * i4) / i);
        }
        return new Size((i * i2) / i5, i2);
    }

    public boolean fitsIn(Size size) {
        return this.width <= size.width && this.height <= size.height;
    }

    @Override // java.lang.Comparable
    public int compareTo(Size size) {
        int i = this.height * this.width;
        int i2 = size.height * size.width;
        if (i2 < i) {
            return 1;
        }
        return i2 > i ? -1 : 0;
    }

    public String toString() {
        return this.width + ViewHierarchyNode.JsonKeys.X + this.height;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Size size = (Size) obj;
        return this.width == size.width && this.height == size.height;
    }
}
