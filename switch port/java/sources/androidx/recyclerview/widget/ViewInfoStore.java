package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ViewInfoStore {
    private static final boolean DEBUG = false;
    final SimpleArrayMap<RecyclerView.ViewHolder, InfoRecord> mLayoutHolderMap = new SimpleArrayMap<>();
    final LongSparseArray<RecyclerView.ViewHolder> mOldChangedHolders = new LongSparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface ProcessCallback {
        void processAppeared(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processDisappeared(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processPersistent(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void unused(RecyclerView.ViewHolder viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.mLayoutHolderMap.clear();
        this.mOldChangedHolders.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToPreLayout(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord);
        }
        infoRecord.preInfo = itemHolderInfo;
        infoRecord.flags |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDisappearing(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        return (infoRecord == null || (infoRecord.flags & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.ItemAnimator.ItemHolderInfo popFromPreLayout(RecyclerView.ViewHolder viewHolder) {
        return popFromLayoutStep(viewHolder, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.ItemAnimator.ItemHolderInfo popFromPostLayout(RecyclerView.ViewHolder viewHolder) {
        return popFromLayoutStep(viewHolder, 8);
    }

    private RecyclerView.ItemAnimator.ItemHolderInfo popFromLayoutStep(RecyclerView.ViewHolder viewHolder, int i) {
        InfoRecord valueAt;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        int indexOfKey = this.mLayoutHolderMap.indexOfKey(viewHolder);
        if (indexOfKey < 0 || (valueAt = this.mLayoutHolderMap.valueAt(indexOfKey)) == null || (valueAt.flags & i) == 0) {
            return null;
        }
        valueAt.flags &= ~i;
        if (i == 4) {
            itemHolderInfo = valueAt.preInfo;
        } else if (i == 8) {
            itemHolderInfo = valueAt.postInfo;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((valueAt.flags & 12) == 0) {
            this.mLayoutHolderMap.removeAt(indexOfKey);
            InfoRecord.recycle(valueAt);
        }
        return itemHolderInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToOldChangeHolders(long j, RecyclerView.ViewHolder viewHolder) {
        this.mOldChangedHolders.put(j, viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToAppearedInPreLayoutHolders(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord);
        }
        infoRecord.flags |= 2;
        infoRecord.preInfo = itemHolderInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInPreLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        return (infoRecord == null || (infoRecord.flags & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.ViewHolder getFromOldChangeHolders(long j) {
        return this.mOldChangedHolders.get(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToPostLayout(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord);
        }
        infoRecord.postInfo = itemHolderInfo;
        infoRecord.flags |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord);
        }
        infoRecord.flags |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeFromDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.flags &= -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void process(ProcessCallback processCallback) {
        for (int size = this.mLayoutHolderMap.getSize() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder keyAt = this.mLayoutHolderMap.keyAt(size);
            InfoRecord removeAt = this.mLayoutHolderMap.removeAt(size);
            if ((removeAt.flags & 3) == 3) {
                processCallback.unused(keyAt);
            } else if ((removeAt.flags & 1) != 0) {
                if (removeAt.preInfo == null) {
                    processCallback.unused(keyAt);
                } else {
                    processCallback.processDisappeared(keyAt, removeAt.preInfo, removeAt.postInfo);
                }
            } else if ((removeAt.flags & 14) == 14) {
                processCallback.processAppeared(keyAt, removeAt.preInfo, removeAt.postInfo);
            } else if ((removeAt.flags & 12) == 12) {
                processCallback.processPersistent(keyAt, removeAt.preInfo, removeAt.postInfo);
            } else if ((removeAt.flags & 4) != 0) {
                processCallback.processDisappeared(keyAt, removeAt.preInfo, null);
            } else if ((removeAt.flags & 8) != 0) {
                processCallback.processAppeared(keyAt, removeAt.preInfo, removeAt.postInfo);
            } else {
                int i = removeAt.flags;
            }
            InfoRecord.recycle(removeAt);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeViewHolder(RecyclerView.ViewHolder viewHolder) {
        int size = this.mOldChangedHolders.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (viewHolder == this.mOldChangedHolders.valueAt(size)) {
                this.mOldChangedHolders.removeAt(size);
                break;
            }
            size--;
        }
        InfoRecord remove = this.mLayoutHolderMap.remove(viewHolder);
        if (remove != null) {
            InfoRecord.recycle(remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDetach() {
        InfoRecord.drainCache();
    }

    public void onViewDetached(RecyclerView.ViewHolder viewHolder) {
        removeFromDisappearedInLayout(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class InfoRecord {
        static final int FLAG_APPEAR = 2;
        static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
        static final int FLAG_APPEAR_PRE_AND_POST = 14;
        static final int FLAG_DISAPPEARED = 1;
        static final int FLAG_POST = 8;
        static final int FLAG_PRE = 4;
        static final int FLAG_PRE_AND_POST = 12;
        static Pools.Pool<InfoRecord> sPool = new Pools.SimplePool(20);
        int flags;
        RecyclerView.ItemAnimator.ItemHolderInfo postInfo;
        RecyclerView.ItemAnimator.ItemHolderInfo preInfo;

        private InfoRecord() {
        }

        static InfoRecord obtain() {
            InfoRecord acquire = sPool.acquire();
            return acquire == null ? new InfoRecord() : acquire;
        }

        static void recycle(InfoRecord infoRecord) {
            infoRecord.flags = 0;
            infoRecord.preInfo = null;
            infoRecord.postInfo = null;
            sPool.release(infoRecord);
        }

        static void drainCache() {
            do {
            } while (sPool.acquire() != null);
        }
    }
}
