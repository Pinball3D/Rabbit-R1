package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PreLayoutRequest.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J(\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\fJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\"\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007R\"\u0010\u0012\u001a\u0004\u0018\u00010\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0007¨\u0006 "}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;", "", "()V", "<set-?>", "", "endOffset", "getEndOffset", "()I", "extraLayoutSpace", "getExtraLayoutSpace", "firstPosition", "getFirstPosition", "Landroid/view/View;", "firstView", "getFirstView", "()Landroid/view/View;", "lastPosition", "getLastPosition", "lastView", "getLastView", "startOffset", "getStartOffset", "clear", "", "reset", "firstPos", "lastPos", "toString", "", "updateOffsets", "decoratedStart", "decoratedEnd", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PreLayoutRequest {
    private int extraLayoutSpace;
    private View firstView;
    private View lastView;
    private int firstPosition = -1;
    private int lastPosition = -1;
    private int startOffset = Integer.MAX_VALUE;
    private int endOffset = Integer.MIN_VALUE;

    public final void clear() {
        this.extraLayoutSpace = 0;
        this.startOffset = Integer.MAX_VALUE;
        this.endOffset = Integer.MIN_VALUE;
    }

    public final int getEndOffset() {
        return this.endOffset;
    }

    public final int getExtraLayoutSpace() {
        return this.extraLayoutSpace;
    }

    public final int getFirstPosition() {
        return this.firstPosition;
    }

    public final View getFirstView() {
        return this.firstView;
    }

    public final int getLastPosition() {
        return this.lastPosition;
    }

    public final View getLastView() {
        return this.lastView;
    }

    public final int getStartOffset() {
        return this.startOffset;
    }

    public final void updateOffsets(int decoratedStart, int decoratedEnd) {
        this.startOffset = Math.min(this.startOffset, decoratedStart);
        int max = Math.max(this.endOffset, decoratedEnd);
        this.endOffset = max;
        int i = this.startOffset;
        if (i == Integer.MAX_VALUE || max == Integer.MIN_VALUE || max <= i) {
            return;
        }
        this.extraLayoutSpace = Math.max(0, max - i);
    }

    public final void reset(int firstPos, View firstView, int lastPos, View lastView) {
        Intrinsics.checkNotNullParameter(firstView, "firstView");
        clear();
        this.firstPosition = firstPos;
        this.lastPosition = lastPos;
        this.firstView = firstView;
        this.lastView = lastView;
    }

    public String toString() {
        return "PreLayoutRequest(firstPosition=" + this.firstPosition + ", lastPosition=" + this.lastPosition + ", startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + ", extraLayoutSpace=" + this.extraLayoutSpace + ')';
    }
}
