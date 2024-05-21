package com.google.zxing;

import io.sentry.protocol.ViewHierarchyNode;

/* loaded from: classes3.dex */
public final class Dimension {
    private final int height;
    private final int width;

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public Dimension(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.width = i;
        this.height = i2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Dimension) {
            Dimension dimension = (Dimension) obj;
            if (this.width == dimension.width && this.height == dimension.height) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return this.width + ViewHierarchyNode.JsonKeys.X + this.height;
    }
}
