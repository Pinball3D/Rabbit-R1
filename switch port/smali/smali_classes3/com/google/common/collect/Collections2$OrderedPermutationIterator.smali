.class final Lcom/google/common/collect/Collections2$OrderedPermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrderedPermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field nextPermutation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 493
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 494
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    iput-object p2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .locals 3

    .line 510
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->findNextJ()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 519
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->findNextL(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 522
    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 523
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    .line 524
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 489
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->computeNext()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected computeNext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 504
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->calculateNextPermutation()V

    return-object v0
.end method

.method findNextJ()I
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 532
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 533
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 534
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method findNextL(I)I
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 546
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 547
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 548
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-le v1, p1, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 549
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 553
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "this statement should be unreachable"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
