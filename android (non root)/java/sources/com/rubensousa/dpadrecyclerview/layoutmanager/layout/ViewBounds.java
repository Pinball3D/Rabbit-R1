package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.graphics.Rect;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ViewBounds.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0016\u001a\u00020\u0017J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J1\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0003J\u000e\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010&\u001a\u00020\"J\b\u0010'\u001a\u00020(H\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\r\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\t\"\u0004\b\u0013\u0010\u000bR\u0011\u0010\u0014\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\t¨\u0006)"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "", "left", "", "top", "right", "bottom", "(IIII)V", "getBottom", "()I", "setBottom", "(I)V", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "getLeft", "setLeft", "getRight", "setRight", "getTop", "setTop", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "asRect", "Landroid/graphics/Rect;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "offsetHorizontal", "", "dx", "offsetVertical", "dy", "setEmpty", "toString", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ViewBounds {
    private int bottom;
    private int left;
    private int right;
    private int top;

    public ViewBounds() {
        this(0, 0, 0, 0, 15, null);
    }

    public static /* synthetic */ ViewBounds copy$default(ViewBounds viewBounds, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = viewBounds.left;
        }
        if ((i5 & 2) != 0) {
            i2 = viewBounds.top;
        }
        if ((i5 & 4) != 0) {
            i3 = viewBounds.right;
        }
        if ((i5 & 8) != 0) {
            i4 = viewBounds.bottom;
        }
        return viewBounds.copy(i, i2, i3, i4);
    }

    /* renamed from: component1, reason: from getter */
    public final int getLeft() {
        return this.left;
    }

    /* renamed from: component2, reason: from getter */
    public final int getTop() {
        return this.top;
    }

    /* renamed from: component3, reason: from getter */
    public final int getRight() {
        return this.right;
    }

    /* renamed from: component4, reason: from getter */
    public final int getBottom() {
        return this.bottom;
    }

    public final ViewBounds copy(int left, int top, int right, int bottom) {
        return new ViewBounds(left, top, right, bottom);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewBounds)) {
            return false;
        }
        ViewBounds viewBounds = (ViewBounds) other;
        return this.left == viewBounds.left && this.top == viewBounds.top && this.right == viewBounds.right && this.bottom == viewBounds.bottom;
    }

    public final int getBottom() {
        return this.bottom;
    }

    public final int getHeight() {
        return this.bottom - this.top;
    }

    public final int getLeft() {
        return this.left;
    }

    public final int getRight() {
        return this.right;
    }

    public final int getTop() {
        return this.top;
    }

    public final int getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.left) * 31) + Integer.hashCode(this.top)) * 31) + Integer.hashCode(this.right)) * 31) + Integer.hashCode(this.bottom);
    }

    public final void offsetHorizontal(int dx) {
        this.left += dx;
        this.right += dx;
    }

    public final void offsetVertical(int dy) {
        this.top += dy;
        this.bottom += dy;
    }

    public final void setBottom(int i) {
        this.bottom = i;
    }

    public final void setEmpty() {
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
    }

    public final void setLeft(int i) {
        this.left = i;
    }

    public final void setRight(int i) {
        this.right = i;
    }

    public final void setTop(int i) {
        this.top = i;
    }

    public ViewBounds(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    public /* synthetic */ ViewBounds(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4);
    }

    public final Rect asRect() {
        return new Rect(this.left, this.top, this.right, this.bottom);
    }

    public String toString() {
        return "ViewBounds(left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ", height=" + getHeight() + ", width=" + getWidth() + ')';
    }
}
