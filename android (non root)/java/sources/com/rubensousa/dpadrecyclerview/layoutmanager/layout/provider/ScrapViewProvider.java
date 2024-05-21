package com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider;

import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutRequest;
import io.sentry.protocol.SentryThread;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ScrapViewProvider.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0014R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;", "()V", "scrap", "Landroidx/collection/SparseArrayCompat;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "findNextViewHolder", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", "getScrap", "hasNext", "", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "next", "Landroid/view/View;", "setNextLayoutPosition", "", "updateScrap", "newScrap", "", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScrapViewProvider implements ViewProvider {
    private final SparseArrayCompat<RecyclerView.ViewHolder> scrap = new SparseArrayCompat<>(0, 1, null);

    public final SparseArrayCompat<RecyclerView.ViewHolder> getScrap() {
        return this.scrap;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ViewProvider
    public boolean hasNext(LayoutRequest layoutRequest, RecyclerView.State state) {
        RecyclerView.ViewHolder findNextViewHolder;
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.scrap.isEmpty() || (findNextViewHolder = findNextViewHolder(layoutRequest)) == null) {
            return false;
        }
        this.scrap.remove(findNextViewHolder.getLayoutPosition());
        this.scrap.put(layoutRequest.getCurrentPosition(), findNextViewHolder);
        return true;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ViewProvider
    public View next(LayoutRequest layoutRequest, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(state, "state");
        RecyclerView.ViewHolder findNextViewHolder = findNextViewHolder(layoutRequest);
        if (findNextViewHolder == null) {
            throw new IllegalStateException();
        }
        this.scrap.remove(layoutRequest.getCurrentPosition());
        setNextLayoutPosition(layoutRequest);
        View itemView = findNextViewHolder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        return itemView;
    }

    public final void updateScrap(List<? extends RecyclerView.ViewHolder> newScrap) {
        this.scrap.clear();
        if (newScrap != null) {
            for (RecyclerView.ViewHolder viewHolder : newScrap) {
                ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                if (!((RecyclerView.LayoutParams) layoutParams).isItemRemoved()) {
                    this.scrap.put(viewHolder.getLayoutPosition(), viewHolder);
                }
            }
        }
    }

    public final void setNextLayoutPosition(LayoutRequest layoutRequest) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        RecyclerView.ViewHolder findNextViewHolder = findNextViewHolder(layoutRequest);
        if (findNextViewHolder == null) {
            layoutRequest.setCurrentPosition(-1);
        } else {
            layoutRequest.setCurrentPosition(findNextViewHolder.getLayoutPosition());
        }
    }

    private final RecyclerView.ViewHolder findNextViewHolder(LayoutRequest layoutRequest) {
        RecyclerView.ViewHolder viewHolder = this.scrap.get(layoutRequest.getCurrentPosition());
        if (viewHolder != null) {
            return viewHolder;
        }
        SparseArrayCompat<RecyclerView.ViewHolder> sparseArrayCompat = this.scrap;
        int size = sparseArrayCompat.size();
        RecyclerView.ViewHolder viewHolder2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = sparseArrayCompat.keyAt(i2);
            RecyclerView.ViewHolder valueAt = sparseArrayCompat.valueAt(i2);
            int currentPosition = (keyAt - layoutRequest.getCurrentPosition()) * layoutRequest.getCurrentItemDirection().getValue();
            if (currentPosition >= 0 && currentPosition < i) {
                i = currentPosition;
                viewHolder2 = valueAt;
            }
        }
        return viewHolder2;
    }
}
