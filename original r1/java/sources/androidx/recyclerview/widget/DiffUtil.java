package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class DiffUtil {
    private static final Comparator<Diagonal> DIAGONAL_COMPARATOR = new Comparator<Diagonal>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Diagonal diagonal, Diagonal diagonal2) {
            return diagonal.x - diagonal2.x;
        }
    };

    /* loaded from: classes2.dex */
    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* loaded from: classes2.dex */
    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(T t, T t2);

        public abstract boolean areItemsTheSame(T t, T t2);

        public Object getChangePayload(T t, T t2) {
            return null;
        }
    }

    private DiffUtil() {
    }

    public static DiffResult calculateDiff(Callback callback) {
        return calculateDiff(callback, true);
    }

    public static DiffResult calculateDiff(Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int i = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        CenteredArray centeredArray = new CenteredArray(i);
        CenteredArray centeredArray2 = new CenteredArray(i);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake midPoint = midPoint(range, callback, centeredArray, centeredArray2);
            if (midPoint != null) {
                if (midPoint.diagonalSize() > 0) {
                    arrayList.add(midPoint.toDiagonal());
                }
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                range2.oldListEnd = midPoint.startX;
                range2.newListEnd = midPoint.startY;
                arrayList2.add(range2);
                range.oldListEnd = range.oldListEnd;
                range.newListEnd = range.newListEnd;
                range.oldListStart = midPoint.endX;
                range.newListStart = midPoint.endY;
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(callback, arrayList, centeredArray.backingData(), centeredArray2.backingData(), z);
    }

    private static Snake midPoint(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2) {
        if (range.oldSize() >= 1 && range.newSize() >= 1) {
            int oldSize = ((range.oldSize() + range.newSize()) + 1) / 2;
            centeredArray.set(1, range.oldListStart);
            centeredArray2.set(1, range.oldListEnd);
            for (int i = 0; i < oldSize; i++) {
                Snake forward = forward(range, callback, centeredArray, centeredArray2, i);
                if (forward != null) {
                    return forward;
                }
                Snake backward = backward(range, callback, centeredArray, centeredArray2, i);
                if (backward != null) {
                    return backward;
                }
            }
        }
        return null;
    }

    private static Snake forward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i) {
        int i2;
        int i3;
        int i4;
        boolean z = Math.abs(range.oldSize() - range.newSize()) % 2 == 1;
        int oldSize = range.oldSize() - range.newSize();
        int i5 = -i;
        for (int i6 = i5; i6 <= i; i6 += 2) {
            if (i6 == i5 || (i6 != i && centeredArray.get(i6 + 1) > centeredArray.get(i6 - 1))) {
                i2 = centeredArray.get(i6 + 1);
                i3 = i2;
            } else {
                i2 = centeredArray.get(i6 - 1);
                i3 = i2 + 1;
            }
            int i7 = (range.newListStart + (i3 - range.oldListStart)) - i6;
            int i8 = (i == 0 || i3 != i2) ? i7 : i7 - 1;
            while (i3 < range.oldListEnd && i7 < range.newListEnd && callback.areItemsTheSame(i3, i7)) {
                i3++;
                i7++;
            }
            centeredArray.set(i6, i3);
            if (z && (i4 = oldSize - i6) >= i5 + 1 && i4 <= i - 1 && centeredArray2.get(i4) <= i3) {
                Snake snake = new Snake();
                snake.startX = i2;
                snake.startY = i8;
                snake.endX = i3;
                snake.endY = i7;
                snake.reverse = false;
                return snake;
            }
        }
        return null;
    }

    private static Snake backward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i) {
        int i2;
        int i3;
        int i4;
        boolean z = (range.oldSize() - range.newSize()) % 2 == 0;
        int oldSize = range.oldSize() - range.newSize();
        int i5 = -i;
        for (int i6 = i5; i6 <= i; i6 += 2) {
            if (i6 == i5 || (i6 != i && centeredArray2.get(i6 + 1) < centeredArray2.get(i6 - 1))) {
                i2 = centeredArray2.get(i6 + 1);
                i3 = i2;
            } else {
                i2 = centeredArray2.get(i6 - 1);
                i3 = i2 - 1;
            }
            int i7 = range.newListEnd - ((range.oldListEnd - i3) - i6);
            int i8 = (i == 0 || i3 != i2) ? i7 : i7 + 1;
            while (i3 > range.oldListStart && i7 > range.newListStart && callback.areItemsTheSame(i3 - 1, i7 - 1)) {
                i3--;
                i7--;
            }
            centeredArray2.set(i6, i3);
            if (z && (i4 = oldSize - i6) >= i5 && i4 <= i && centeredArray.get(i4) >= i3) {
                Snake snake = new Snake();
                snake.startX = i3;
                snake.startY = i7;
                snake.endX = i2;
                snake.endY = i8;
                snake.reverse = true;
                return snake;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Diagonal {
        public final int size;
        public final int x;
        public final int y;

        int endX() {
            return this.x + this.size;
        }

        int endY() {
            return this.y + this.size;
        }

        Diagonal(int i, int i2, int i3) {
            this.x = i;
            this.y = i2;
            this.size = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        boolean hasAdditionOrRemoval() {
            return this.endY - this.startY != this.endX - this.startX;
        }

        boolean isAddition() {
            return this.endY - this.startY > this.endX - this.startX;
        }

        Snake() {
        }

        int diagonalSize() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }

        Diagonal toDiagonal() {
            if (!hasAdditionOrRemoval()) {
                int i = this.startX;
                return new Diagonal(i, this.startY, this.endX - i);
            }
            if (this.reverse) {
                return new Diagonal(this.startX, this.startY, diagonalSize());
            }
            if (isAddition()) {
                return new Diagonal(this.startX, this.startY + 1, diagonalSize());
            }
            return new Diagonal(this.startX + 1, this.startY, diagonalSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        int newSize() {
            return this.newListEnd - this.newListStart;
        }

        int oldSize() {
            return this.oldListEnd - this.oldListStart;
        }

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.oldListStart = i;
            this.oldListEnd = i2;
            this.newListStart = i3;
            this.newListEnd = i4;
        }
    }

    /* loaded from: classes2.dex */
    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_MASK = 15;
        private static final int FLAG_MOVED = 12;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 4;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final List<Diagonal> mDiagonals;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;

        DiffResult(Callback callback, List<Diagonal> list, int[] iArr, int[] iArr2, boolean z) {
            this.mDiagonals = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z;
            addEdgeDiagonals();
            findMatchingItems();
        }

        private void addEdgeDiagonals() {
            Diagonal diagonal = this.mDiagonals.isEmpty() ? null : this.mDiagonals.get(0);
            if (diagonal == null || diagonal.x != 0 || diagonal.y != 0) {
                this.mDiagonals.add(0, new Diagonal(0, 0, 0));
            }
            this.mDiagonals.add(new Diagonal(this.mOldListSize, this.mNewListSize, 0));
        }

        private void findMatchingItems() {
            for (Diagonal diagonal : this.mDiagonals) {
                for (int i = 0; i < diagonal.size; i++) {
                    int i2 = diagonal.x + i;
                    int i3 = diagonal.y + i;
                    int i4 = this.mCallback.areContentsTheSame(i2, i3) ? 1 : 2;
                    this.mOldItemStatuses[i2] = (i3 << 4) | i4;
                    this.mNewItemStatuses[i3] = (i2 << 4) | i4;
                }
            }
            if (this.mDetectMoves) {
                findMoveMatches();
            }
        }

        private void findMoveMatches() {
            int i = 0;
            for (Diagonal diagonal : this.mDiagonals) {
                while (i < diagonal.x) {
                    if (this.mOldItemStatuses[i] == 0) {
                        findMatchingAddition(i);
                    }
                    i++;
                }
                i = diagonal.endX();
            }
        }

        private void findMatchingAddition(int i) {
            int size = this.mDiagonals.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Diagonal diagonal = this.mDiagonals.get(i3);
                while (i2 < diagonal.y) {
                    if (this.mNewItemStatuses[i2] == 0 && this.mCallback.areItemsTheSame(i, i2)) {
                        int i4 = this.mCallback.areContentsTheSame(i, i2) ? 8 : 4;
                        this.mOldItemStatuses[i] = (i2 << 4) | i4;
                        this.mNewItemStatuses[i2] = (i << 4) | i4;
                        return;
                    }
                    i2++;
                }
                i2 = diagonal.endY();
            }
        }

        public int convertOldPositionToNew(int i) {
            if (i < 0 || i >= this.mOldListSize) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", old list size = " + this.mOldListSize);
            }
            int i2 = this.mOldItemStatuses[i];
            if ((i2 & 15) == 0) {
                return -1;
            }
            return i2 >> 4;
        }

        public int convertNewPositionToOld(int i) {
            if (i < 0 || i >= this.mNewListSize) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", new list size = " + this.mNewListSize);
            }
            int i2 = this.mNewItemStatuses[i];
            if ((i2 & 15) == 0) {
                return -1;
            }
            return i2 >> 4;
        }

        public void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            int i;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            int i2 = this.mOldListSize;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i3 = this.mOldListSize;
            int i4 = this.mNewListSize;
            for (int size = this.mDiagonals.size() - 1; size >= 0; size--) {
                Diagonal diagonal = this.mDiagonals.get(size);
                int endX = diagonal.endX();
                int endY = diagonal.endY();
                while (true) {
                    if (i3 <= endX) {
                        break;
                    }
                    i3--;
                    int i5 = this.mOldItemStatuses[i3];
                    if ((i5 & 12) != 0) {
                        int i6 = i5 >> 4;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i6, false);
                        if (postponedUpdate != null) {
                            int i7 = (i2 - postponedUpdate.currentPos) - 1;
                            batchingListUpdateCallback.onMoved(i3, i7);
                            if ((i5 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i7, 1, this.mCallback.getChangePayload(i3, i6));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i3, (i2 - i3) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.onRemoved(i3, 1);
                        i2--;
                    }
                }
                while (i4 > endY) {
                    i4--;
                    int i8 = this.mNewItemStatuses[i4];
                    if ((i8 & 12) != 0) {
                        int i9 = i8 >> 4;
                        PostponedUpdate postponedUpdate2 = getPostponedUpdate(arrayDeque, i9, true);
                        if (postponedUpdate2 == null) {
                            arrayDeque.add(new PostponedUpdate(i4, i2 - i3, false));
                        } else {
                            batchingListUpdateCallback.onMoved((i2 - postponedUpdate2.currentPos) - 1, i3);
                            if ((i8 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i3, 1, this.mCallback.getChangePayload(i9, i4));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(i3, 1);
                        i2++;
                    }
                }
                int i10 = diagonal.x;
                int i11 = diagonal.y;
                for (i = 0; i < diagonal.size; i++) {
                    if ((this.mOldItemStatuses[i10] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i10, 1, this.mCallback.getChangePayload(i10, i11));
                    }
                    i10++;
                    i11++;
                }
                i3 = diagonal.x;
                i4 = diagonal.y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        private static PostponedUpdate getPostponedUpdate(Collection<PostponedUpdate> collection, int i, boolean z) {
            PostponedUpdate postponedUpdate;
            Iterator<PostponedUpdate> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    postponedUpdate = null;
                    break;
                }
                postponedUpdate = it.next();
                if (postponedUpdate.posInOwnerList == i && postponedUpdate.removal == z) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate next = it.next();
                if (z) {
                    next.currentPos--;
                } else {
                    next.currentPos++;
                }
            }
            return postponedUpdate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class CenteredArray {
        private final int[] mData;
        private final int mMid;

        int[] backingData() {
            return this.mData;
        }

        CenteredArray(int i) {
            int[] iArr = new int[i];
            this.mData = iArr;
            this.mMid = iArr.length / 2;
        }

        int get(int i) {
            return this.mData[i + this.mMid];
        }

        void set(int i, int i2) {
            this.mData[i + this.mMid] = i2;
        }

        public void fill(int i) {
            Arrays.fill(this.mData, i);
        }
    }
}
