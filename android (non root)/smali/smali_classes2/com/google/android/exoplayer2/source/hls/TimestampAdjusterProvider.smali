.class public final Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# instance fields
.field private final timestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getAdjuster(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide v1, 0x7ffffffffffffffeL

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
