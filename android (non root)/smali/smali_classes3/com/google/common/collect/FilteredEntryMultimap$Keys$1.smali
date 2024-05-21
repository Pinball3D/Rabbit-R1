.class Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$Keys;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$Keys;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    .line 382
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method

.method static synthetic lambda$removeEntriesIf$0(Lcom/google/common/base/Predicate;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 403
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    .line 402
    invoke-interface {p0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeEntriesIf(Lcom/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    .line 400
    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/base/Predicate;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    .line 391
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    return-object p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 408
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
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

    .line 413
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    .line 396
    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
