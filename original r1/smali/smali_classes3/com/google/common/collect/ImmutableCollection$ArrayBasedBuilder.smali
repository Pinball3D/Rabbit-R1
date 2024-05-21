.class abstract Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayBasedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field forceCopy:Z

.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 473
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    const-string v0, "initialCapacity"

    .line 474
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 475
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    return-void
.end method

.method private getReadyToExpandTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 485
    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 486
    array-length v1, v0

    .line 487
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    if-eqz p1, :cond_1

    .line 490
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 498
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 499
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 500
    aput-object p1, v0, v1

    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 467
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 507
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 529
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 530
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 531
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 532
    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    .line 533
    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iget-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 534
    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    return-object p0

    .line 538
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method final addAll([Ljava/lang/Object;I)V
    .locals 3

    .line 512
    invoke-static {p1, p2}, Lcom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr v0, p2

    .line 513
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    const/4 v2, 0x0

    .line 522
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    return-void
.end method
