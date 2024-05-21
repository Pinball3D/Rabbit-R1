.class public final Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;
.super Ljava/lang/Object;
.source "ExponentialWeightedAverageTimeToFirstByteEstimator.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMOOTHING_FACTOR:D = 0.85

.field private static final MAX_DATA_SPECS:I = 0xa


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private estimateUs:J

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

.field private final smoothingFactor:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3feb333333333333L    # 0.85

    .line 47
    sget-object v2, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;-><init>(DLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 56
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;-><init>(DLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method constructor <init>(DLandroidx/media3/common/util/Clock;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->smoothingFactor:D

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 70
    new-instance p1, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-void
.end method


# virtual methods
.method public getTimeToFirstByteEstimateUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-wide v0
.end method

.method public onTransferInitializing(Landroidx/media3/datasource/DataSpec;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 88
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
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Landroidx/media3/common/util/Clock;

    .line 98
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->smoothingFactor:D

    long-to-double v2, v2

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    long-to-double v0, v0

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    double-to-long v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-void
.end method
