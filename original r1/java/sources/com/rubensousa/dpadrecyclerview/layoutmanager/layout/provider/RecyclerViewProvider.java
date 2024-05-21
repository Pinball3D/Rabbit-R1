package com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutRequest;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecyclerViewProvider.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u0010\u001a\u00020\u00072\n\u0010\u0003\u001a\u00060\u0004R\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0018\u00010\u0004R\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;", "()V", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", "clearRecycler", "", "hasNext", "", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "next", "Landroid/view/View;", "updateRecycler", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RecyclerViewProvider implements ViewProvider {
    private RecyclerView.Recycler recycler;

    public final void clearRecycler() {
        this.recycler = null;
    }

    public final void updateRecycler(RecyclerView.Recycler recycler) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        this.recycler = recycler;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ViewProvider
    public boolean hasNext(LayoutRequest layoutRequest, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(state, "state");
        return this.recycler != null && layoutRequest.getCurrentPosition() >= 0 && layoutRequest.getCurrentPosition() < state.getItemCount();
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ViewProvider
    public View next(LayoutRequest layoutRequest, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(state, "state");
        RecyclerView.Recycler recycler = this.recycler;
        if (recycler != null) {
            View viewForPosition = recycler.getViewForPosition(layoutRequest.getCurrentPosition());
            Intrinsics.checkNotNullExpressionValue(viewForPosition, "getViewForPosition(...)");
            layoutRequest.moveToNextPosition();
            return viewForPosition;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }
}
