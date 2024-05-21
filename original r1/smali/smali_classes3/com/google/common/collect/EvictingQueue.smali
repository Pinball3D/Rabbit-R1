.class public final Lcom/google/common/collect/EvictingQueue;
.super Lcom/google/common/collect/ForwardingQueue;
.source "EvictingQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final delegate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field final maxSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingQueue;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize (%s) must >= 0"

    .line 56
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/EvictingQueue;->delegate:Ljava/util/Queue;

    iput p1, p0, Lcom/google/common/collect/EvictingQueue;->maxSize:I

    return-void
.end method

.method public static create(I)Lcom/google/common/collect/EvictingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/EvictingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/common/collect/EvictingQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EvictingQueue;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/EvictingQueue;->maxSize:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->size()I

    move-result v0

    iget v2, p0, Lcom/google/common/collect/EvictingQueue;->maxSize:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/EvictingQueue;->delegate:Ljava/util/Queue;

    .line 112
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/EvictingQueue;->delegate:Ljava/util/Queue;

    .line 114
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/EvictingQueue;->maxSize:I

    if-lt v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->clear()V

    iget v1, p0, Lcom/google/common/collect/EvictingQueue;->maxSize:I

    sub-int/2addr v0, v1

    .line 124
    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-result p0

    return p0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EvictingQueue;->standardAddAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->delegate()Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->delegate()Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/EvictingQueue;->delegate:Ljava/util/Queue;

    return-object p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EvictingQueue;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public remainingCapacity()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/EvictingQueue;->maxSize:I

    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/google/common/collect/ForwardingQueue;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
