package com.google.common.graph;

import com.google.common.graph.GraphConstants;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class StandardMutableGraph<N> extends ForwardingGraph<N> implements MutableGraph<N> {
    private final MutableValueGraph<N, GraphConstants.Presence> backingValueGraph;

    @Override // com.google.common.graph.ForwardingGraph
    BaseGraph<N> delegate() {
        return this.backingValueGraph;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StandardMutableGraph(AbstractGraphBuilder<? super N> abstractGraphBuilder) {
        this.backingValueGraph = new StandardMutableValueGraph(abstractGraphBuilder);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean addNode(N n) {
        return this.backingValueGraph.addNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(N n, N n2) {
        return this.backingValueGraph.putEdgeValue(n, n2, GraphConstants.Presence.EDGE_EXISTS) == null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return putEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeNode(N n) {
        return this.backingValueGraph.removeNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(N n, N n2) {
        return this.backingValueGraph.removeEdge(n, n2) != null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }
}
