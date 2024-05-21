.class final Lcom/google/common/graph/StandardMutableGraph;
.super Lcom/google/common/graph/ForwardingGraph;
.source "StandardMutableGraph.java"

# interfaces
.implements Lcom/google/common/graph/MutableGraph;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingGraph<",
        "TN;>;",
        "Lcom/google/common/graph/MutableGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final backingValueGraph:Lcom/google/common/graph/MutableValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MutableValueGraph<",
            "TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingGraph;-><init>()V

    .line 37
    new-instance v0, Lcom/google/common/graph/StandardMutableValueGraph;

    invoke-direct {v0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    iput-object v0, p0, Lcom/google/common/graph/StandardMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    return-void
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/StandardMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    .line 47
    invoke-interface {p0, p1}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method delegate()Lcom/google/common/graph/BaseGraph;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/StandardMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    return-object p0
.end method

.method public putEdge(Lcom/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardMutableGraph;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/StandardMutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/StandardMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    .line 52
    sget-object v0, Lcom/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-interface {p0, p1, p2, v0}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeEdge(Lcom/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardMutableGraph;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/StandardMutableGraph;->removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/StandardMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    .line 68
    invoke-interface {p0, p1, p2}, Lcom/google/common/graph/MutableValueGraph;->removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/StandardMutableGraph;->backingValueGraph:Lcom/google/common/graph/MutableValueGraph;

    .line 63
    invoke-interface {p0, p1}, Lcom/google/common/graph/MutableValueGraph;->removeNode(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
