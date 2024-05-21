.class public final Lcom/google/common/math/PairedStatsAccumulator;
.super Ljava/lang/Object;
.source "PairedStatsAccumulator.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private sumOfProductsOfDeltas:D

.field private final xStats:Lcom/google/common/math/StatsAccumulator;

.field private final yStats:Lcom/google/common/math/StatsAccumulator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 41
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    return-void
.end method

.method private static ensureInUnitRange(D)D
    .locals 6

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    .line 241
    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/Doubles;->constrainToRange(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ensurePositive(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 p0, 0x1

    return-wide p0
.end method


# virtual methods
.method public add(DD)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 58
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 59
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 60
    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    sub-double/2addr p1, v2

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    sub-double v2, p3, v2

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 65
    invoke-virtual {p0, p3, p4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    return-void
.end method

.method public addAll(Lcom/google/common/math/PairedStats;)V
    .locals 10

    .line 73
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 77
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/Stats;)V

    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 78
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 85
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v2

    .line 86
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 87
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-object v8, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v8}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 88
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    :goto_0
    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 90
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/Stats;)V

    return-void
.end method

.method public count()J
    .locals 2

    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 100
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final leastSquaresFit()Lcom/google/common/math/LinearTransformation;
    .locals 7

    .line 214
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v3, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 215
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/google/common/math/LinearTransformation;->forNaN()Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 218
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 220
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 221
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lcom/google/common/math/LinearTransformation;->mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    div-double/2addr v1, v3

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 224
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LinearTransformation;->horizontal(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 227
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 228
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LinearTransformation;->vertical(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0
.end method

.method public final pearsonsCorrelationCoefficient()D
    .locals 9

    .line 167
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v3, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 168
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 171
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v3

    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 172
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v3, v7

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 173
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    cmpl-double v0, v5, v7

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 174
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    mul-double/2addr v3, v5

    .line 178
    invoke-direct {p0, v3, v4}, Lcom/google/common/math/PairedStatsAccumulator;->ensurePositive(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/common/math/PairedStatsAccumulator;->ensureInUnitRange(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public populationCovariance()D
    .locals 4

    .line 128
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 129
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleCovariance()D
    .locals 6

    .line 146
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 147
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/PairedStats;
    .locals 5

    .line 95
    new-instance v0, Lcom/google/common/math/PairedStats;

    iget-object v1, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v1}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object v0
.end method

.method public xStats()Lcom/google/common/math/Stats;
    .locals 0

    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 105
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public yStats()Lcom/google/common/math/Stats;
    .locals 0

    iget-object p0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 110
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method
