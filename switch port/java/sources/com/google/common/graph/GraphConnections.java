package com.google.common.graph;

import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
interface GraphConnections<N, V> {
    void addPredecessor(N n, V v);

    @CheckForNull
    V addSuccessor(N n, V v);

    Set<N> adjacentNodes();

    Iterator<EndpointPair<N>> incidentEdgeIterator(N n);

    Set<N> predecessors();

    void removePredecessor(N n);

    @CheckForNull
    V removeSuccessor(N n);

    Set<N> successors();

    @CheckForNull
    V value(N n);
}
