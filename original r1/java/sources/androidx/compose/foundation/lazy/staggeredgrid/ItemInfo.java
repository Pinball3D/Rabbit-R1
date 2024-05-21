package androidx.compose.foundation.lazy.staggeredgrid;

import kotlin.Metadata;

/* compiled from: LazyStaggeredGridItemPlacementAnimator.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;", "", "lane", "", "span", "crossAxisOffset", "(III)V", "getCrossAxisOffset", "()I", "setCrossAxisOffset", "(I)V", "getLane", "setLane", "getSpan", "setSpan", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ItemInfo {
    private int crossAxisOffset;
    private int lane;
    private int span;

    public final int getCrossAxisOffset() {
        return this.crossAxisOffset;
    }

    public final int getLane() {
        return this.lane;
    }

    public final int getSpan() {
        return this.span;
    }

    public final void setCrossAxisOffset(int i) {
        this.crossAxisOffset = i;
    }

    public final void setLane(int i) {
        this.lane = i;
    }

    public final void setSpan(int i) {
        this.span = i;
    }

    public ItemInfo(int i, int i2, int i3) {
        this.lane = i;
        this.span = i2;
        this.crossAxisOffset = i3;
    }
}
