.class Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    .line 1428
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1422
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    .line 1433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 1435
    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 1440
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    .line 1441
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 1442
    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 1443
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    return-void
.end method
