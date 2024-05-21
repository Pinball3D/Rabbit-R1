.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;,
        Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001 B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0006\u0010\u001e\u001a\u00020\u0019J\u0006\u0010\u001f\u001a\u00020\u0015R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;",
        "",
        "isDataDifferential",
        "",
        "(Z)V",
        "strategy",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;",
        "(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V",
        "index",
        "",
        "()Z",
        "minSampleSize",
        "reusableDataPointsArray",
        "",
        "reusableTimeArray",
        "reusableVelocityCoefficients",
        "samples",
        "",
        "Landroidx/compose/ui/input/pointer/util/DataPointAtTime;",
        "[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;",
        "addDataPoint",
        "",
        "timeMillis",
        "",
        "dataPoint",
        "",
        "calculateLeastSquaresVelocity",
        "dataPoints",
        "time",
        "sampleCount",
        "calculateVelocity",
        "resetTracking",
        "Strategy",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private index:I

.field private final isDataDifferential:Z

.field private final minSampleSize:I

.field private final reusableDataPointsArray:[F

.field private final reusableTimeArray:[F

.field private final reusableVelocityCoefficients:[F

.field private final samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

.field private final strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 129
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Impulse:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V
    .locals 2

    const-string/jumbo v0, "strategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    if-eqz p1, :cond_1

    .line 105
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lsq2 not (yet) supported for differential axes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, p2, :cond_3

    if-ne p1, v1, :cond_2

    move v1, v0

    goto :goto_1

    .line 133
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    iput v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->minSampleSize:I

    const/16 p1, 0x14

    new-array p2, p1, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    new-array p2, p1, [F

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableDataPointsArray:[F

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableTimeArray:[F

    new-array p1, v0, [F

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableVelocityCoefficients:[F

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 101
    sget-object p2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 94
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    return-void
.end method

.method private final calculateLeastSquaresVelocity([F[FI)F
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableVelocityCoefficients:[F

    const/4 v0, 0x2

    .line 259
    invoke-static {p2, p1, p3, v0, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares([F[FII[F)[F

    move-result-object p0

    const/4 p1, 0x1

    .line 265
    aget p0, p0, p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final addDataPoint(JF)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 178
    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 179
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->access$set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V

    return-void
.end method

.method public final calculateVelocity()F
    .locals 14

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableDataPointsArray:[F

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableTimeArray:[F

    iget v2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 196
    aget-object v3, v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    move-object v6, v3

    :goto_0
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 203
    aget-object v7, v7, v2

    const/4 v8, 0x1

    if-nez v7, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v9

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-float v9, v9

    .line 207
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v10

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    long-to-float v6, v10

    const/high16 v10, 0x42c80000    # 100.0f

    cmpl-float v10, v9, v10

    if-gtz v10, :cond_5

    const/high16 v10, 0x42200000    # 40.0f

    cmpl-float v6, v6, v10

    if-lez v6, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getDataPoint()F

    move-result v6

    aput v6, v0, v5

    neg-float v6, v9

    .line 214
    aput v6, v1, v5

    const/16 v6, 0x14

    if-nez v2, :cond_3

    move v2, v6

    :cond_3
    sub-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v7

    goto :goto_0

    :cond_5
    :goto_1
    iget v2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->minSampleSize:I

    if-lt v5, v2, :cond_8

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 222
    sget-object v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v8, :cond_7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 227
    invoke-direct {p0, v0, v1, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateLeastSquaresVelocity([F[FI)F

    move-result p0

    goto :goto_2

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    .line 224
    invoke-static {v0, v1, v5, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->access$calculateImpulseVelocity([F[FIZ)F

    move-result p0

    :goto_2
    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0

    :cond_8
    return v4
.end method

.method public final isDataDifferential()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    return p0
.end method

.method public final resetTracking()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 241
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    return-void
.end method
