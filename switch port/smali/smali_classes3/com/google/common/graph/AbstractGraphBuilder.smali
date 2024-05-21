.class abstract Lcom/google/common/graph/AbstractGraphBuilder;
.super Ljava/lang/Object;
.source "AbstractGraphBuilder.java"


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field allowsSelfLoops:Z

.field final directed:Z

.field expectedNodeCount:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field

.field nodeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    .line 30
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->insertion()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 31
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->unordered()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/AbstractGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 33
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    iput-boolean p1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->directed:Z

    return-void
.end method
