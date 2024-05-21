.class Lcom/google/common/graph/AbstractNetwork$1;
.super Lcom/google/common/graph/AbstractGraph;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork;->asGraph()Lcom/google/common/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/AbstractGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractNetwork;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 57
    invoke-direct {p0}, Lcom/google/common/graph/AbstractGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public allowsSelfLoops()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 124
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->allowsSelfLoops()Z

    move-result p0

    return p0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 65
    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$1$1;-><init>(Lcom/google/common/graph/AbstractNetwork$1;)V

    return-object v0
.end method

.method public incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->unordered()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public isDirected()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 119
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result p0

    return p0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 107
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public nodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 60
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork$1;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/graph/AbstractNetwork$1;->this$0:Lcom/google/common/graph/AbstractNetwork;

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
