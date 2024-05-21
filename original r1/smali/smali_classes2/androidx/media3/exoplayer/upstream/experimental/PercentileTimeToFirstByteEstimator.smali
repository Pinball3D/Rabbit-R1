.class public final Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;
.super Ljava/lang/Object;
.source "PercentileTimeToFirstByteEstimator.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa

.field public static final DEFAULT_PERCENTILE:F = 0.5f

.field private static final MAX_DATA_SPECS:I = 0xa


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private final initializedDataSpecs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroidx/media3/datasource/DataSpec;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isEmpty:Z

.field private final percentile:F

.field private final slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 69
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method constructor <init>(IFLandroidx/media3/common/util/Clock;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p2, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->percentile:F

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 85
    new-instance p2, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 86
    new-instance p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    return-void
.end method


# virtual methods
.method public getTimeToFirstByteEstimateUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    iget p0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->percentile:F

    .line 92
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->getPercentile(F)F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public onTransferInitializing(Landroidx/media3/datasource/DataSpec;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 104
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 105
    invoke-interface {p0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransferStart(Landroidx/media3/datasource/DataSpec;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 110
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 116
    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float p1, v1

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->addSample(IF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    .line 97
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    return-void
.end method
