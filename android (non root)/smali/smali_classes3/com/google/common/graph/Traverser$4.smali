.class Lcom/google/common/graph/Traverser$4;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser;->depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/Traverser;

.field final synthetic val$validated:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser;Lcom/google/common/collect/ImmutableSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/Traverser$4;->this$0:Lcom/google/common/graph/Traverser;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$4;->val$validated:Lcom/google/common/collect/ImmutableSet;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Traverser$4;->this$0:Lcom/google/common/graph/Traverser;

    .line 301
    invoke-virtual {v0}, Lcom/google/common/graph/Traverser;->newTraversal()Lcom/google/common/graph/Traverser$Traversal;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/graph/Traverser$4;->val$validated:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/Traverser$Traversal;->preOrder(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
