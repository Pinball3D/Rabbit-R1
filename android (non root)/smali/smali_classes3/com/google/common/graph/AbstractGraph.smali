.class public abstract Lcom/google/common/graph/AbstractGraph;
.super Lcom/google/common/graph/AbstractBaseGraph;
.source "AbstractGraph.java"

# interfaces
.implements Lcom/google/common/graph/Graph;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractBaseGraph<",
        "TN;>;",
        "Lcom/google/common/graph/Graph<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/common/graph/AbstractBaseGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/google/common/graph/AbstractBaseGraph;->edges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lcom/google/common/graph/Graph;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 42
    :cond_1
    check-cast p1, Lcom/google/common/graph/Graph;

    .line 44
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public bridge synthetic hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/google/common/graph/AbstractBaseGraph;->incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 58
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->allowsSelfLoops()Z

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "isDirected: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", allowsSelfLoops: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
