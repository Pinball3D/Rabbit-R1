.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 336
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 484
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 485
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 487
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 504
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 508
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 510
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    .line 511
    invoke-static {v2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    if-nez v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    :cond_1
    return p1
.end method

.method addToMap()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 391
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 537
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 538
    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 539
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 521
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 522
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 528
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 407
    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    return-object p0
.end method

.method getDelegate()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object p0
.end method

.method getKey()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 412
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 413
    invoke-interface {p0}, Ljava/util/Collection;->hashCode()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 429
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    .line 353
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 356
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 357
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 544
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 545
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 547
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 548
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 555
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 559
    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 561
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    .line 562
    invoke-static {v2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 563
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_1
    return p1
.end method

.method removeIfEmpty()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 371
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 372
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 570
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 572
    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 574
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    .line 575
    invoke-static {v2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 576
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_0
    return p1
.end method

.method public size()I
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 398
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 418
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
