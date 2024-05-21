package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: PersistentHashSetIterator.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\u0015\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u000e\u0010\u001b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0016R\u0018\u0010\u0006\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\tR \u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u000bX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/PersistentHashSetIterator;", ExifInterface.LONGITUDE_EAST, "", "node", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNode;)V", "hasNext", "", "getHasNext$annotations", "()V", "path", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/TrieNodeIterator;", "getPath", "()Ljava/util/List;", "pathLastIndex", "", "getPathLastIndex", "()I", "setPathLastIndex", "(I)V", "currentElement", "()Ljava/lang/Object;", "ensureNextElementIsReady", "", "moveToNextNodeWithData", "pathIndex", "next", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class PersistentHashSetIterator<E> implements Iterator<E>, KMappedMarker {
    private boolean hasNext;
    private final List<TrieNodeIterator<E>> path;
    private int pathLastIndex;

    private static /* synthetic */ void getHasNext$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<TrieNodeIterator<E>> getPath() {
        return this.path;
    }

    protected final int getPathLastIndex() {
        return this.pathLastIndex;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPathLastIndex(int i) {
        this.pathLastIndex = i;
    }

    public PersistentHashSetIterator(TrieNode<E> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        List<TrieNodeIterator<E>> mutableListOf = CollectionsKt.mutableListOf(new TrieNodeIterator());
        this.path = mutableListOf;
        this.hasNext = true;
        TrieNodeIterator.reset$default(mutableListOf.get(0), node.getBuffer(), 0, 2, null);
        this.pathLastIndex = 0;
        ensureNextElementIsReady();
    }

    private final int moveToNextNodeWithData(int pathIndex) {
        if (this.path.get(pathIndex).hasNextElement()) {
            return pathIndex;
        }
        if (!this.path.get(pathIndex).hasNextNode()) {
            return -1;
        }
        TrieNode<? extends E> currentNode = this.path.get(pathIndex).currentNode();
        int i = pathIndex + 1;
        if (i == this.path.size()) {
            this.path.add(new TrieNodeIterator<>());
        }
        TrieNodeIterator.reset$default(this.path.get(i), currentNode.getBuffer(), 0, 2, null);
        return moveToNextNodeWithData(i);
    }

    private final void ensureNextElementIsReady() {
        if (this.path.get(this.pathLastIndex).hasNextElement()) {
            return;
        }
        for (int i = this.pathLastIndex; -1 < i; i--) {
            int moveToNextNodeWithData = moveToNextNodeWithData(i);
            if (moveToNextNodeWithData == -1 && this.path.get(i).hasNextCell()) {
                this.path.get(i).moveToNextCell();
                moveToNextNodeWithData = moveToNextNodeWithData(i);
            }
            if (moveToNextNodeWithData != -1) {
                this.pathLastIndex = moveToNextNodeWithData;
                return;
            }
            if (i > 0) {
                this.path.get(i - 1).moveToNextCell();
            }
            this.path.get(i).reset(TrieNode.INSTANCE.getEMPTY$runtime_release().getBuffer(), 0);
        }
        this.hasNext = false;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!this.hasNext) {
            throw new NoSuchElementException();
        }
        E nextElement = this.path.get(this.pathLastIndex).nextElement();
        ensureNextElementIsReady();
        return nextElement;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final E currentElement() {
        CommonFunctionsKt.m2285assert(hasNext());
        return this.path.get(this.pathLastIndex).currentElement();
    }
}
