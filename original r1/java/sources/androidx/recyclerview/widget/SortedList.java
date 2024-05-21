package androidx.recyclerview.widget;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

/* loaded from: classes2.dex */
public class SortedList<T> {
    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    T[] mData;
    private int mNewDataStart;
    private T[] mOldData;
    private int mOldDataSize;
    private int mOldDataStart;
    private int mSize;
    private final Class<T> mTClass;

    public int size() {
        return this.mSize;
    }

    public SortedList(Class<T> cls, Callback<T> callback) {
        this(cls, callback, 10);
    }

    public SortedList(Class<T> cls, Callback<T> callback, int i) {
        this.mTClass = cls;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        this.mCallback = callback;
        this.mSize = 0;
    }

    public int add(T t) {
        throwIfInMutationOperation();
        return add(t, true);
    }

    public void addAll(T[] tArr, boolean z) {
        throwIfInMutationOperation();
        if (tArr.length == 0) {
            return;
        }
        if (z) {
            addAllInternal(tArr);
        } else {
            addAllInternal(copyArray(tArr));
        }
    }

    public void addAll(T... tArr) {
        addAll(tArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, collection.size())), true);
    }

    public void replaceAll(T[] tArr, boolean z) {
        throwIfInMutationOperation();
        if (z) {
            replaceAllInternal(tArr);
        } else {
            replaceAllInternal(copyArray(tArr));
        }
    }

    public void replaceAll(T... tArr) {
        replaceAll(tArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(Collection<T> collection) {
        replaceAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, collection.size())), true);
    }

    private void addAllInternal(T[] tArr) {
        if (tArr.length < 1) {
            return;
        }
        int sortAndDedup = sortAndDedup(tArr);
        if (this.mSize == 0) {
            this.mData = tArr;
            this.mSize = sortAndDedup;
            this.mCallback.onInserted(0, sortAndDedup);
            return;
        }
        merge(tArr, sortAndDedup);
    }

    private void replaceAllInternal(T[] tArr) {
        boolean z = !(this.mCallback instanceof BatchedCallback);
        if (z) {
            beginBatchedUpdates();
        }
        this.mOldDataStart = 0;
        this.mOldDataSize = this.mSize;
        this.mOldData = this.mData;
        this.mNewDataStart = 0;
        int sortAndDedup = sortAndDedup(tArr);
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, sortAndDedup));
        while (true) {
            int i = this.mNewDataStart;
            if (i >= sortAndDedup && this.mOldDataStart >= this.mOldDataSize) {
                break;
            }
            int i2 = this.mOldDataStart;
            int i3 = this.mOldDataSize;
            if (i2 >= i3) {
                int i4 = sortAndDedup - i;
                System.arraycopy(tArr, i, this.mData, i, i4);
                this.mNewDataStart += i4;
                this.mSize += i4;
                this.mCallback.onInserted(i, i4);
                break;
            }
            if (i >= sortAndDedup) {
                int i5 = i3 - i2;
                this.mSize -= i5;
                this.mCallback.onRemoved(i, i5);
                break;
            }
            T t = this.mOldData[i2];
            T t2 = tArr[i];
            int compare = this.mCallback.compare(t, t2);
            if (compare < 0) {
                replaceAllRemove();
            } else if (compare > 0) {
                replaceAllInsert(t2);
            } else if (!this.mCallback.areItemsTheSame(t, t2)) {
                replaceAllRemove();
                replaceAllInsert(t2);
            } else {
                T[] tArr2 = this.mData;
                int i6 = this.mNewDataStart;
                tArr2[i6] = t2;
                this.mOldDataStart++;
                this.mNewDataStart = i6 + 1;
                if (!this.mCallback.areContentsTheSame(t, t2)) {
                    Callback callback = this.mCallback;
                    callback.onChanged(this.mNewDataStart - 1, 1, callback.getChangePayload(t, t2));
                }
            }
        }
        this.mOldData = null;
        if (z) {
            endBatchedUpdates();
        }
    }

    private void replaceAllInsert(T t) {
        T[] tArr = this.mData;
        int i = this.mNewDataStart;
        tArr[i] = t;
        this.mNewDataStart = i + 1;
        this.mSize++;
        this.mCallback.onInserted(i, 1);
    }

    private void replaceAllRemove() {
        this.mSize--;
        this.mOldDataStart++;
        this.mCallback.onRemoved(this.mNewDataStart, 1);
    }

    private int sortAndDedup(T[] tArr) {
        if (tArr.length == 0) {
            return 0;
        }
        Arrays.sort(tArr, this.mCallback);
        int i = 0;
        int i2 = 1;
        for (int i3 = 1; i3 < tArr.length; i3++) {
            T t = tArr[i3];
            if (this.mCallback.compare(tArr[i], t) == 0) {
                int findSameItem = findSameItem(t, tArr, i, i2);
                if (findSameItem != -1) {
                    tArr[findSameItem] = t;
                } else {
                    if (i2 != i3) {
                        tArr[i2] = t;
                    }
                    i2++;
                }
            } else {
                if (i2 != i3) {
                    tArr[i2] = t;
                }
                i = i2;
                i2++;
            }
        }
        return i2;
    }

    private int findSameItem(T t, T[] tArr, int i, int i2) {
        while (i < i2) {
            if (this.mCallback.areItemsTheSame(tArr[i], t)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private void merge(T[] tArr, int i) {
        boolean z = !(this.mCallback instanceof BatchedCallback);
        if (z) {
            beginBatchedUpdates();
        }
        this.mOldData = this.mData;
        int i2 = 0;
        this.mOldDataStart = 0;
        int i3 = this.mSize;
        this.mOldDataSize = i3;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, i3 + i + 10));
        this.mNewDataStart = 0;
        while (true) {
            int i4 = this.mOldDataStart;
            int i5 = this.mOldDataSize;
            if (i4 >= i5 && i2 >= i) {
                break;
            }
            if (i4 == i5) {
                int i6 = i - i2;
                System.arraycopy(tArr, i2, this.mData, this.mNewDataStart, i6);
                int i7 = this.mNewDataStart + i6;
                this.mNewDataStart = i7;
                this.mSize += i6;
                this.mCallback.onInserted(i7 - i6, i6);
                break;
            }
            if (i2 == i) {
                int i8 = i5 - i4;
                System.arraycopy(this.mOldData, i4, this.mData, this.mNewDataStart, i8);
                this.mNewDataStart += i8;
                break;
            }
            T t = this.mOldData[i4];
            T t2 = tArr[i2];
            int compare = this.mCallback.compare(t, t2);
            if (compare > 0) {
                T[] tArr2 = this.mData;
                int i9 = this.mNewDataStart;
                this.mNewDataStart = i9 + 1;
                tArr2[i9] = t2;
                this.mSize++;
                i2++;
                this.mCallback.onInserted(i9, 1);
            } else if (compare == 0 && this.mCallback.areItemsTheSame(t, t2)) {
                T[] tArr3 = this.mData;
                int i10 = this.mNewDataStart;
                this.mNewDataStart = i10 + 1;
                tArr3[i10] = t2;
                i2++;
                this.mOldDataStart++;
                if (!this.mCallback.areContentsTheSame(t, t2)) {
                    Callback callback = this.mCallback;
                    callback.onChanged(this.mNewDataStart - 1, 1, callback.getChangePayload(t, t2));
                }
            } else {
                T[] tArr4 = this.mData;
                int i11 = this.mNewDataStart;
                this.mNewDataStart = i11 + 1;
                tArr4[i11] = t;
                this.mOldDataStart++;
            }
        }
        this.mOldData = null;
        if (z) {
            endBatchedUpdates();
        }
    }

    private void throwIfInMutationOperation() {
        if (this.mOldData != null) {
            throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
        }
    }

    public void beginBatchedUpdates() {
        throwIfInMutationOperation();
        if (this.mCallback instanceof BatchedCallback) {
            return;
        }
        if (this.mBatchedCallback == null) {
            this.mBatchedCallback = new BatchedCallback(this.mCallback);
        }
        this.mCallback = this.mBatchedCallback;
    }

    public void endBatchedUpdates() {
        throwIfInMutationOperation();
        Callback callback = this.mCallback;
        if (callback instanceof BatchedCallback) {
            ((BatchedCallback) callback).dispatchLastEvent();
        }
        Callback callback2 = this.mCallback;
        BatchedCallback batchedCallback = this.mBatchedCallback;
        if (callback2 == batchedCallback) {
            this.mCallback = batchedCallback.mWrappedCallback;
        }
    }

    private int add(T t, boolean z) {
        int findIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 1);
        if (findIndexOf == -1) {
            findIndexOf = 0;
        } else if (findIndexOf < this.mSize) {
            T t2 = this.mData[findIndexOf];
            if (this.mCallback.areItemsTheSame(t2, t)) {
                if (this.mCallback.areContentsTheSame(t2, t)) {
                    this.mData[findIndexOf] = t;
                    return findIndexOf;
                }
                this.mData[findIndexOf] = t;
                Callback callback = this.mCallback;
                callback.onChanged(findIndexOf, 1, callback.getChangePayload(t2, t));
                return findIndexOf;
            }
        }
        addToData(findIndexOf, t);
        if (z) {
            this.mCallback.onInserted(findIndexOf, 1);
        }
        return findIndexOf;
    }

    public boolean remove(T t) {
        throwIfInMutationOperation();
        return remove(t, true);
    }

    public T removeItemAt(int i) {
        throwIfInMutationOperation();
        T t = get(i);
        removeItemAtIndex(i, true);
        return t;
    }

    private boolean remove(T t, boolean z) {
        int findIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 2);
        if (findIndexOf == -1) {
            return false;
        }
        removeItemAtIndex(findIndexOf, z);
        return true;
    }

    private void removeItemAtIndex(int i, boolean z) {
        T[] tArr = this.mData;
        System.arraycopy(tArr, i + 1, tArr, i, (this.mSize - i) - 1);
        int i2 = this.mSize - 1;
        this.mSize = i2;
        this.mData[i2] = null;
        if (z) {
            this.mCallback.onRemoved(i, 1);
        }
    }

    public void updateItemAt(int i, T t) {
        throwIfInMutationOperation();
        T t2 = get(i);
        boolean z = t2 == t || !this.mCallback.areContentsTheSame(t2, t);
        if (t2 != t && this.mCallback.compare(t2, t) == 0) {
            this.mData[i] = t;
            if (z) {
                Callback callback = this.mCallback;
                callback.onChanged(i, 1, callback.getChangePayload(t2, t));
                return;
            }
            return;
        }
        if (z) {
            Callback callback2 = this.mCallback;
            callback2.onChanged(i, 1, callback2.getChangePayload(t2, t));
        }
        removeItemAtIndex(i, false);
        int add = add(t, false);
        if (i != add) {
            this.mCallback.onMoved(i, add);
        }
    }

    public void recalculatePositionOfItemAt(int i) {
        throwIfInMutationOperation();
        T t = get(i);
        removeItemAtIndex(i, false);
        int add = add(t, false);
        if (i != add) {
            this.mCallback.onMoved(i, add);
        }
    }

    public T get(int i) throws IndexOutOfBoundsException {
        int i2;
        if (i >= this.mSize || i < 0) {
            throw new IndexOutOfBoundsException("Asked to get item at " + i + " but size is " + this.mSize);
        }
        T[] tArr = this.mOldData;
        if (tArr != null && i >= (i2 = this.mNewDataStart)) {
            return tArr[(i - i2) + this.mOldDataStart];
        }
        return this.mData[i];
    }

    public int indexOf(T t) {
        if (this.mOldData != null) {
            int findIndexOf = findIndexOf(t, this.mData, 0, this.mNewDataStart, 4);
            if (findIndexOf != -1) {
                return findIndexOf;
            }
            int findIndexOf2 = findIndexOf(t, this.mOldData, this.mOldDataStart, this.mOldDataSize, 4);
            if (findIndexOf2 != -1) {
                return (findIndexOf2 - this.mOldDataStart) + this.mNewDataStart;
            }
            return -1;
        }
        return findIndexOf(t, this.mData, 0, this.mSize, 4);
    }

    private int findIndexOf(T t, T[] tArr, int i, int i2, int i3) {
        while (i < i2) {
            int i4 = (i + i2) / 2;
            T t2 = tArr[i4];
            int compare = this.mCallback.compare(t2, t);
            if (compare < 0) {
                i = i4 + 1;
            } else {
                if (compare == 0) {
                    if (this.mCallback.areItemsTheSame(t2, t)) {
                        return i4;
                    }
                    int linearEqualitySearch = linearEqualitySearch(t, i4, i, i2);
                    return (i3 == 1 && linearEqualitySearch == -1) ? i4 : linearEqualitySearch;
                }
                i2 = i4;
            }
        }
        if (i3 == 1) {
            return i;
        }
        return -1;
    }

    private int linearEqualitySearch(T t, int i, int i2, int i3) {
        T t2;
        for (int i4 = i - 1; i4 >= i2; i4--) {
            T t3 = this.mData[i4];
            if (this.mCallback.compare(t3, t) != 0) {
                break;
            }
            if (this.mCallback.areItemsTheSame(t3, t)) {
                return i4;
            }
        }
        do {
            i++;
            if (i >= i3) {
                return -1;
            }
            t2 = this.mData[i];
            if (this.mCallback.compare(t2, t) != 0) {
                return -1;
            }
        } while (!this.mCallback.areItemsTheSame(t2, t));
        return i;
    }

    private void addToData(int i, T t) {
        int i2 = this.mSize;
        if (i > i2) {
            throw new IndexOutOfBoundsException("cannot add item to " + i + " because size is " + this.mSize);
        }
        T[] tArr = this.mData;
        if (i2 == tArr.length) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, tArr.length + 10));
            System.arraycopy(this.mData, 0, tArr2, 0, i);
            tArr2[i] = t;
            System.arraycopy(this.mData, i, tArr2, i + 1, this.mSize - i);
            this.mData = tArr2;
        } else {
            System.arraycopy(tArr, i, tArr, i + 1, i2 - i);
            this.mData[i] = t;
        }
        this.mSize++;
    }

    private T[] copyArray(T[] tArr) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, tArr.length));
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        return tArr2;
    }

    public void clear() {
        throwIfInMutationOperation();
        int i = this.mSize;
        if (i == 0) {
            return;
        }
        Arrays.fill(this.mData, 0, i, (Object) null);
        this.mSize = 0;
        this.mCallback.onRemoved(0, i);
    }

    /* loaded from: classes2.dex */
    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        public abstract boolean areContentsTheSame(T2 t2, T2 t22);

        public abstract boolean areItemsTheSame(T2 t2, T2 t22);

        @Override // java.util.Comparator
        public abstract int compare(T2 t2, T2 t22);

        public Object getChangePayload(T2 t2, T2 t22) {
            return null;
        }

        public abstract void onChanged(int i, int i2);

        public void onChanged(int i, int i2, Object obj) {
            onChanged(i, i2);
        }
    }

    /* loaded from: classes2.dex */
    public static class BatchedCallback<T2> extends Callback<T2> {
        private final BatchingListUpdateCallback mBatchingListUpdateCallback;
        final Callback<T2> mWrappedCallback;

        public BatchedCallback(Callback<T2> callback) {
            this.mWrappedCallback = callback;
            this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(callback);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t2, T2 t22) {
            return this.mWrappedCallback.compare(t2, t22);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int i, int i2) {
            this.mBatchingListUpdateCallback.onInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onRemoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public void onChanged(int i, int i2) {
            this.mBatchingListUpdateCallback.onChanged(i, i2, null);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        public void onChanged(int i, int i2, Object obj) {
            this.mBatchingListUpdateCallback.onChanged(i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areContentsTheSame(T2 t2, T2 t22) {
            return this.mWrappedCallback.areContentsTheSame(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areItemsTheSame(T2 t2, T2 t22) {
            return this.mWrappedCallback.areItemsTheSame(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public Object getChangePayload(T2 t2, T2 t22) {
            return this.mWrappedCallback.getChangePayload(t2, t22);
        }

        public void dispatchLastEvent() {
            this.mBatchingListUpdateCallback.dispatchLastEvent();
        }
    }
}
