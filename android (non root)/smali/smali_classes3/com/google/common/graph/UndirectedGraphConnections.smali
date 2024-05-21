.class final Lcom/google/common/graph/UndirectedGraphConnections;
.super Ljava/lang/Object;
.source "UndirectedGraphConnections.java"

# interfaces
.implements Lcom/google/common/graph/GraphConnections;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/GraphConnections<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final adjacentNodeValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$incidentEdgeIterator$0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method static of(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/UndirectedGraphConnections;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;)",
            "Lcom/google/common/graph/UndirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/common/graph/UndirectedGraphConnections$1;->$SwitchMap$com$google$common$graph$ElementOrder$Type:[I

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/graph/ElementOrder$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    .line 54
    new-instance p0, Lcom/google/common/graph/UndirectedGraphConnections;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/UndirectedGraphConnections;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 51
    :cond_1
    new-instance p0, Lcom/google/common/graph/UndirectedGraphConnections;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/UndirectedGraphConnections;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method static ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedGraphConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/UndirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/google/common/graph/UndirectedGraphConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/graph/UndirectedGraphConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/google/common/graph/UndirectedGraphConnections;->addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 114
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 67
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 83
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/google/common/graph/UndirectedGraphConnections$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/common/graph/UndirectedGraphConnections$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 82
    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public predecessors()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public removePredecessor(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/common/graph/UndirectedGraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 102
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public successors()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/UndirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 90
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
