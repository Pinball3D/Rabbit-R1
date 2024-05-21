.class public final Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocityTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,618:1\n609#1:625\n616#1,2:626\n612#1,6:628\n609#1:634\n609#1:635\n604#1:636\n612#1:637\n612#1:638\n590#1:639\n590#1:640\n33#2,6:619\n*S KotlinDebug\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n*L\n390#1:625\n392#1:626,2\n394#1:628,6\n401#1:634\n403#1:635\n418#1:636\n460#1:637\n462#1:638\n570#1:639\n580#1:640\n315#1:619,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u001a(\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u00060\u0008j\u0002`\t0\u00072\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0010\u000c\u001a(\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a\u0011\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003H\u0082\u0008\u001a2\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0008H\u0000\u001a\u0012\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e\u001a\u0014\u0010\u001f\u001a\u00020\u0003*\u00020\u00082\u0006\u0010 \u001a\u00020\u0008H\u0002\u001a,\u0010!\u001a\u00020\u0003*\u000c\u0012\u0004\u0012\u00020\u00080\u0007j\u0002`\"2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001H\u0082\n\u00a2\u0006\u0002\u0010%\u001a\r\u0010&\u001a\u00020\u0003*\u00020\u0008H\u0082\u0008\u001a4\u0010\'\u001a\u00020\u001b*\u000c\u0012\u0004\u0012\u00020\u00080\u0007j\u0002`\"2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u0003H\u0082\n\u00a2\u0006\u0002\u0010)\u001a1\u0010\'\u001a\u00020\u001b*\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u00072\u0006\u0010+\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u0010.\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000*\u0018\u0008\u0002\u0010\u0006\"\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u000c\u0008\u0002\u0010/\"\u00020\u00082\u00020\u0008\u00a8\u00060"
    }
    d2 = {
        "AssumePointerMoveStoppedMilliseconds",
        "",
        "DefaultWeight",
        "",
        "HistorySize",
        "HorizonMilliseconds",
        "Matrix",
        "",
        "",
        "Landroidx/compose/ui/input/pointer/util/Vector;",
        "rows",
        "cols",
        "(II)[[F",
        "calculateImpulseVelocity",
        "dataPoints",
        "time",
        "sampleCount",
        "isDataDifferential",
        "",
        "kineticEnergyToVelocity",
        "kineticEnergy",
        "polyFitLeastSquares",
        "x",
        "y",
        "degree",
        "coefficients",
        "addPointerInputChange",
        "",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "event",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "dot",
        "a",
        "get",
        "Landroidx/compose/ui/input/pointer/util/Matrix;",
        "row",
        "col",
        "([[FII)F",
        "norm",
        "set",
        "value",
        "([[FIIF)V",
        "Landroidx/compose/ui/input/pointer/util/DataPointAtTime;",
        "index",
        "",
        "dataPoint",
        "([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V",
        "Vector",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AssumePointerMoveStoppedMilliseconds:I = 0x28

.field private static final DefaultWeight:F = 1.0f

.field private static final HistorySize:I = 0x14

.field private static final HorizonMilliseconds:I = 0x64


# direct methods
.method private static final Matrix(II)[[F
    .locals 3

    .line 609
    new-array v0, p0, [[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-array v2, p1, [F

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$calculateImpulseVelocity([F[FIZ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->calculateImpulseVelocity([F[FIZ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V

    return-void
.end method

.method public static final addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V

    .line 308
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v0

    .line 315
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v2

    .line 620
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 621
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 622
    check-cast v5, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 322
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 323
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    .line 326
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v8

    invoke-static {v8, v9, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V

    .line 327
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v8

    invoke-virtual {p0, v0, v1, v8, v9}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    add-int/lit8 v4, v4, 0x1

    move-wide v0, v6

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 334
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V

    .line 335
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    return-void
.end method

.method private static final calculateImpulseVelocity([F[FIZ)F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v1, :cond_3

    const/4 p2, 0x0

    .line 554
    aget v1, p1, p2

    aget p1, p1, v2

    cmpg-float v3, v1, p1

    if-nez v3, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_2

    .line 561
    aget p0, p0, p2

    goto :goto_0

    .line 562
    :cond_2
    aget p2, p0, p2

    aget p0, p0, v2

    sub-float p0, p2, p0

    :goto_0
    sub-float/2addr v1, p1

    div-float/2addr p0, v1

    return p0

    :cond_3
    sub-int/2addr p2, v2

    move v2, p2

    :goto_1
    if-lez v2, :cond_7

    .line 567
    aget v3, p1, v2

    add-int/lit8 v4, v2, -0x1

    aget v5, p1, v4

    cmpg-float v3, v3, v5

    if-nez v3, :cond_4

    goto :goto_3

    .line 639
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v5, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    if-eqz p3, :cond_5

    .line 572
    aget v5, p0, v4

    neg-float v5, v5

    goto :goto_2

    .line 573
    :cond_5
    aget v5, p0, v2

    aget v6, p0, v4

    sub-float/2addr v5, v6

    .line 574
    :goto_2
    aget v6, p1, v2

    aget v4, p1, v4

    sub-float/2addr v6, v4

    div-float/2addr v5, v6

    sub-float v3, v5, v3

    .line 575
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    if-ne v2, p2, :cond_6

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 640
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method private static final dot([F[F)F
    .locals 5

    .line 597
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 598
    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static final get([[FII)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    aget-object p0, p0, p1

    aget p0, p0, p2

    return p0
.end method

.method private static final kineticEnergyToVelocity(F)F
    .locals 3

    .line 590
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method private static final norm([F)F
    .locals 2

    .line 604
    invoke-static {p0, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final polyFitLeastSquares([F[FII[F)[F
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const-string/jumbo v5, "x"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "y"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "coefficients"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-lt v3, v5, :cond_11

    if-eqz v2, :cond_10

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 625
    new-array v7, v6, [[F

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_1

    new-array v10, v2, [F

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_1
    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v9, v2, :cond_3

    .line 626
    aget-object v11, v7, v8

    aput v10, v11, v9

    move v10, v5

    :goto_2
    if-ge v10, v6, :cond_2

    add-int/lit8 v11, v10, -0x1

    .line 628
    aget-object v11, v7, v11

    aget v11, v11, v9

    .line 394
    aget v12, v0, v9

    mul-float/2addr v11, v12

    .line 632
    aget-object v12, v7, v10

    aput v11, v12, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 634
    :cond_3
    new-array v0, v6, [[F

    move v5, v8

    :goto_3
    if-ge v5, v6, :cond_4

    new-array v9, v2, [F

    aput-object v9, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 635
    :cond_4
    new-array v5, v6, [[F

    move v9, v8

    :goto_4
    if-ge v9, v6, :cond_5

    new-array v11, v6, [F

    aput-object v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    move v9, v8

    :goto_5
    if-ge v9, v6, :cond_d

    .line 405
    aget-object v11, v0, v9

    .line 406
    aget-object v12, v7, v9

    move v13, v8

    :goto_6
    if-ge v13, v2, :cond_6

    .line 408
    aget v14, v12, v13

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_6
    move v12, v8

    :goto_7
    if-ge v12, v9, :cond_8

    .line 411
    aget-object v13, v0, v12

    .line 412
    invoke-static {v11, v13}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v14

    move v15, v8

    :goto_8
    if-ge v15, v2, :cond_7

    .line 414
    aget v16, v11, v15

    aget v17, v13, v15

    mul-float v17, v17, v14

    sub-float v16, v16, v17

    aput v16, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 636
    :cond_8
    invoke-static {v11, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    const v13, 0x358637bd    # 1.0E-6f

    cmpg-float v13, v12, v13

    if-ltz v13, :cond_c

    div-float v12, v10, v12

    move v13, v8

    :goto_9
    if-ge v13, v2, :cond_9

    .line 432
    aget v14, v11, v13

    mul-float/2addr v14, v12

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 434
    :cond_9
    aget-object v12, v5, v9

    move v13, v8

    :goto_a
    if-ge v13, v6, :cond_b

    if-ge v13, v9, :cond_a

    const/4 v14, 0x0

    goto :goto_b

    .line 436
    :cond_a
    aget-object v14, v7, v13

    invoke-static {v11, v14}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v14

    :goto_b
    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 424
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v2, v3

    :goto_c
    const/4 v6, -0x1

    if-ge v6, v2, :cond_f

    .line 458
    aget-object v6, v0, v2

    invoke-static {v6, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v6

    aput v6, v4, v2

    add-int/lit8 v6, v2, 0x1

    if-gt v6, v3, :cond_e

    move v7, v3

    .line 460
    :goto_d
    aget v8, v4, v2

    .line 637
    aget-object v9, v5, v2

    aget v9, v9, v7

    .line 460
    aget v10, v4, v7

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v4, v2

    if-eq v7, v6, :cond_e

    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    .line 462
    :cond_e
    aget v6, v4, v2

    .line 638
    aget-object v7, v5, v2

    aget v7, v7, v2

    div-float/2addr v6, v7

    .line 462
    aput v6, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_f
    return-object v4

    .line 375
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one point must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The degree must be at positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic polyFitLeastSquares$default([F[FII[FILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    add-int/lit8 p4, p3, 0x1

    const/4 p5, 0x0

    .line 369
    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    new-array p4, p4, [F

    .line 361
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares([F[FII[F)[F

    move-result-object p0

    return-object p0
.end method

.method private static final set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V
    .locals 1

    .line 279
    aget-object v0, p0, p1

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-direct {v0, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;-><init>(JF)V

    aput-object v0, p0, p1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->setTime(J)V

    .line 284
    invoke-virtual {v0, p4}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->setDataPoint(F)V

    :goto_0
    return-void
.end method

.method private static final set([[FIIF)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    aget-object p0, p0, p1

    aput p3, p0, p2

    return-void
.end method
