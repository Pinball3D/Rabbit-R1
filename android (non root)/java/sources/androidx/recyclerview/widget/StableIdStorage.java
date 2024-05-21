package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;

/* loaded from: classes2.dex */
interface StableIdStorage {

    /* loaded from: classes2.dex */
    public static class NoStableIdStorage implements StableIdStorage {
        private final StableIdLookup mNoIdLookup = new StableIdLookup() { // from class: androidx.recyclerview.widget.StableIdStorage.NoStableIdStorage.1
            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return -1L;
            }
        };

        @Override // androidx.recyclerview.widget.StableIdStorage
        public StableIdLookup createStableIdLookup() {
            return this.mNoIdLookup;
        }
    }

    /* loaded from: classes2.dex */
    public static class SharedPoolStableIdStorage implements StableIdStorage {
        private final StableIdLookup mSameIdLookup = new StableIdLookup() { // from class: androidx.recyclerview.widget.StableIdStorage.SharedPoolStableIdStorage.1
            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return j;
            }
        };

        @Override // androidx.recyclerview.widget.StableIdStorage
        public StableIdLookup createStableIdLookup() {
            return this.mSameIdLookup;
        }
    }

    /* loaded from: classes2.dex */
    public interface StableIdLookup {
        long localToGlobal(long j);
    }

    StableIdLookup createStableIdLookup();

    /* loaded from: classes2.dex */
    public static class IsolatedStableIdStorage implements StableIdStorage {
        long mNextStableId = 0;

        long obtainId() {
            long j = this.mNextStableId;
            this.mNextStableId = 1 + j;
            return j;
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        public StableIdLookup createStableIdLookup() {
            return new WrapperStableIdLookup();
        }

        /* loaded from: classes2.dex */
        class WrapperStableIdLookup implements StableIdLookup {
            private final LongSparseArray<Long> mLocalToGlobalLookup = new LongSparseArray<>();

            WrapperStableIdLookup() {
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                Long l = this.mLocalToGlobalLookup.get(j);
                if (l == null) {
                    l = Long.valueOf(IsolatedStableIdStorage.this.obtainId());
                    this.mLocalToGlobalLookup.put(j, l);
                }
                return l.longValue();
            }
        }
    }
}
