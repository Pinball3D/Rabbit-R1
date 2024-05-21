.class public final Lcom/google/common/math/PairedStats;
.super Ljava/lang/Object;
.source "PairedStats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final BYTES:I = 0x58

.field private static final serialVersionUID:J


# instance fields
.field private final sumOfProductsOfDeltas:D

.field private final xStats:Lcom/google/common/math/Stats;

.field private final yStats:Lcom/google/common/math/Stats;


# direct methods
.method constructor <init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    iput-object p2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    iput-wide p3, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    return-void
.end method

.method private static ensureInUnitRange(D)D
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0
.end method

.method private static ensurePositive(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public static fromByteArray([B)Lcom/google/common/math/PairedStats;
    .locals 4

    .line 306
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    array-length v0, p0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Expected PairedStats.BYTES = %s, got %s"

    array-length v3, p0

    invoke-static {v0, v2, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 312
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 313
    invoke-static {p0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v0

    .line 314
    invoke-static {p0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v1

    .line 315
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    .line 316
    new-instance p0, Lcom/google/common/math/PairedStats;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object p0
.end method


# virtual methods
.method public count()J
    .locals 2

    iget-object p0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 69
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 224
    :cond_1
    check-cast p1, Lcom/google/common/math/PairedStats;

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 225
    iget-object v2, p1, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v1, v2}, Lcom/google/common/math/Stats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    iget-object v2, p1, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 226
    invoke-virtual {v1, v2}, Lcom/google/common/math/Stats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 227
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide p0, p1, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    iget-wide v2, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public leastSquaresFit()Lcom/google/common/math/LinearTransformation;
    .locals 7

    .line 183
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

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

    iget-wide v3, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 184
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/google/common/math/LinearTransformation;->forNaN()Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 187
    invoke-virtual {v0}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 189
    invoke-virtual {v0}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 190
    invoke-virtual {v0}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lcom/google/common/math/LinearTransformation;->mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    div-double/2addr v1, v3

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 193
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LinearTransformation;->horizontal(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 196
    invoke-virtual {v0}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object p0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 197
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LinearTransformation;->vertical(D)Lcom/google/common/math/LinearTransformation;

    move-result-object p0

    return-object p0
.end method

.method public pearsonsCorrelationCoefficient()D
    .locals 9

    .line 136
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

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

    iget-wide v3, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 137
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v3

    .line 141
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v3, v7

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 142
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    cmpl-double v0, v5, v7

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 143
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    mul-double/2addr v3, v5

    .line 147
    invoke-static {v3, v4}, Lcom/google/common/math/PairedStats;->ensurePositive(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/common/math/PairedStats;->ensureInUnitRange(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public populationCovariance()D
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

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

    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 98
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public sampleCovariance()D
    .locals 6

    .line 115
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

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

    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 116
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method sumOfProductsOfDeltas()D
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    return-wide v0
.end method

.method public toByteArray()[B
    .locals 3

    const/16 v0, 0x58

    .line 291
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 292
    invoke-virtual {v1, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 293
    invoke-virtual {v1, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    iget-wide v1, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "yStats"

    const-string v2, "xStats"

    if-lez v0, :cond_0

    .line 244
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 245
    invoke-virtual {v0, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "populationCovariance"

    .line 247
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->populationCovariance()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 251
    invoke-virtual {v0, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 252
    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public xStats()Lcom/google/common/math/Stats;
    .locals 0

    iget-object p0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    return-object p0
.end method

.method public yStats()Lcom/google/common/math/Stats;
    .locals 0

    iget-object p0, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    return-object p0
.end method
