.class final Lcom/google/common/cache/LocalCache$AccessQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3661
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3662
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$AccessQueue$1;-><init>(Lcom/google/common/cache/LocalCache$AccessQueue;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3766
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3768
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3769
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V

    move-object v0, v1

    goto :goto_0

    .line 3773
    :cond_0
    invoke-interface {v1, v1}, Lcom/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3774
    invoke-interface {p0, p0}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 3744
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    .line 3745
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    sget-object p1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3750
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3779
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue$2;

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->peek()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/LocalCache$AccessQueue$2;-><init>(Lcom/google/common/cache/LocalCache$AccessQueue;Lcom/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/cache/ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3703
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3706
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3707
    invoke-static {p1, p0}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3661
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$AccessQueue;->offer(Lcom/google/common/cache/ReferenceEntry;)Z

    move-result p0

    return p0
.end method

.method public peek()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3714
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 0

    .line 3661
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->peek()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    return-object p0
.end method

.method public poll()Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3720
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3725
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$AccessQueue;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 0

    .line 3661
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->poll()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3732
    check-cast p1, Lcom/google/common/cache/ReferenceEntry;

    .line 3733
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object p0

    .line 3734
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3735
    invoke-static {p0, v0}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3736
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3738
    sget-object p0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    .line 3756
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/ReferenceEntry;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3758
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
