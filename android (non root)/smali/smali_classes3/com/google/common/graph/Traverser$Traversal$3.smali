.class Lcom/google/common/graph/Traverser$Traversal$3;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$Traversal;->topDown(Ljava/util/Iterator;Lcom/google/common/graph/Traverser$InsertionOrder;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/Traverser$Traversal;

.field final synthetic val$horizon:Ljava/util/Deque;

.field final synthetic val$order:Lcom/google/common/graph/Traverser$InsertionOrder;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$Traversal;Ljava/util/Deque;Lcom/google/common/graph/Traverser$InsertionOrder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/Traverser$Traversal$3;->this$0:Lcom/google/common/graph/Traverser$Traversal;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$Traversal$3;->val$horizon:Ljava/util/Deque;

    iput-object p3, p0, Lcom/google/common/graph/Traverser$Traversal$3;->val$order:Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 444
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$Traversal$3;->this$0:Lcom/google/common/graph/Traverser$Traversal;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$Traversal$3;->val$horizon:Ljava/util/Deque;

    .line 449
    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$Traversal;->visitNext(Ljava/util/Deque;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/graph/Traverser$Traversal$3;->this$0:Lcom/google/common/graph/Traverser$Traversal;

    .line 451
    iget-object v1, v1, Lcom/google/common/graph/Traverser$Traversal;->successorFunction:Lcom/google/common/graph/SuccessorsFunction;

    invoke-interface {v1, v0}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 452
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/graph/Traverser$Traversal$3;->val$order:Lcom/google/common/graph/Traverser$InsertionOrder;

    iget-object p0, p0, Lcom/google/common/graph/Traverser$Traversal$3;->val$horizon:Ljava/util/Deque;

    .line 455
    invoke-virtual {v2, p0, v1}, Lcom/google/common/graph/Traverser$InsertionOrder;->insertInto(Ljava/util/Deque;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/common/graph/Traverser$Traversal$3;->val$horizon:Ljava/util/Deque;

    .line 459
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$Traversal$3;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
