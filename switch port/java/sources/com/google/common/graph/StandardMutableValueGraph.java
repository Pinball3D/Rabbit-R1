package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class StandardMutableValueGraph<N, V> extends StandardValueGraph<N, V> implements MutableValueGraph<N, V> {
    private final ElementOrder<N> incidentEdgeOrder;

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
    public ElementOrder<N> incidentEdgeOrder() {
        return this.incidentEdgeOrder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StandardMutableValueGraph(AbstractGraphBuilder<? super N> abstractGraphBuilder) {
        super(abstractGraphBuilder);
        this.incidentEdgeOrder = (ElementOrder<N>) abstractGraphBuilder.incidentEdgeOrder.cast();
    }

    @Override // com.google.common.graph.MutableValueGraph
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, "node");
        if (containsNode(n)) {
            return false;
        }
        addNodeInternal(n);
        return true;
    }

    private GraphConnections<N, V> addNodeInternal(N n) {
        GraphConnections<N, V> newConnections = newConnections();
        Preconditions.checkState(this.nodeConnections.put(n, newConnections) == null);
        return newConnections;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CheckForNull
    public V putEdgeValue(N n, N n2, V v) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(v, "value");
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!n.equals(n2), "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n);
        }
        GraphConnections<N, V> graphConnections = this.nodeConnections.get(n);
        if (graphConnections == null) {
            graphConnections = addNodeInternal(n);
        }
        V addSuccessor = graphConnections.addSuccessor(n2, v);
        GraphConnections<N, V> graphConnections2 = this.nodeConnections.get(n2);
        if (graphConnections2 == null) {
            graphConnections2 = addNodeInternal(n2);
        }
        graphConnections2.addPredecessor(n, v);
        if (addSuccessor == null) {
            long j = this.edgeCount + 1;
            this.edgeCount = j;
            Graphs.checkPositive(j);
        }
        return addSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CheckForNull
    public V putEdgeValue(EndpointPair<N> endpointPair, V v) {
        validateEndpoints(endpointPair);
        return putEdgeValue(endpointPair.nodeU(), endpointPair.nodeV(), v);
    }

    @Override // com.google.common.graph.MutableValueGraph
    public boolean removeNode(N n) {
        Preconditions.checkNotNull(n, "node");
        GraphConnections<N, V> graphConnections = this.nodeConnections.get(n);
        if (graphConnections == null) {
            return false;
        }
        if (allowsSelfLoops() && graphConnections.removeSuccessor(n) != null) {
            graphConnections.removePredecessor(n);
            this.edgeCount--;
        }
        Iterator<N> it = graphConnections.successors().iterator();
        while (it.hasNext()) {
            ((GraphConnections) Objects.requireNonNull(this.nodeConnections.getWithoutCaching(it.next()))).removePredecessor(n);
            this.edgeCount--;
        }
        if (isDirected()) {
            Iterator<N> it2 = graphConnections.predecessors().iterator();
            while (it2.hasNext()) {
                Preconditions.checkState(((GraphConnections) Objects.requireNonNull(this.nodeConnections.getWithoutCaching(it2.next()))).removeSuccessor(n) != null);
                this.edgeCount--;
            }
        }
        this.nodeConnections.remove(n);
        Graphs.checkNonNegative(this.edgeCount);
        return true;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CheckForNull
    public V removeEdge(N n, N n2) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        GraphConnections<N, V> graphConnections = this.nodeConnections.get(n);
        GraphConnections<N, V> graphConnections2 = this.nodeConnections.get(n2);
        if (graphConnections == null || graphConnections2 == null) {
            return null;
        }
        V removeSuccessor = graphConnections.removeSuccessor(n2);
        if (removeSuccessor != null) {
            graphConnections2.removePredecessor(n);
            long j = this.edgeCount - 1;
            this.edgeCount = j;
            Graphs.checkNonNegative(j);
        }
        return removeSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CheckForNull
    public V removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    private GraphConnections<N, V> newConnections() {
        if (isDirected()) {
            return DirectedGraphConnections.of(this.incidentEdgeOrder);
        }
        return UndirectedGraphConnections.of(this.incidentEdgeOrder);
    }
}
