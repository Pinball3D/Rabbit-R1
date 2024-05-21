.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .locals 1

    .line 384
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 387
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    :goto_0
    return-wide p0
.end method

.method private merge(JDDDD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-nez v13, :cond_0

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    iput-wide v3, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    iput-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto :goto_1

    :cond_0
    add-long/2addr v11, v1

    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 170
    invoke-static {v11, v12}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static/range {p3 .. p4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v13, v3, v11

    long-to-double v1, v1

    mul-double v15, v13, v1

    iget-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v9, v9

    div-double/2addr v15, v9

    add-double/2addr v11, v15

    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    sub-double/2addr v3, v11

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    add-double v1, v5, v13

    add-double/2addr v9, v1

    iput-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 176
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    :goto_0
    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 179
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-wide/from16 v3, p9

    .line 180
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    :goto_1
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 7

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v5, 0x1

    if-nez v2, :cond_0

    iput-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 55
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result p1

    if-nez p1, :cond_2

    iput-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_1

    :cond_0
    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 60
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v2, p1, v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    sub-double v0, p1, v0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 66
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iput-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 69
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 70
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    :cond_2
    :goto_1
    return-void
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .locals 12

    .line 137
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v10

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    return-void
.end method

.method public addAll(Lcom/google/common/math/StatsAccumulator;)V
    .locals 12

    .line 150
    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->min()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/google/common/math/StatsAccumulator;->max()D

    move-result-wide v10

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([D)V
    .locals 4

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 105
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 4

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    int-to-double v2, v2

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addAll([J)V
    .locals 4

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    long-to-double v2, v2

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0
.end method

.method public mean()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0
.end method

.method public min()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0
.end method

.method public final populationStandardDeviation()D
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 256
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleStandardDeviation()D
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .locals 6

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 296
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 300
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .locals 12

    .line 186
    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v7, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v9, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method

.method public final sum()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
