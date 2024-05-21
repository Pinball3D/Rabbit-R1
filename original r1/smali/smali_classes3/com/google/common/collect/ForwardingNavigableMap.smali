.class public abstract Lcom/google/common/collect/ForwardingNavigableMap;
.super Lcom/google/common/collect/ForwardingSortedMap;
.source "ForwardingNavigableMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;,
        Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedMap;-><init>()V

    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/util/SortedMap;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardCeilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardCeilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingNavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected standardDescendingKeySet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method protected standardFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method protected standardFirstKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method protected standardFloorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardFloorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingNavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected standardHeadMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method protected standardHigherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardHigherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingNavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected standardLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method protected standardLastKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 251
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method protected standardLowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardLowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingNavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected standardPollFirstEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method protected standardPollLastEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method protected standardSubMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ForwardingNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method protected standardTailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap;->delegate()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method
