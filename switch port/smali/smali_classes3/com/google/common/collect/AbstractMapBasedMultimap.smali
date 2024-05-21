.class abstract Lcom/google/common/collect/AbstractMapBasedMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$Itr;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient totalSize:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2

    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2

    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->removeValuesForKey(Ljava/lang/Object;)V

    return-void
.end method

.method private getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 205
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 208
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 584
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 585
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    goto :goto_0

    .line 586
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private removeValuesForKey(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 1148
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 1151
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1152
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    :cond_0
    return-void
.end method


# virtual methods
.method backingMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object p0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 273
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 274
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 276
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 179
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1287
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1260
    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1261
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0

    .line 1263
    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 923
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method createKeys()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 1241
    new-instance v0, Lcom/google/common/collect/Multimaps$Keys;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$Keys;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method final createMaybeNavigableAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 1291
    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 1292
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0

    .line 1293
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 1294
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0

    .line 1296
    :cond_1
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method final createMaybeNavigableKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 927
    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 928
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0

    .line 929
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 930
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0

    .line 932
    :cond_1
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method createUnmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1219
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1255
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1277
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$2;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 289
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 293
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 186
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 189
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 191
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "New Collection violated the Collection spec"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 196
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 251
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createUnmodifiableEmptyCollection()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 258
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 260
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 222
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 223
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 229
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 230
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 232
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 233
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 235
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method final setMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 129
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return p0
.end method

.method unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 267
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1224
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1214
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method final wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 306
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    :goto_0
    return-object v0
.end method
