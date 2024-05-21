.class Lcom/google/common/graph/Traverser$Traversal$1;
.super Lcom/google/common/graph/Traverser$Traversal;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$Traversal;->inGraph(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser$Traversal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser$Traversal<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic val$visited:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/graph/SuccessorsFunction;Ljava/util/Set;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/graph/Traverser$Traversal$1;->val$visited:Ljava/util/Set;

    .line 386
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$Traversal;-><init>(Lcom/google/common/graph/SuccessorsFunction;)V

    return-void
.end method


# virtual methods
.method visitNext(Ljava/util/Deque;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 390
    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 391
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 401
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$Traversal$1;->val$visited:Ljava/util/Set;

    .line 402
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 406
    :cond_1
    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
