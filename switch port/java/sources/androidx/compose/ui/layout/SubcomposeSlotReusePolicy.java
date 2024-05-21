package androidx.compose.ui.layout;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\nJ\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "", "areCompatible", "", "slotId", "reusableSlotId", "getSlotsToRetain", "", "slotIds", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;", "SlotIdsSet", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SubcomposeSlotReusePolicy {
    boolean areCompatible(Object slotId, Object reusableSlotId);

    void getSlotsToRetain(SlotIdsSet slotIds);

    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0019\b\u0000\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0017\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0002\b\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0010\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0096\u0003J\u0019\u0010\u0012\u001a\u00020\u000b2\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0096\u0001J\t\u0010\u0014\u001a\u00020\u000bH\u0096\u0001J\u0011\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0016H\u0096\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0002J\u001c\u0010\u0018\u001a\u00020\u000b2\u0014\u0010\u0019\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u000b0\u001aJ\u0016\u0010\u0018\u001a\u00020\u000b2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u001c\u0010\u001c\u001a\u00020\u000b2\u0014\u0010\u0019\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u000b0\u001aJ\u0016\u0010\u001c\u001a\u00020\u000b2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u0007X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;", "", "", "set", "", "(Ljava/util/Set;)V", "size", "", "getSize", "()I", "add", "", "slotId", "add$ui_release", "clear", "", "contains", "element", "containsAll", "elements", "isEmpty", "iterator", "", "remove", "removeAll", "predicate", "Lkotlin/Function1;", "slotIds", "retainAll", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SlotIdsSet implements Collection<Object>, KMappedMarker {
        public static final int $stable = 8;
        private final Set<Object> set;

        /* JADX WARN: Multi-variable type inference failed */
        public SlotIdsSet() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public boolean contains(Object element) {
            return this.set.contains(element);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return this.set.containsAll(elements);
        }

        public int getSize() {
            return this.set.size();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.set.isEmpty();
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super Object> predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return (T[]) CollectionToArray.toArray(this, array);
        }

        public SlotIdsSet(Set<Object> set) {
            Intrinsics.checkNotNullParameter(set, "set");
            this.set = set;
        }

        @Override // java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        public /* synthetic */ SlotIdsSet(LinkedHashSet linkedHashSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new LinkedHashSet() : linkedHashSet);
        }

        @Override // java.util.Collection
        /* renamed from: add$ui_release, reason: merged with bridge method [inline-methods] */
        public final boolean add(Object slotId) {
            return this.set.add(slotId);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return this.set.iterator();
        }

        @Override // java.util.Collection
        public final boolean remove(Object slotId) {
            return this.set.remove(slotId);
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<? extends Object> slotIds) {
            Intrinsics.checkNotNullParameter(slotIds, "slotIds");
            return this.set.remove(slotIds);
        }

        public final boolean removeAll(Function1<Object, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return CollectionsKt.removeAll(this.set, predicate);
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<? extends Object> slotIds) {
            Intrinsics.checkNotNullParameter(slotIds, "slotIds");
            return this.set.retainAll(slotIds);
        }

        public final boolean retainAll(Function1<Object, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return CollectionsKt.retainAll(this.set, predicate);
        }

        @Override // java.util.Collection
        public final void clear() {
            this.set.clear();
        }
    }
}
