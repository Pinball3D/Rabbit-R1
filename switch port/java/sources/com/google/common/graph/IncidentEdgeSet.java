package com.google.common.graph;

import java.util.AbstractSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class IncidentEdgeSet<N> extends AbstractSet<EndpointPair<N>> {
    final BaseGraph<N> graph;
    final N node;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IncidentEdgeSet(BaseGraph<N> baseGraph, N n) {
        this.graph = baseGraph;
        this.node = n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        if (this.graph.isDirected()) {
            return (this.graph.inDegree(this.node) + this.graph.outDegree(this.node)) - (this.graph.successors((BaseGraph<N>) this.node).contains(this.node) ? 1 : 0);
        }
        return this.graph.adjacentNodes(this.node).size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        if (!(obj instanceof EndpointPair)) {
            return false;
        }
        EndpointPair endpointPair = (EndpointPair) obj;
        if (this.graph.isDirected()) {
            if (!endpointPair.isOrdered()) {
                return false;
            }
            Object source = endpointPair.source();
            Object target = endpointPair.target();
            return (this.node.equals(source) && this.graph.successors((BaseGraph<N>) this.node).contains(target)) || (this.node.equals(target) && this.graph.predecessors((BaseGraph<N>) this.node).contains(source));
        }
        if (endpointPair.isOrdered()) {
            return false;
        }
        Set<N> adjacentNodes = this.graph.adjacentNodes(this.node);
        Object nodeU = endpointPair.nodeU();
        Object nodeV = endpointPair.nodeV();
        return (this.node.equals(nodeV) && adjacentNodes.contains(nodeU)) || (this.node.equals(nodeU) && adjacentNodes.contains(nodeV));
    }
}
