package com.rubensousa.dpadrecyclerview;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OnViewHolderSelectedListener.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J*\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;", "", "onViewHolderSelected", "", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "child", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "position", "", "subPosition", "onViewHolderSelectedAndAligned", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface OnViewHolderSelectedListener {

    /* compiled from: OnViewHolderSelectedListener.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onViewHolderSelected(OnViewHolderSelectedListener onViewHolderSelectedListener, RecyclerView parent, RecyclerView.ViewHolder viewHolder, int i, int i2) {
            Intrinsics.checkNotNullParameter(parent, "parent");
        }

        public static void onViewHolderSelectedAndAligned(OnViewHolderSelectedListener onViewHolderSelectedListener, RecyclerView parent, RecyclerView.ViewHolder viewHolder, int i, int i2) {
            Intrinsics.checkNotNullParameter(parent, "parent");
        }
    }

    void onViewHolderSelected(RecyclerView parent, RecyclerView.ViewHolder child, int position, int subPosition);

    void onViewHolderSelectedAndAligned(RecyclerView parent, RecyclerView.ViewHolder child, int position, int subPosition);
}
