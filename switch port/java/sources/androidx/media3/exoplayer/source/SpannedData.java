package androidx.media3.exoplayer.source;

import android.util.SparseArray;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;

/* loaded from: classes2.dex */
final class SpannedData<V> {
    private int memoizedReadIndex;
    private final Consumer<V> removeCallback;
    private final SparseArray<V> spans;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$new$0(Object obj) {
    }

    public SpannedData() {
        this(new Consumer() { // from class: androidx.media3.exoplayer.source.SpannedData$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                SpannedData.lambda$new$0(obj);
            }
        });
    }

    public SpannedData(Consumer<V> consumer) {
        this.spans = new SparseArray<>();
        this.removeCallback = consumer;
        this.memoizedReadIndex = -1;
    }

    public V get(int i) {
        if (this.memoizedReadIndex == -1) {
            this.memoizedReadIndex = 0;
        }
        while (true) {
            int i2 = this.memoizedReadIndex;
            if (i2 <= 0 || i >= this.spans.keyAt(i2)) {
                break;
            }
            this.memoizedReadIndex--;
        }
        while (this.memoizedReadIndex < this.spans.size() - 1 && i >= this.spans.keyAt(this.memoizedReadIndex + 1)) {
            this.memoizedReadIndex++;
        }
        return this.spans.valueAt(this.memoizedReadIndex);
    }

    public void appendSpan(int i, V v) {
        if (this.memoizedReadIndex == -1) {
            Assertions.checkState(this.spans.size() == 0);
            this.memoizedReadIndex = 0;
        }
        if (this.spans.size() > 0) {
            SparseArray<V> sparseArray = this.spans;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            Assertions.checkArgument(i >= keyAt);
            if (keyAt == i) {
                Consumer<V> consumer = this.removeCallback;
                SparseArray<V> sparseArray2 = this.spans;
                consumer.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.spans.append(i, v);
    }

    public V getEndValue() {
        return this.spans.valueAt(r1.size() - 1);
    }

    public void discardTo(int i) {
        int i2 = 0;
        while (i2 < this.spans.size() - 1) {
            int i3 = i2 + 1;
            if (i < this.spans.keyAt(i3)) {
                return;
            }
            this.removeCallback.accept(this.spans.valueAt(i2));
            this.spans.removeAt(i2);
            int i4 = this.memoizedReadIndex;
            if (i4 > 0) {
                this.memoizedReadIndex = i4 - 1;
            }
            i2 = i3;
        }
    }

    public void discardFrom(int i) {
        for (int size = this.spans.size() - 1; size >= 0 && i < this.spans.keyAt(size); size--) {
            this.removeCallback.accept(this.spans.valueAt(size));
            this.spans.removeAt(size);
        }
        this.memoizedReadIndex = this.spans.size() > 0 ? Math.min(this.memoizedReadIndex, this.spans.size() - 1) : -1;
    }

    public void clear() {
        for (int i = 0; i < this.spans.size(); i++) {
            this.removeCallback.accept(this.spans.valueAt(i));
        }
        this.memoizedReadIndex = -1;
        this.spans.clear();
    }

    public boolean isEmpty() {
        return this.spans.size() == 0;
    }
}
