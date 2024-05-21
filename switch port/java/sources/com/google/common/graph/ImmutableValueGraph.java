package com.google.common.graph;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.Immutable;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@Immutable(containerOf = {"N", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class ImmutableValueGraph<N, V> extends StandardValueGraph<N, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.ValueGraph
    @CheckForNull
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(EndpointPair endpointPair, @CheckForNull Object obj) {
        return super.edgeValueOrDefault(endpointPair, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.ValueGraph
    @CheckForNull
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(Object obj, Object obj2, @CheckForNull Object obj3) {
        return super.edgeValueOrDefault(obj, obj2, obj3);
    }

    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.AbstractValueGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(EndpointPair endpointPair) {
        return super.hasEdgeConnecting(endpointPair);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.AbstractValueGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.AbstractValueGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((ImmutableValueGraph<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.StandardValueGraph, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((ImmutableValueGraph<N, V>) obj);
    }

    private ImmutableValueGraph(ValueGraph<N, V> valueGraph) {
        super(ValueGraphBuilder.from(valueGraph), getNodeConnections(valueGraph), valueGraph.edges().size());
    }

    public static <N, V> ImmutableValueGraph<N, V> copyOf(ValueGraph<N, V> valueGraph) {
        if (valueGraph instanceof ImmutableValueGraph) {
            return (ImmutableValueGraph) valueGraph;
        }
        return new ImmutableValueGraph<>(valueGraph);
    }

    @Deprecated
    public static <N, V> ImmutableValueGraph<N, V> copyOf(ImmutableValueGraph<N, V> immutableValueGraph) {
        return (ImmutableValueGraph) Preconditions.checkNotNull(immutableValueGraph);
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.stable();
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.ValueGraph
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(this);
    }

    private static <N, V> ImmutableMap<N, GraphConnections<N, V>> getNodeConnections(ValueGraph<N, V> valueGraph) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n : valueGraph.nodes()) {
            builder.put(n, connectionsOf(valueGraph, n));
        }
        return builder.buildOrThrow();
    }

    private static <N, V> GraphConnections<N, V> connectionsOf(final ValueGraph<N, V> valueGraph, final N n) {
        Function function = new Function() { // from class: com.google.common.graph.ImmutableValueGraph$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                Object requireNonNull;
                requireNonNull = Objects.requireNonNull(ValueGraph.this.edgeValueOrDefault(n, obj, null));
                return requireNonNull;
            }
        };
        if (valueGraph.isDirected()) {
            return DirectedGraphConnections.ofImmutable(n, valueGraph.incidentEdges(n), function);
        }
        return UndirectedGraphConnections.ofImmutable(Maps.asMap(valueGraph.adjacentNodes(n), function));
    }

    /* loaded from: classes3.dex */
    public static class Builder<N, V> {
        private final MutableValueGraph<N, V> mutableValueGraph;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(ValueGraphBuilder<N, V> valueGraphBuilder) {
            this.mutableValueGraph = valueGraphBuilder.copy().incidentEdgeOrder(ElementOrder.stable()).build();
        }

        public Builder<N, V> addNode(N n) {
            this.mutableValueGraph.addNode(n);
            return this;
        }

        public Builder<N, V> putEdgeValue(N n, N n2, V v) {
            this.mutableValueGraph.putEdgeValue(n, n2, v);
            return this;
        }

        public Builder<N, V> putEdgeValue(EndpointPair<N> endpointPair, V v) {
            this.mutableValueGraph.putEdgeValue(endpointPair, v);
            return this;
        }

        public ImmutableValueGraph<N, V> build() {
            return ImmutableValueGraph.copyOf(this.mutableValueGraph);
        }
    }
}
