.class final Lcom/google/common/collect/ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "ConsumingQueueIterator.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 41
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ConsumingQueueIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 44
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
