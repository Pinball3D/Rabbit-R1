package androidx.compose.ui.node;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DepthSortedSet.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u0086\bJ\u0006\u0010\u0018\u001a\u00020\u0007J\"\u0010\u0019\u001a\u00020\u00132\u0014\b\u0004\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00130\u001bH\u0086\bø\u0001\u0000J\u000e\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0007J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R'\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"Landroidx/compose/ui/node/DepthSortedSet;", "", "extraAssertions", "", "(Z)V", "DepthComparator", "Ljava/util/Comparator;", "Landroidx/compose/ui/node/LayoutNode;", "Lkotlin/Comparator;", "mapOfOriginalDepth", "", "", "getMapOfOriginalDepth", "()Ljava/util/Map;", "mapOfOriginalDepth$delegate", "Lkotlin/Lazy;", "set", "Landroidx/compose/ui/node/TreeSet;", "add", "", "node", "contains", "isEmpty", "isNotEmpty", "pop", "popEach", "block", "Lkotlin/Function1;", "remove", "toString", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DepthSortedSet {
    private final Comparator<LayoutNode> DepthComparator;
    private final boolean extraAssertions;

    /* renamed from: mapOfOriginalDepth$delegate, reason: from kotlin metadata */
    private final Lazy mapOfOriginalDepth = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<Map<LayoutNode, Integer>>() { // from class: androidx.compose.ui.node.DepthSortedSet$mapOfOriginalDepth$2
        @Override // kotlin.jvm.functions.Function0
        public final Map<LayoutNode, Integer> invoke() {
            return new LinkedHashMap();
        }
    });
    private final TreeSet<LayoutNode> set;

    public DepthSortedSet(boolean z) {
        this.extraAssertions = z;
        Comparator<LayoutNode> comparator = new Comparator<LayoutNode>() { // from class: androidx.compose.ui.node.DepthSortedSet$DepthComparator$1
            @Override // java.util.Comparator
            public int compare(LayoutNode l1, LayoutNode l2) {
                Intrinsics.checkNotNullParameter(l1, "l1");
                Intrinsics.checkNotNullParameter(l2, "l2");
                int compare = Intrinsics.compare(l1.getDepth(), l2.getDepth());
                return compare != 0 ? compare : Intrinsics.compare(l1.hashCode(), l2.hashCode());
            }
        };
        this.DepthComparator = comparator;
        this.set = new TreeSet<>(comparator);
    }

    private final Map<LayoutNode, Integer> getMapOfOriginalDepth() {
        return (Map) this.mapOfOriginalDepth.getValue();
    }

    public final boolean contains(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        boolean contains = this.set.contains(node);
        if (!this.extraAssertions || contains == getMapOfOriginalDepth().containsKey(node)) {
            return contains;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final void add(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (!node.isAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.extraAssertions) {
            Integer num = getMapOfOriginalDepth().get(node);
            if (num == null) {
                getMapOfOriginalDepth().put(node, Integer.valueOf(node.getDepth()));
            } else {
                if (num.intValue() != node.getDepth()) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }
        this.set.add(node);
    }

    public final boolean remove(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (!node.isAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        boolean remove = this.set.remove(node);
        if (this.extraAssertions) {
            Integer remove2 = getMapOfOriginalDepth().remove(node);
            if (remove) {
                int depth = node.getDepth();
                if (remove2 == null || remove2.intValue() != depth) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            } else if (remove2 != null) {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        return remove;
    }

    public final LayoutNode pop() {
        LayoutNode node = this.set.first();
        Intrinsics.checkNotNullExpressionValue(node, "node");
        remove(node);
        return node;
    }

    public final boolean isEmpty() {
        return this.set.isEmpty();
    }

    public final boolean isNotEmpty() {
        return !isEmpty();
    }

    public String toString() {
        String treeSet = this.set.toString();
        Intrinsics.checkNotNullExpressionValue(treeSet, "set.toString()");
        return treeSet;
    }

    public final void popEach(Function1<? super LayoutNode, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        while (!isEmpty()) {
            block.invoke(pop());
        }
    }
}
