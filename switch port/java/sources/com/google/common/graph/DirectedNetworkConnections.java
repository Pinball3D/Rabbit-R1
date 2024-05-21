package com.google.common.graph;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class DirectedNetworkConnections<N, E> extends AbstractDirectedNetworkConnections<N, E> {
    DirectedNetworkConnections(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> DirectedNetworkConnections<N, E> of() {
        return new DirectedNetworkConnections<>(HashBiMap.create(2), HashBiMap.create(2), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, E> DirectedNetworkConnections<N, E> ofImmutable(Map<E, N> map, Map<E, N> map2, int i) {
        return new DirectedNetworkConnections<>(ImmutableBiMap.copyOf((Map) map), ImmutableBiMap.copyOf((Map) map2), i);
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> predecessors() {
        return Collections.unmodifiableSet(((BiMap) this.inEdgeMap).values());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> successors() {
        return Collections.unmodifiableSet(((BiMap) this.outEdgeMap).values());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> edgesConnecting(N n) {
        return new EdgesConnecting(((BiMap) this.outEdgeMap).inverse(), n);
    }
}
