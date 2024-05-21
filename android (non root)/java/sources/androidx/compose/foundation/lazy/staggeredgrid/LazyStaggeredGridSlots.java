package androidx.compose.foundation.lazy.staggeredgrid;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGrid.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "", "positions", "", "sizes", "([I[I)V", "getPositions", "()[I", "getSizes", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridSlots {
    private final int[] positions;
    private final int[] sizes;

    public final int[] getPositions() {
        return this.positions;
    }

    public final int[] getSizes() {
        return this.sizes;
    }

    public LazyStaggeredGridSlots(int[] positions, int[] sizes) {
        Intrinsics.checkNotNullParameter(positions, "positions");
        Intrinsics.checkNotNullParameter(sizes, "sizes");
        this.positions = positions;
        this.sizes = sizes;
    }
}
