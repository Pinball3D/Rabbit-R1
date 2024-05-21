.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    .line 632
    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 0

    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    .line 640
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method map()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    return-object p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->this$2:Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    .line 645
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->access$400(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 650
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method
