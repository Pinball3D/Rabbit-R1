package com.rubensousa.dpadrecyclerview.spacing;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadSpacingDecoration.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ0\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u0012\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "()V", "spacingLookup", "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "layoutPosition", "", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "setSpacingLookup", "shouldApplySpacingForViewHolder", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemCount", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class DpadSpacingDecoration extends RecyclerView.ItemDecoration {
    private DpadSpacingLookup spacingLookup;

    public abstract void getItemOffsets(Rect outRect, View view, int layoutPosition, DpadRecyclerView parent, RecyclerView.State state);

    public final void setSpacingLookup(DpadSpacingLookup spacingLookup) {
        this.spacingLookup = spacingLookup;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        int viewLayoutPosition = ((RecyclerView.LayoutParams) layoutParams).getViewLayoutPosition();
        RecyclerView.ViewHolder childViewHolder = parent.getChildViewHolder(view);
        Intrinsics.checkNotNull(childViewHolder);
        if (shouldApplySpacingForViewHolder(childViewHolder, state.getItemCount())) {
            getItemOffsets(outRect, view, viewLayoutPosition, (DpadRecyclerView) parent, state);
        } else {
            outRect.setEmpty();
        }
    }

    private final boolean shouldApplySpacingForViewHolder(RecyclerView.ViewHolder viewHolder, int itemCount) {
        DpadSpacingLookup dpadSpacingLookup = this.spacingLookup;
        if (dpadSpacingLookup != null) {
            return dpadSpacingLookup.shouldApplySpacing(viewHolder, itemCount);
        }
        return true;
    }
}
