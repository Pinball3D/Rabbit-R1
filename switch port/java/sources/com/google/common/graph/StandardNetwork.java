package com.google.common.graph;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class StandardNetwork<N, E> extends AbstractNetwork<N, E> {
    private final boolean allowsParallelEdges;
    private final boolean allowsSelfLoops;
    private final ElementOrder<E> edgeOrder;
    final MapIteratorCache<E, N> edgeToReferenceNode;
    private final boolean isDirected;
    final MapIteratorCache<N, NetworkConnections<N, E>> nodeConnections;
    private final ElementOrder<N> nodeOrder;

    @Override // com.google.common.graph.Network
    public boolean allowsParallelEdges() {
        return this.allowsParallelEdges;
    }

    @Override // com.google.common.graph.Network
    public boolean allowsSelfLoops() {
        return this.allowsSelfLoops;
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<E> edgeOrder() {
        return this.edgeOrder;
    }

    @Override // com.google.common.graph.Network
    public boolean isDirected() {
        return this.isDirected;
    }

    @Override // com.google.common.graph.Network
    public ElementOrder<N> nodeOrder() {
        return this.nodeOrder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((StandardNetwork<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((StandardNetwork<N, E>) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StandardNetwork(NetworkBuilder<? super N, ? super E> networkBuilder) {
        this(networkBuilder, networkBuilder.nodeOrder.createMap(networkBuilder.expectedNodeCount.or((Optional<Integer>) 10).intValue()), networkBuilder.edgeOrder.createMap(networkBuilder.expectedEdgeCount.or((Optional<Integer>) 20).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StandardNetwork(NetworkBuilder<? super N, ? super E> networkBuilder, Map<N, NetworkConnections<N, E>> map, Map<E, N> map2) {
        MapIteratorCache<N, NetworkConnections<N, E>> mapIteratorCache;
        this.isDirected = networkBuilder.directed;
        this.allowsParallelEdges = networkBuilder.allowsParallelEdges;
        this.allowsSelfLoops = networkBuilder.allowsSelfLoops;
        this.nodeOrder = (ElementOrder<N>) networkBuilder.nodeOrder.cast();
        this.edgeOrder = (ElementOrder<E>) networkBuilder.edgeOrder.cast();
        if (map instanceof TreeMap) {
            mapIteratorCache = new MapRetrievalCache<>(map);
        } else {
            mapIteratorCache = new MapIteratorCache<>(map);
        }
        this.nodeConnections = mapIteratorCache;
        this.edgeToReferenceNode = new MapIteratorCache<>(map2);
    }

    @Override // com.google.common.graph.Network
    public Set<N> nodes() {
        return this.nodeConnections.unmodifiableKeySet();
    }

    @Override // com.google.common.graph.Network
    public Set<E> edges() {
        return this.edgeToReferenceNode.unmodifiableKeySet();
    }

    @Override // com.google.common.graph.Network
    public Set<E> incidentEdges(N n) {
        return checkedConnections(n).incidentEdges();
    }

    @Override // com.google.common.graph.Network
    public EndpointPair<N> incidentNodes(E e) {
        N checkedReferenceNode = checkedReferenceNode(e);
        return EndpointPair.of(this, checkedReferenceNode, ((NetworkConnections) Objects.requireNonNull(this.nodeConnections.get(checkedReferenceNode))).adjacentNode(e));
    }

    @Override // com.google.common.graph.Network
    public Set<N> adjacentNodes(N n) {
        return checkedConnections(n).adjacentNodes();
    }

    @Override // com.google.common.graph.AbstractNetwork, com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        NetworkConnections<N, E> checkedConnections = checkedConnections(n);
        if (!this.allowsSelfLoops && n == n2) {
            return ImmutableSet.of();
        }
        Preconditions.checkArgument(containsNode(n2), "Node %s is not an element of this graph.", n2);
        return checkedConnections.edgesConnecting(n2);
    }

    @Override // com.google.common.graph.Network
    public Set<E> inEdges(N n) {
        return checkedConnections(n).inEdges();
    }

    @Override // com.google.common.graph.Network
    public Set<E> outEdges(N n) {
        return checkedConnections(n).outEdges();
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public Set<N> predecessors(N n) {
        return checkedConnections(n).predecessors();
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public Set<N> successors(N n) {
        return checkedConnections(n).successors();
    }

    final NetworkConnections<N, E> checkedConnections(N n) {
        NetworkConnections<N, E> networkConnections = this.nodeConnections.get(n);
        if (networkConnections != null) {
            return networkConnections;
        }
        Preconditions.checkNotNull(n);
        throw new IllegalArgumentException(String.format("Node %s is not an element of this graph.", n));
    }

    final N checkedReferenceNode(E e) {
        N n = this.edgeToReferenceNode.get(e);
        if (n != null) {
            return n;
        }
        Preconditions.checkNotNull(e);
        throw new IllegalArgumentException(String.format("Edge %s is not an element of this graph.", e));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean containsNode(N n) {
        return this.nodeConnections.containsKey(n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean containsEdge(E e) {
        return this.edgeToReferenceNode.containsKey(e);
    }
}
