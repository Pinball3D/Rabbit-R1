.class final Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SampleDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

.field public endPosition:J

.field public next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field public startPosition:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->reset(JI)V

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    return-object v1
.end method

.method public getAllocation()Lcom/google/android/exoplayer2/upstream/Allocation;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 537
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/upstream/Allocation;

    return-object p0
.end method

.method public initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public next()Lcom/google/android/exoplayer2/upstream/Allocator$AllocationNode;
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    if-eqz p0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public reset(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 494
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    return-void
.end method

.method public translateOffset(J)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 518
    iget p0, p0, Lcom/google/android/exoplayer2/upstream/Allocation;->offset:I

    add-int/2addr p1, p0

    return p1
.end method
