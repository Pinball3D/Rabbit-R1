.class public Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .locals 0

    .line 71
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>([IJ)V
    .locals 1

    .line 67
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 77
    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    const/4 p2, 0x0

    .line 78
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    .line 79
    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .locals 5

    .line 160
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 163
    aget v4, v0, v3

    aput v4, v0, v1

    .line 164
    aput v1, v0, v3

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 4

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 8

    .line 112
    new-array v0, p2, [I

    .line 113
    new-array v1, p2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 115
    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v0, v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v5, v3, 0x1

    .line 116
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 117
    aget v6, v1, v4

    aput v6, v1, v3

    add-int/2addr v3, p1

    .line 118
    aput v3, v1, v4

    move v3, v5

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 121
    array-length v3, v3

    add-int/2addr v3, p2

    new-array v3, v3, [I

    move v4, v2

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 124
    array-length v7, v6

    add-int/2addr v7, p2

    if-ge v2, v7, :cond_3

    if-ge v4, p2, :cond_1

    .line 125
    aget v7, v0, v4

    if-ne v5, v7, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 127
    aget v4, v1, v4

    aput v4, v3, v2

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 129
    aget v5, v6, v5

    aput v5, v3, v2

    if-lt v5, p1, :cond_2

    add-int/2addr v5, p2

    .line 131
    aput v5, v3, v2

    :cond_2
    move v5, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v3, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 6

    sub-int v0, p2, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 141
    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 143
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 144
    aget v4, v4, v2

    if-lt v4, p1, :cond_0

    if-ge v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    sub-int v5, v2, v3

    if-lt v4, p1, :cond_1

    sub-int/2addr v4, v0

    .line 148
    :cond_1
    aput v4, v1, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public getFirstIndex()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 107
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLastIndex()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 102
    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 85
    array-length p0, p0

    return p0
.end method

.method public getNextIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    .line 90
    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 91
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getPreviousIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    .line 96
    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 97
    aget v0, p0, p1

    :cond_0
    return v0
.end method
