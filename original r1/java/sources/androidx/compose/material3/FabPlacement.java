package androidx.compose.material3;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;

/* compiled from: Scaffold.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/compose/material3/FabPlacement;", "", "left", "", ViewHierarchyNode.JsonKeys.WIDTH, ViewHierarchyNode.JsonKeys.HEIGHT, "(III)V", "getHeight", "()I", "getLeft", "getWidth", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FabPlacement {
    private final int height;
    private final int left;
    private final int width;

    public final int getHeight() {
        return this.height;
    }

    public final int getLeft() {
        return this.left;
    }

    public final int getWidth() {
        return this.width;
    }

    public FabPlacement(int i, int i2, int i3) {
        this.left = i;
        this.width = i2;
        this.height = i3;
    }
}
