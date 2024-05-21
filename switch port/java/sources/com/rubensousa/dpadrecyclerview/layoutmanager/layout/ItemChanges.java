package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import kotlin.Metadata;

/* compiled from: ItemChanges.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0016\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004J(\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020%J\b\u0010&\u001a\u00020'H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006("}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;", "", "()V", "insertionItemCount", "", "getInsertionItemCount", "()I", "setInsertionItemCount", "(I)V", "insertionPosition", "getInsertionPosition", "setInsertionPosition", "moveFromPosition", "getMoveFromPosition", "setMoveFromPosition", "moveItemCount", "getMoveItemCount", "setMoveItemCount", "moveToPosition", "getMoveToPosition", "setMoveToPosition", "removalItemCount", "getRemovalItemCount", "setRemovalItemCount", "removalPosition", "getRemovalPosition", "setRemovalPosition", "isInsertionOutOfBounds", "", "positionStart", "itemCount", "firstPos", "lastPos", "isOutOfBounds", "isRangeOutOfBounds", "isValid", "reset", "", "toString", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ItemChanges {
    private int insertionItemCount;
    private int moveItemCount;
    private int removalItemCount;
    private int insertionPosition = -1;
    private int removalPosition = -1;
    private int moveFromPosition = -1;
    private int moveToPosition = -1;

    private final boolean isInsertionOutOfBounds(int positionStart, int itemCount, int firstPos, int lastPos) {
        if (positionStart == firstPos - 1 || positionStart == lastPos + 1) {
            return false;
        }
        return itemCount + positionStart < firstPos || positionStart > lastPos;
    }

    private final boolean isRangeOutOfBounds(int positionStart, int itemCount, int firstPos, int lastPos) {
        return itemCount + positionStart < firstPos || positionStart > lastPos;
    }

    public final int getInsertionItemCount() {
        return this.insertionItemCount;
    }

    public final int getInsertionPosition() {
        return this.insertionPosition;
    }

    public final int getMoveFromPosition() {
        return this.moveFromPosition;
    }

    public final int getMoveItemCount() {
        return this.moveItemCount;
    }

    public final int getMoveToPosition() {
        return this.moveToPosition;
    }

    public final int getRemovalItemCount() {
        return this.removalItemCount;
    }

    public final int getRemovalPosition() {
        return this.removalPosition;
    }

    public final boolean isValid() {
        boolean z = this.insertionPosition != -1 && this.insertionItemCount > 0;
        int i = this.removalPosition;
        return z || (i != -1 && i > 0) || (this.moveFromPosition != -1 && this.moveToPosition != -1 && this.moveItemCount > 0);
    }

    public final void reset() {
        this.insertionPosition = -1;
        this.insertionItemCount = 0;
        this.removalPosition = -1;
        this.removalItemCount = 0;
        this.moveFromPosition = -1;
        this.moveToPosition = -1;
        this.moveItemCount = 0;
    }

    public final void setInsertionItemCount(int i) {
        this.insertionItemCount = i;
    }

    public final void setInsertionPosition(int i) {
        this.insertionPosition = i;
    }

    public final void setMoveFromPosition(int i) {
        this.moveFromPosition = i;
    }

    public final void setMoveItemCount(int i) {
        this.moveItemCount = i;
    }

    public final void setMoveToPosition(int i) {
        this.moveToPosition = i;
    }

    public final void setRemovalItemCount(int i) {
        this.removalItemCount = i;
    }

    public final void setRemovalPosition(int i) {
        this.removalPosition = i;
    }

    public final boolean isOutOfBounds(int firstPos, int lastPos) {
        if (isInsertionOutOfBounds(this.insertionPosition, this.insertionItemCount, firstPos, lastPos) && isRangeOutOfBounds(this.removalPosition, this.removalItemCount, firstPos, lastPos)) {
            return isRangeOutOfBounds(this.moveFromPosition, this.moveItemCount, firstPos, lastPos) || isRangeOutOfBounds(this.moveToPosition, this.moveItemCount, firstPos, lastPos);
        }
        return false;
    }

    public String toString() {
        return "ItemChanges(insertionPosition=" + this.insertionPosition + ", insertionItemCount=" + this.insertionItemCount + ", removalPosition=" + this.removalPosition + ", removalItemCount=" + this.removalItemCount + ", moveFromPosition=" + this.moveFromPosition + ", moveToPosition=" + this.moveToPosition + ", moveItemCount=" + this.moveItemCount + ')';
    }
}
