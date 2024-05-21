.class final Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;
.super Ljava/lang/Object;
.source "IntArrayQueue.java"


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10


# instance fields
.field private data:[I

.field private headIndex:I

.field private size:I

.field private tailIndex:I

.field private wrapAroundMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    return-void
.end method

.method private doubleArraySize()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 96
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    .line 101
    new-array v1, v1, [I

    .line 102
    array-length v2, v0

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    .line 104
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 105
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 47
    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->doubleArraySize()V

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 52
    aput p1, v1, v0

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return-void
.end method

.method public capacity()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 92
    array-length p0, p0

    return p0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove()I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 66
    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return v1

    .line 63
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return p0
.end method
