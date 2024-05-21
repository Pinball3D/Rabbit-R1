package androidx.compose.foundation.lazy.grid;

import kotlin.Metadata;

/* compiled from: LazyGridItemPlacementAnimator.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/lazy/grid/ItemInfo;", "", "crossAxisSize", "", "crossAxisOffset", "(II)V", "getCrossAxisOffset", "()I", "setCrossAxisOffset", "(I)V", "getCrossAxisSize", "setCrossAxisSize", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ItemInfo {
    private int crossAxisOffset;
    private int crossAxisSize;

    public final int getCrossAxisOffset() {
        return this.crossAxisOffset;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    public final void setCrossAxisOffset(int i) {
        this.crossAxisOffset = i;
    }

    public final void setCrossAxisSize(int i) {
        this.crossAxisSize = i;
    }

    public ItemInfo(int i, int i2) {
        this.crossAxisSize = i;
        this.crossAxisOffset = i2;
    }
}
