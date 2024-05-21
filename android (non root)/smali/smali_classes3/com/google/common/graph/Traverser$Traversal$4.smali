.class Lcom/google/common/graph/Traverser$Traversal$4;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$Traversal;->postOrder(Ljava/util/Iterator;)Ljava/util/Iterator;
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

.field final synthetic val$ancestorStack:Ljava/util/Deque;

.field final synthetic val$horizon:Ljava/util/Deque;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$Traversal;Ljava/util/Deque;Ljava/util/Deque;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/Traverser$Traversal$4;->this$0:Lcom/google/common/graph/Traverser$Traversal;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$horizon:Ljava/util/Deque;

    iput-object p3, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$ancestorStack:Ljava/util/Deque;

    .line 469
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

    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$Traversal$4;->this$0:Lcom/google/common/graph/Traverser$Traversal;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$horizon:Ljava/util/Deque;

    .line 473
    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$Traversal;->visitNext(Ljava/util/Deque;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/graph/Traverser$Traversal$4;->this$0:Lcom/google/common/graph/Traverser$Traversal;

    .line 474
    iget-object v1, v1, Lcom/google/common/graph/Traverser$Traversal;->successorFunction:Lcom/google/common/graph/SuccessorsFunction;

    invoke-interface {v1, v0}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 475
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$horizon:Ljava/util/Deque;

    .line 478
    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$ancestorStack:Ljava/util/Deque;

    .line 479
    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$ancestorStack:Ljava/util/Deque;

    .line 482
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/common/graph/Traverser$Traversal$4;->val$ancestorStack:Ljava/util/Deque;

    .line 483
    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$Traversal$4;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
