.class abstract Lcom/google/common/graph/AbstractDirectedNetworkConnections;
.super Ljava/lang/Object;
.source "AbstractDirectedNetworkConnections.java"

# interfaces
.implements Lcom/google/common/graph/NetworkConnections;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/NetworkConnections<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field final inEdgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation
.end field

.field final outEdgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation
.end field

.field private selfLoopCount:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 55
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    .line 56
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    .line 57
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-gt p3, p0, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-gt p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    return p0
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    .line 130
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    :cond_0
    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 132
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    .line 141
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 142
    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method public adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    .line 104
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->successors()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object p0

    return-object p0
.end method

.method public inEdges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 91
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentEdges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;-><init>(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)V

    return-object v0
.end method

.method public outEdges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    .line 96
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->selfLoopCount:I

    .line 110
    invoke-static {p2}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    :cond_0
    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 112
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 114
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    .line 119
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 121
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
