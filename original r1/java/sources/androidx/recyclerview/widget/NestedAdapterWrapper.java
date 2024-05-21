package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class NestedAdapterWrapper {
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    private RecyclerView.AdapterDataObserver mAdapterObserver = new RecyclerView.AdapterDataObserver() { // from class: androidx.recyclerview.widget.NestedAdapterWrapper.1
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCachedItemCount = nestedAdapterWrapper.adapter.getItemCount();
            NestedAdapterWrapper.this.mCallback.onChanged(NestedAdapterWrapper.this);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            NestedAdapterWrapper.this.mCallback.onItemRangeChanged(NestedAdapterWrapper.this, i, i2, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            NestedAdapterWrapper.this.mCallback.onItemRangeChanged(NestedAdapterWrapper.this, i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            NestedAdapterWrapper.this.mCachedItemCount += i2;
            NestedAdapterWrapper.this.mCallback.onItemRangeInserted(NestedAdapterWrapper.this, i, i2);
            if (NestedAdapterWrapper.this.mCachedItemCount <= 0 || NestedAdapterWrapper.this.adapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            NestedAdapterWrapper.this.mCallback.onStateRestorationPolicyChanged(NestedAdapterWrapper.this);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            NestedAdapterWrapper.this.mCachedItemCount -= i2;
            NestedAdapterWrapper.this.mCallback.onItemRangeRemoved(NestedAdapterWrapper.this, i, i2);
            if (NestedAdapterWrapper.this.mCachedItemCount >= 1 || NestedAdapterWrapper.this.adapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            NestedAdapterWrapper.this.mCallback.onStateRestorationPolicyChanged(NestedAdapterWrapper.this);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            Preconditions.checkArgument(i3 == 1, "moving more than 1 item is not supported in RecyclerView");
            NestedAdapterWrapper.this.mCallback.onItemRangeMoved(NestedAdapterWrapper.this, i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            NestedAdapterWrapper.this.mCallback.onStateRestorationPolicyChanged(NestedAdapterWrapper.this);
        }
    };
    int mCachedItemCount;
    final Callback mCallback;
    private final StableIdStorage.StableIdLookup mStableIdLookup;
    private final ViewTypeStorage.ViewTypeLookup mViewTypeLookup;

    /* loaded from: classes2.dex */
    interface Callback {
        void onChanged(NestedAdapterWrapper nestedAdapterWrapper);

        void onItemRangeChanged(NestedAdapterWrapper nestedAdapterWrapper, int i, int i2);

        void onItemRangeChanged(NestedAdapterWrapper nestedAdapterWrapper, int i, int i2, Object obj);

        void onItemRangeInserted(NestedAdapterWrapper nestedAdapterWrapper, int i, int i2);

        void onItemRangeMoved(NestedAdapterWrapper nestedAdapterWrapper, int i, int i2);

        void onItemRangeRemoved(NestedAdapterWrapper nestedAdapterWrapper, int i, int i2);

        void onStateRestorationPolicyChanged(NestedAdapterWrapper nestedAdapterWrapper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCachedItemCount() {
        return this.mCachedItemCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NestedAdapterWrapper(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter, Callback callback, ViewTypeStorage viewTypeStorage, StableIdStorage.StableIdLookup stableIdLookup) {
        this.adapter = adapter;
        this.mCallback = callback;
        this.mViewTypeLookup = viewTypeStorage.createViewTypeWrapper(this);
        this.mStableIdLookup = stableIdLookup;
        this.mCachedItemCount = adapter.getItemCount();
        adapter.registerAdapterDataObserver(this.mAdapterObserver);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
        this.adapter.unregisterAdapterDataObserver(this.mAdapterObserver);
        this.mViewTypeLookup.dispose();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getItemViewType(int i) {
        return this.mViewTypeLookup.localToGlobal(this.adapter.getItemViewType(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.adapter.onCreateViewHolder(viewGroup, this.mViewTypeLookup.globalToLocal(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        this.adapter.bindViewHolder(viewHolder, i);
    }

    public long getItemId(int i) {
        return this.mStableIdLookup.localToGlobal(this.adapter.getItemId(i));
    }
}
