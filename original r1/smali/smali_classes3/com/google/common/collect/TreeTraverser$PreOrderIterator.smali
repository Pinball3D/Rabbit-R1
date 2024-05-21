.class final Lcom/google/common/collect/TreeTraverser$PreOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    .line 133
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 134
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 135
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 140
    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 145
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 148
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 152
    invoke-interface {p0, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
