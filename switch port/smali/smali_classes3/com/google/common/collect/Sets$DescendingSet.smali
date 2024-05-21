.class Lcom/google/common/collect/Sets$DescendingSet;
.super Lcom/google/common/collect/ForwardingNavigableSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingNavigableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final forward:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1916
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingNavigableSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-void
.end method

.method private static reverse(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 2018
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1940
    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 2008
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2010
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object p0

    return-object p0

    .line 2012
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Sets$DescendingSet;->reverse(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1912
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 1912
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 0

    .line 1912
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/SortedSet;
    .locals 0

    .line 1912
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1968
    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-object p0
.end method

.method public first()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 2024
    invoke-interface {p0}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1934
    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1987
    invoke-interface {p0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1992
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;->standardHeadSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1946
    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 2035
    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public last()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 2030
    invoke-interface {p0}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1928
    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1952
    invoke-interface {p0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1958
    invoke-interface {p0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
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
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1977
    invoke-interface {p0, p3, p4, p1, p2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
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
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1982
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Sets$DescendingSet;->standardSubSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1997
    invoke-interface {p0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 2002
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;->standardTailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->standardToArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2046
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 2051
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->standardToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
