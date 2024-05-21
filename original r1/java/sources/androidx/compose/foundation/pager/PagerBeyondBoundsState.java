package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.ui.layout.Remeasurement;
import io.sentry.protocol.SentryThread;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PagerBeyondBoundsModifier.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\tR\u0014\u0010\u0010\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/pager/PagerBeyondBoundsState;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/pager/PagerState;", "beyondBoundsPageCount", "", "(Landroidx/compose/foundation/pager/PagerState;I)V", "firstPlacedIndex", "getFirstPlacedIndex", "()I", "hasVisibleItems", "", "getHasVisibleItems", "()Z", "itemCount", "getItemCount", "lastPlacedIndex", "getLastPlacedIndex", "remeasure", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    private final int beyondBoundsPageCount;
    private final PagerState state;

    public PagerBeyondBoundsState(PagerState state, int i) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
        this.beyondBoundsPageCount = i;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public void remeasure() {
        Remeasurement remeasurement$foundation_release = this.state.getRemeasurement$foundation_release();
        if (remeasurement$foundation_release != null) {
            remeasurement$foundation_release.forceRemeasure();
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public int getItemCount() {
        return this.state.getLayoutInfo$foundation_release().getPagesCount();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public boolean getHasVisibleItems() {
        return !this.state.getLayoutInfo$foundation_release().getVisiblePagesInfo().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public int getFirstPlacedIndex() {
        return Math.max(0, this.state.getFirstVisiblePage$foundation_release() - this.beyondBoundsPageCount);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public int getLastPlacedIndex() {
        return Math.min(getItemCount() - 1, ((PageInfo) CollectionsKt.last((List) this.state.getLayoutInfo$foundation_release().getVisiblePagesInfo())).getIndex() + this.beyondBoundsPageCount);
    }
}
