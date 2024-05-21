.class public abstract Lcom/google/common/collect/ForwardingSortedMultiset;
.super Lcom/google/common/collect/ForwardingMultiset;
.source "ForwardingSortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;,
        Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultiset<",
        "TE;>;",
        "Lcom/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Multiset;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method public descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method public pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    .line 134
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    .line 157
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected standardPollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 179
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 180
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0
.end method

.method protected standardPollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 204
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 205
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0
.end method

.method protected standardSubMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
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
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
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
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p0

    return-object p0
.end method
