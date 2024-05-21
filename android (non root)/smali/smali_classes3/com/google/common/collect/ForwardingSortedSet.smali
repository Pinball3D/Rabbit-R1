.class public abstract Lcom/google/common/collect/ForwardingSortedSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "ForwardingSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

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

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
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

    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

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

    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

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

    .line 88
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0, v2, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method protected standardSubSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
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

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

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

    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

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

    .line 98
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method
