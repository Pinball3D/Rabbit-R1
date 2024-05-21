.class public final Lcom/google/common/graph/ValueGraphBuilder;
.super Lcom/google/common/graph/AbstractGraphBuilder;
.source "ValueGraphBuilder.java"


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
        "Lcom/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    return-void
.end method

.method private cast()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static directed()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 97
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 98
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 99
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/ValueGraphBuilder;->incidentEdgeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static undirected()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops:Z

    return-object p0
.end method

.method public build()Lcom/google/common/graph/MutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/MutableValueGraph<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/google/common/graph/StandardMutableValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/StandardMutableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method copy()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    iget-boolean v1, p0, Lcom/google/common/graph/ValueGraphBuilder;->directed:Z

    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 186
    iget-boolean v1, p0, Lcom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops:Z

    iput-boolean v1, v0, Lcom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops:Z

    .line 187
    iget-object v1, p0, Lcom/google/common/graph/ValueGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lcom/google/common/graph/ValueGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 188
    iget-object v1, p0, Lcom/google/common/graph/ValueGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    iput-object v1, v0, Lcom/google/common/graph/ValueGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 189
    iget-object p0, p0, Lcom/google/common/graph/ValueGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    iput-object p0, v0, Lcom/google/common/graph/ValueGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public expectedNodeCount(I)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/ValueGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    return-object p0
.end method

.method public immutable()Lcom/google/common/graph/ImmutableValueGraph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/ImmutableValueGraph$Builder<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object p0

    .line 115
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableValueGraph$Builder;-><init>(Lcom/google/common/graph/ValueGraphBuilder;)V

    return-object v0
.end method

.method public incidentEdgeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v0

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->UNORDERED:Lcom/google/common/graph/ElementOrder$Type;

    if-eq v0, v1, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v0

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->STABLE:Lcom/google/common/graph/ElementOrder$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable()."

    .line 166
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0}, Lcom/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object p0

    .line 173
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/ElementOrder;

    iput-object p1, p0, Lcom/google/common/graph/ValueGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    return-object p0
.end method

.method public nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object p0

    .line 147
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/ElementOrder;

    iput-object p1, p0, Lcom/google/common/graph/ValueGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    return-object p0
.end method
