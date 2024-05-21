package androidx.recyclerview.widget;

import android.util.Pair;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class ConcatAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    static final String TAG = "ConcatAdapter";
    private final ConcatAdapterController mController;

    @SafeVarargs
    public ConcatAdapter(RecyclerView.Adapter<? extends RecyclerView.ViewHolder>... adapterArr) {
        this(Config.DEFAULT, adapterArr);
    }

    @SafeVarargs
    public ConcatAdapter(Config config, RecyclerView.Adapter<? extends RecyclerView.ViewHolder>... adapterArr) {
        this(config, (List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>>) Arrays.asList(adapterArr));
    }

    public ConcatAdapter(List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> list) {
        this(Config.DEFAULT, list);
    }

    public ConcatAdapter(Config config, List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> list) {
        this.mController = new ConcatAdapterController(this, config);
        Iterator<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> it = list.iterator();
        while (it.hasNext()) {
            addAdapter(it.next());
        }
        super.setHasStableIds(this.mController.hasStableIds());
    }

    public boolean addAdapter(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.mController.addAdapter(adapter);
    }

    public boolean addAdapter(int i, RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.mController.addAdapter(i, adapter);
    }

    public boolean removeAdapter(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.mController.removeAdapter(adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.mController.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.mController.onCreateViewHolder(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        this.mController.onBindViewHolder(viewHolder, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        throw new UnsupportedOperationException("Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.mController.getItemId(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void internalSetStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        super.setStateRestorationPolicy(stateRestorationPolicy);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mController.getTotalCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        return this.mController.onFailedToRecycleView(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        this.mController.onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        this.mController.onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        this.mController.onViewRecycled(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mController.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mController.onDetachedFromRecyclerView(recyclerView);
    }

    public List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> getAdapters() {
        return Collections.unmodifiableList(this.mController.getCopyOfAdapters());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int findRelativeAdapterPositionIn(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        return this.mController.getLocalAdapterPosition(adapter, viewHolder, i);
    }

    public Pair<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>, Integer> getWrappedAdapterAndPosition(int i) {
        return this.mController.getWrappedAdapterAndPosition(i);
    }

    /* loaded from: classes2.dex */
    public static final class Config {
        public static final Config DEFAULT = new Config(true, StableIdMode.NO_STABLE_IDS);
        public final boolean isolateViewTypes;
        public final StableIdMode stableIdMode;

        /* loaded from: classes2.dex */
        public enum StableIdMode {
            NO_STABLE_IDS,
            ISOLATED_STABLE_IDS,
            SHARED_STABLE_IDS
        }

        Config(boolean z, StableIdMode stableIdMode) {
            this.isolateViewTypes = z;
            this.stableIdMode = stableIdMode;
        }

        /* loaded from: classes2.dex */
        public static final class Builder {
            private boolean mIsolateViewTypes = Config.DEFAULT.isolateViewTypes;
            private StableIdMode mStableIdMode = Config.DEFAULT.stableIdMode;

            public Builder setIsolateViewTypes(boolean z) {
                this.mIsolateViewTypes = z;
                return this;
            }

            public Builder setStableIdMode(StableIdMode stableIdMode) {
                this.mStableIdMode = stableIdMode;
                return this;
            }

            public Config build() {
                return new Config(this.mIsolateViewTypes, this.mStableIdMode);
            }
        }
    }
}
