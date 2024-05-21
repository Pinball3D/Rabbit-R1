.class Lcom/google/common/graph/AbstractBaseGraph$2;
.super Lcom/google/common/graph/IncidentEdgeSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractBaseGraph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/IncidentEdgeSet<",
        "TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractBaseGraph;Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 0

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/IncidentEdgeSet;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    .line 116
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V

    .line 115
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    .line 120
    invoke-interface {v1, v2}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V

    .line 118
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    .line 114
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    .line 113
    invoke-static {p0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    .line 125
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;-><init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V

    .line 124
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    .line 123
    invoke-static {p0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$iterator$0$com-google-common-graph-AbstractBaseGraph$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$iterator$1$com-google-common-graph-AbstractBaseGraph$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$iterator$2$com-google-common-graph-AbstractBaseGraph$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method
