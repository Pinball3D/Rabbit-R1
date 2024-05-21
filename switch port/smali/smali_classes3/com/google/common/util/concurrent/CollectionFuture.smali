.class abstract Lcom/google/common/util/concurrent/CollectionFuture;
.super Lcom/google/common/util/concurrent/AggregateFuture;
.source "CollectionFuture.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CollectionFuture$Present;,
        Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFuture<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CollectionFuture$Present<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/AggregateFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 47
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result p2

    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 52
    :goto_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 53
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final collectOneValue(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 63
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$Present;

    invoke-direct {v0, p2}, Lcom/google/common/util/concurrent/CollectionFuture$Present;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method abstract combine(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CollectionFuture$Present<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final handleAllCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    return-void
.end method
