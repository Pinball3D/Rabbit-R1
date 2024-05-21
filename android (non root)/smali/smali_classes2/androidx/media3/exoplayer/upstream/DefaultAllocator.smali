.class public final Landroidx/media3/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 65
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 66
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    iput p2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    iput p3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 p1, p3, 0x64

    .line 70
    new-array p1, p1, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    .line 72
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :goto_2
    if-ge v1, p3, :cond_3

    mul-int p1, v1, p2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 75
    new-instance v2, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v2, v3, p1}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Landroidx/media3/exoplayer/upstream/Allocation;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 101
    aget-object v0, v1, v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    .line 102
    aput-object v3, v1, v2

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 105
    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 109
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    return p0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    .line 178
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 117
    aput-object p1, v0, v1

    iget p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V
    .locals 3

    monitor-enter p0

    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 126
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->getAllocation()Landroidx/media3/exoplayer/upstream/Allocation;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 128
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->next()Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 136
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 137
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 140
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 150
    aget-object v3, v3, v1

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 151
    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 154
    aget-object v4, v4, v2

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 155
    iget-object v5, v4, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v6, v1, 0x1

    .line 158
    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    .line 159
    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 167
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    .line 172
    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
