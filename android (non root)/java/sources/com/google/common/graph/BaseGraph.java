package com.google.common.graph;

import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface BaseGraph<N> extends SuccessorsFunction<N>, PredecessorsFunction<N> {
    Set<N> adjacentNodes(N n);

    boolean allowsSelfLoops();

    int degree(N n);

    Set<EndpointPair<N>> edges();

    boolean hasEdgeConnecting(EndpointPair<N> endpointPair);

    boolean hasEdgeConnecting(N n, N n2);

    int inDegree(N n);

    ElementOrder<N> incidentEdgeOrder();

    Set<EndpointPair<N>> incidentEdges(N n);

    boolean isDirected();

    ElementOrder<N> nodeOrder();

    Set<N> nodes();

    int outDegree(N n);

    Set<N> predecessors(N n);

    @Override // com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    Set<N> successors(N n);

    /* JADX WARN: Multi-variable type inference failed */
    /* bridge */ /* synthetic */ default Iterable predecessors(Object obj) {
        return predecessors((BaseGraph<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    /* bridge */ /* synthetic */ default Iterable successors(Object obj) {
        return successors((BaseGraph<N>) obj);
    }
}
