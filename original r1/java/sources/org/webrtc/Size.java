package org.webrtc;

import io.sentry.protocol.ViewHierarchyNode;

/* loaded from: classes3.dex */
public class Size {
    public int height;
    public int width;

    public int hashCode() {
        return (this.width * 65537) + 1 + this.height;
    }

    public Size(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public String toString() {
        return this.width + ViewHierarchyNode.JsonKeys.X + this.height;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.width == size.width && this.height == size.height;
    }
}
