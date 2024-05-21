.class abstract Lcom/google/common/collect/CompactHashMap$Itr;
.super Ljava/lang/Object;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field expectedMetadata:I

.field indexToRemove:I

.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->access$000(Lcom/google/common/collect/CompactHashMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    .line 628
    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap;Lcom/google/common/collect/CompactHashMap$1;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 667
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->access$000(Lcom/google/common/collect/CompactHashMap;)I

    move-result v0

    iget p0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v0, p0, :cond_0

    return-void

    .line 668
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method abstract getOutput(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method incrementExpectedModCount()V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 643
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 647
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 648
    invoke-virtual {v1, v2}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    return-object v0

    .line 644
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 3

    .line 654
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 655
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->incrementExpectedModCount()V

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 657
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->access$100(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 658
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/CompactHashMap;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method
