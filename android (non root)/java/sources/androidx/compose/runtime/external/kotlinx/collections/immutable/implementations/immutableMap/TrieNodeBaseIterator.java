package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: PersistentHashMapContentIterators.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u0001*\u0006\b\u0002\u0010\u0003 \u00012\b\u0012\u0004\u0012\u0002H\u00030\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u000b\u0010\u0014\u001a\u00028\u0000¢\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u0012\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0006\b\u0001\u0012\u00028\u00010\u0017J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dJ#\u0010\u001f\u001a\u00020\u001d2\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010 J+\u0010\u001f\u001a\u00020\u001d2\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0002\u0010!R0\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007@BX\u0084\u000e¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u000eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\""}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "<set-?>", "", "", "buffer", "getBuffer", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "dataSize", "", "index", "getIndex", "()I", "setIndex", "(I)V", "currentKey", "()Ljava/lang/Object;", "currentNode", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;", "hasNext", "", "hasNextKey", "hasNextNode", "moveToNextKey", "", "moveToNextNode", "reset", "([Ljava/lang/Object;I)V", "([Ljava/lang/Object;II)V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class TrieNodeBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {
    private Object[] buffer = TrieNode.INSTANCE.getEMPTY$runtime_release().getBuffer();
    private int dataSize;
    private int index;

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object[] getBuffer() {
        return this.buffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getIndex() {
        return this.index;
    }

    public final boolean hasNextKey() {
        return this.index < this.dataSize;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void reset(Object[] buffer, int dataSize, int index) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.buffer = buffer;
        this.dataSize = dataSize;
        this.index = index;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setIndex(int i) {
        this.index = i;
    }

    public final void reset(Object[] buffer, int dataSize) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        reset(buffer, dataSize, 0);
    }

    public final K currentKey() {
        CommonFunctionsKt.m2285assert(hasNextKey());
        return (K) this.buffer[this.index];
    }

    public final void moveToNextKey() {
        CommonFunctionsKt.m2285assert(hasNextKey());
        this.index += 2;
    }

    public final boolean hasNextNode() {
        CommonFunctionsKt.m2285assert(this.index >= this.dataSize);
        return this.index < this.buffer.length;
    }

    public final TrieNode<? extends K, ? extends V> currentNode() {
        CommonFunctionsKt.m2285assert(hasNextNode());
        Object obj = this.buffer[this.index];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator>");
        return (TrieNode) obj;
    }

    public final void moveToNextNode() {
        CommonFunctionsKt.m2285assert(hasNextNode());
        this.index++;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return hasNextKey();
    }
}
