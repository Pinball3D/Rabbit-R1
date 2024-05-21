package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.AbstractBaseGraph;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.util.AbstractSet;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class AbstractBaseGraph<N> implements BaseGraph<N> {
    protected long edgeCount() {
        long j = 0;
        while (nodes().iterator().hasNext()) {
            j += degree(r0.next());
        }
        Preconditions.checkState((1 & j) == 0);
        return j >>> 1;
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<EndpointPair<N>> edges() {
        return new AbstractSet<EndpointPair<N>>() { // from class: com.google.common.graph.AbstractBaseGraph.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<EndpointPair<N>> iterator() {
                return EndpointPairIterator.of(AbstractBaseGraph.this);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Ints.saturatedCast(AbstractBaseGraph.this.edgeCount());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof EndpointPair)) {
                    return false;
                }
                EndpointPair<?> endpointPair = (EndpointPair) obj;
                return AbstractBaseGraph.this.isOrderingCompatible(endpointPair) && AbstractBaseGraph.this.nodes().contains(endpointPair.nodeU()) && AbstractBaseGraph.this.successors(endpointPair.nodeU()).contains(endpointPair.nodeV());
            }
        };
    }

    @Override // com.google.common.graph.BaseGraph
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.unordered();
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<EndpointPair<N>> incidentEdges(N n) {
        Preconditions.checkNotNull(n);
        Preconditions.checkArgument(nodes().contains(n), "Node %s is not an element of this graph.", n);
        return new AnonymousClass2(this, this, n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.graph.AbstractBaseGraph$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends IncidentEdgeSet<N> {
        AnonymousClass2(AbstractBaseGraph abstractBaseGraph, BaseGraph baseGraph, Object obj) {
            super(baseGraph, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            if (this.graph.isDirected()) {
                return Iterators.unmodifiableIterator(Iterators.concat(Iterators.transform(this.graph.predecessors((BaseGraph<N>) this.node).iterator(), new Function() { // from class: com.google.common.graph.AbstractBaseGraph$2$$ExternalSyntheticLambda0
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        return AbstractBaseGraph.AnonymousClass2.this.m5575lambda$iterator$0$comgooglecommongraphAbstractBaseGraph$2(obj);
                    }
                }), Iterators.transform(Sets.difference(this.graph.successors((BaseGraph<N>) this.node), ImmutableSet.of(this.node)).iterator(), new Function() { // from class: com.google.common.graph.AbstractBaseGraph$2$$ExternalSyntheticLambda1
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        return AbstractBaseGraph.AnonymousClass2.this.m5576lambda$iterator$1$comgooglecommongraphAbstractBaseGraph$2(obj);
                    }
                })));
            }
            return Iterators.unmodifiableIterator(Iterators.transform(this.graph.adjacentNodes(this.node).iterator(), new Function() { // from class: com.google.common.graph.AbstractBaseGraph$2$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return AbstractBaseGraph.AnonymousClass2.this.m5577lambda$iterator$2$comgooglecommongraphAbstractBaseGraph$2(obj);
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$iterator$0$com-google-common-graph-AbstractBaseGraph$2, reason: not valid java name */
        public /* synthetic */ EndpointPair m5575lambda$iterator$0$comgooglecommongraphAbstractBaseGraph$2(Object obj) {
            return EndpointPair.ordered(obj, this.node);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$iterator$1$com-google-common-graph-AbstractBaseGraph$2, reason: not valid java name */
        public /* synthetic */ EndpointPair m5576lambda$iterator$1$comgooglecommongraphAbstractBaseGraph$2(Object obj) {
            return EndpointPair.ordered(this.node, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$iterator$2$com-google-common-graph-AbstractBaseGraph$2, reason: not valid java name */
        public /* synthetic */ EndpointPair m5577lambda$iterator$2$comgooglecommongraphAbstractBaseGraph$2(Object obj) {
            return EndpointPair.unordered(this.node, obj);
        }
    }

    @Override // com.google.common.graph.BaseGraph
    public int degree(N n) {
        if (isDirected()) {
            return IntMath.saturatedAdd(predecessors((Object) n).size(), successors((Object) n).size());
        }
        Set<N> adjacentNodes = adjacentNodes(n);
        return IntMath.saturatedAdd(adjacentNodes.size(), (allowsSelfLoops() && adjacentNodes.contains(n)) ? 1 : 0);
    }

    @Override // com.google.common.graph.BaseGraph
    public int inDegree(N n) {
        return isDirected() ? predecessors((Object) n).size() : degree(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public int outDegree(N n) {
        return isDirected() ? successors((Object) n).size() : degree(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(N n, N n2) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(n2);
        return nodes().contains(n) && successors((Object) n).contains(n2);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        if (!isOrderingCompatible(endpointPair)) {
            return false;
        }
        N nodeU = endpointPair.nodeU();
        return nodes().contains(nodeU) && successors((Object) nodeU).contains(endpointPair.nodeV());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void validateEndpoints(EndpointPair<?> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        Preconditions.checkArgument(isOrderingCompatible(endpointPair), "Mismatch: unordered endpoints cannot be used with directed graphs");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isOrderingCompatible(EndpointPair<?> endpointPair) {
        return endpointPair.isOrdered() || !isDirected();
    }
}
