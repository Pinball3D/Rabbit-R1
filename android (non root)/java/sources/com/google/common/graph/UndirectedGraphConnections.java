package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterators;
import com.google.common.graph.ElementOrder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class UndirectedGraphConnections<N, V> implements GraphConnections<N, V> {
    private final Map<N, V> adjacentNodeValues;

    private UndirectedGraphConnections(Map<N, V> map) {
        this.adjacentNodeValues = (Map) Preconditions.checkNotNull(map);
    }

    /* renamed from: com.google.common.graph.UndirectedGraphConnections$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$graph$ElementOrder$Type;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            $SwitchMap$com$google$common$graph$ElementOrder$Type = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$graph$ElementOrder$Type[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, V> UndirectedGraphConnections<N, V> of(ElementOrder<N> elementOrder) {
        int i = AnonymousClass1.$SwitchMap$com$google$common$graph$ElementOrder$Type[elementOrder.type().ordinal()];
        if (i == 1) {
            return new UndirectedGraphConnections<>(new HashMap(2, 1.0f));
        }
        if (i == 2) {
            return new UndirectedGraphConnections<>(new LinkedHashMap(2, 1.0f));
        }
        throw new AssertionError(elementOrder.type());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, V> UndirectedGraphConnections<N, V> ofImmutable(Map<N, V> map) {
        return new UndirectedGraphConnections<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(this.adjacentNodeValues.keySet());
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> predecessors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> successors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.GraphConnections
    public Iterator<EndpointPair<N>> incidentEdgeIterator(final N n) {
        return Iterators.transform(this.adjacentNodeValues.keySet().iterator(), new Function() { // from class: com.google.common.graph.UndirectedGraphConnections$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                EndpointPair unordered;
                unordered = EndpointPair.unordered(n, obj);
                return unordered;
            }
        });
    }

    @Override // com.google.common.graph.GraphConnections
    @CheckForNull
    public V value(N n) {
        return this.adjacentNodeValues.get(n);
    }

    @Override // com.google.common.graph.GraphConnections
    public void removePredecessor(N n) {
        removeSuccessor(n);
    }

    @Override // com.google.common.graph.GraphConnections
    @CheckForNull
    public V removeSuccessor(N n) {
        return this.adjacentNodeValues.remove(n);
    }

    @Override // com.google.common.graph.GraphConnections
    public void addPredecessor(N n, V v) {
        addSuccessor(n, v);
    }

    @Override // com.google.common.graph.GraphConnections
    @CheckForNull
    public V addSuccessor(N n, V v) {
        return this.adjacentNodeValues.put(n, v);
    }
}
