.class public final Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;
.super Ljava/lang/Object;
.source "ColorSpace.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a8\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0000\u001a\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0010H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0000\u001a\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0000\u001a\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0000\u001a\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0000\u001a\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0000\u001a(\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0000\u001a(\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0000\u001a(\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0000\u001a8\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001aH\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a8\u0010#\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001aH\u0010#\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u001e\u0010$\u001a\u00020%*\u00020%2\u0006\u0010&\u001a\u00020\u00112\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0007\u001a+\u0010)\u001a\u00020**\u00020%2\u0008\u0008\u0002\u0010+\u001a\u00020%2\u0008\u0008\u0002\u0010,\u001a\u00020-\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00060"
    }
    d2 = {
        "absRcpResponse",
        "",
        "x",
        "a",
        "b",
        "c",
        "d",
        "g",
        "absResponse",
        "chromaticAdaptation",
        "",
        "matrix",
        "srcWhitePoint",
        "dstWhitePoint",
        "compare",
        "",
        "Landroidx/compose/ui/graphics/colorspace/TransferParameters;",
        "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
        "inverse3x3",
        "m",
        "mul3x3",
        "lhs",
        "rhs",
        "mul3x3Diag",
        "mul3x3Float3",
        "mul3x3Float3_0",
        "",
        "r0",
        "r1",
        "r2",
        "mul3x3Float3_1",
        "mul3x3Float3_2",
        "rcpResponse",
        "e",
        "f",
        "response",
        "adapt",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "whitePoint",
        "adaptation",
        "Landroidx/compose/ui/graphics/colorspace/Adaptation;",
        "connect",
        "Landroidx/compose/ui/graphics/colorspace/Connector;",
        "destination",
        "intent",
        "Landroidx/compose/ui/graphics/colorspace/RenderIntent;",
        "connect-YBCOT_4",
        "(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)Landroidx/compose/ui/graphics/colorspace/Connector;",
        "ui-graphics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final absRcpResponse(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    .line 558
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->rcpResponse(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final absResponse(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    .line 565
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->response(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final adapt(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "whitePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;ILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static final adapt(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "whitePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 487
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 491
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object p0

    .line 494
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    move-result-object p2

    .line 495
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v1

    .line 493
    invoke-static {p2, v1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    move-result-object p0

    .line 500
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    move-result-object p2

    .line 498
    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object p0

    .line 503
    new-instance p2, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-direct {p2, v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)V

    check-cast p2, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object p2

    :cond_1
    return-object p0
.end method

.method public static synthetic adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;ILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 483
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    move-result-object p2

    .line 481
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->adapt(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static final chromaticAdaptation([F[F[F)[F
    .locals 4

    const-string v0, "matrix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "srcWhitePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstWhitePoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object p1

    .line 791
    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 794
    aget v2, p2, v1

    aget v3, p1, v1

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p2, v1

    aget v3, p1, v1

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    aget p2, p2, v1

    aget p1, p1, v1

    div-float/2addr p2, p1

    aput p2, v0, v1

    .line 795
    invoke-static {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object p1

    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Diag([F[F)[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static final compare(Landroidx/compose/ui/graphics/colorspace/TransferParameters;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Z
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 579
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 584
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getY()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final compare([F[F)Z
    .locals 6

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 610
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 612
    aget v4, p0, v3

    aget v5, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_1

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static final connect-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 6

    const-string v0, "$this$connect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 436
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 437
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->getSrgbIdentity$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0

    .line 439
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    if-ne p1, v0, :cond_2

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->getSrgbToOklabPerceptual$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0

    .line 442
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 443
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 444
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->getOklabToSrgbPerceptual$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p0, p1, :cond_3

    .line 449
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->identity$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0

    .line 452
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v2

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;

    .line 454
    check-cast p0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 455
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 453
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    goto :goto_0

    .line 459
    :cond_4
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic connect-YBCOT_4$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;IILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 432
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 433
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result p2

    .line 431
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->connect-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object p0

    return-object p0
.end method

.method public static final inverse3x3([F)[F
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "m"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 624
    aget v2, v0, v1

    const/4 v3, 0x3

    .line 625
    aget v4, v0, v3

    const/4 v5, 0x6

    .line 626
    aget v6, v0, v5

    const/4 v7, 0x1

    .line 627
    aget v8, v0, v7

    const/4 v9, 0x4

    .line 628
    aget v10, v0, v9

    const/4 v11, 0x7

    .line 629
    aget v12, v0, v11

    const/4 v13, 0x2

    .line 630
    aget v14, v0, v13

    const/4 v15, 0x5

    .line 631
    aget v16, v0, v15

    const/16 v17, 0x8

    .line 632
    aget v18, v0, v17

    mul-float v19, v10, v18

    mul-float v20, v12, v16

    sub-float v19, v19, v20

    mul-float v20, v12, v14

    mul-float v21, v8, v18

    sub-float v20, v20, v21

    mul-float v21, v8, v16

    mul-float v22, v10, v14

    sub-float v21, v21, v22

    mul-float v22, v2, v19

    mul-float v23, v4, v20

    add-float v22, v22, v23

    mul-float v23, v6, v21

    add-float v22, v22, v23

    .line 640
    array-length v0, v0

    new-array v0, v0, [F

    div-float v19, v19, v22

    .line 641
    aput v19, v0, v1

    div-float v20, v20, v22

    .line 642
    aput v20, v0, v7

    div-float v21, v21, v22

    .line 643
    aput v21, v0, v13

    mul-float v1, v6, v16

    mul-float v7, v4, v18

    sub-float/2addr v1, v7

    div-float v1, v1, v22

    .line 644
    aput v1, v0, v3

    mul-float v18, v18, v2

    mul-float v1, v6, v14

    sub-float v18, v18, v1

    div-float v18, v18, v22

    .line 645
    aput v18, v0, v9

    mul-float/2addr v14, v4

    mul-float v16, v16, v2

    sub-float v14, v14, v16

    div-float v14, v14, v22

    .line 646
    aput v14, v0, v15

    mul-float v1, v4, v12

    mul-float v3, v6, v10

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    .line 647
    aput v1, v0, v5

    mul-float/2addr v6, v8

    mul-float/2addr v12, v2

    sub-float/2addr v6, v12

    div-float v6, v6, v22

    .line 648
    aput v6, v0, v11

    mul-float/2addr v2, v10

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    div-float v2, v2, v22

    .line 649
    aput v2, v0, v17

    return-object v0
.end method

.method public static final mul3x3([F[F)[F
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "lhs"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rhs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x9

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 664
    aget v4, v0, v3

    aget v5, v1, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v1, v7

    mul-float v9, v6, v8

    add-float/2addr v4, v9

    const/4 v9, 0x6

    aget v10, v0, v9

    const/4 v11, 0x2

    aget v12, v1, v11

    mul-float v13, v10, v12

    add-float/2addr v4, v13

    aput v4, v2, v3

    .line 665
    aget v4, v0, v7

    aget v13, v1, v3

    mul-float/2addr v4, v13

    const/4 v14, 0x4

    aget v15, v0, v14

    mul-float/2addr v8, v15

    add-float/2addr v4, v8

    const/4 v8, 0x7

    aget v16, v0, v8

    mul-float v17, v16, v12

    add-float v4, v4, v17

    aput v4, v2, v7

    .line 666
    aget v4, v0, v11

    mul-float/2addr v4, v13

    const/4 v13, 0x5

    aget v17, v0, v13

    aget v18, v1, v7

    mul-float v18, v18, v17

    add-float v4, v4, v18

    const/16 v18, 0x8

    aget v19, v0, v18

    mul-float v12, v12, v19

    add-float/2addr v4, v12

    aput v4, v2, v11

    .line 667
    aget v3, v0, v3

    aget v4, v1, v5

    mul-float/2addr v4, v3

    aget v12, v1, v14

    mul-float/2addr v6, v12

    add-float/2addr v4, v6

    aget v6, v1, v13

    mul-float v20, v10, v6

    add-float v4, v4, v20

    aput v4, v2, v5

    .line 668
    aget v4, v0, v7

    aget v7, v1, v5

    mul-float v20, v4, v7

    mul-float/2addr v15, v12

    add-float v20, v20, v15

    mul-float v12, v16, v6

    add-float v20, v20, v12

    aput v20, v2, v14

    .line 669
    aget v11, v0, v11

    mul-float/2addr v7, v11

    aget v12, v1, v14

    mul-float v17, v17, v12

    add-float v7, v7, v17

    mul-float v6, v6, v19

    add-float/2addr v7, v6

    aput v7, v2, v13

    .line 670
    aget v6, v1, v9

    mul-float/2addr v3, v6

    aget v5, v0, v5

    aget v6, v1, v8

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    aget v5, v1, v18

    mul-float/2addr v10, v5

    add-float/2addr v3, v10

    aput v3, v2, v9

    .line 671
    aget v3, v1, v9

    mul-float/2addr v4, v3

    aget v7, v0, v14

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    mul-float v16, v16, v5

    add-float v4, v4, v16

    aput v4, v2, v8

    mul-float/2addr v11, v3

    .line 672
    aget v0, v0, v13

    aget v1, v1, v8

    mul-float/2addr v0, v1

    add-float/2addr v11, v0

    mul-float v19, v19, v5

    add-float v11, v11, v19

    aput v11, v2, v18

    return-object v2
.end method

.method public static final mul3x3Diag([F[F)[F
    .locals 6

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 765
    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    aget v5, p1, v3

    mul-float/2addr v4, v5

    aput v4, v0, v3

    .line 766
    aget v1, p0, v1

    const/4 v4, 0x3

    aget v5, p1, v4

    mul-float/2addr v5, v1

    aput v5, v0, v4

    aget v2, p0, v2

    const/4 v4, 0x4

    aget v5, p1, v4

    mul-float/2addr v5, v2

    aput v5, v0, v4

    aget p0, p0, v3

    const/4 v3, 0x5

    aget v4, p1, v3

    mul-float/2addr v4, p0

    aput v4, v0, v3

    const/4 v3, 0x6

    .line 767
    aget v4, p1, v3

    mul-float/2addr v1, v4

    aput v1, v0, v3

    const/4 v1, 0x7

    aget v3, p1, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    aget p1, p1, v1

    mul-float/2addr p0, p1

    aput p0, v0, v1

    return-object v0
.end method

.method public static final mul3x3Float3([F[F)[F
    .locals 8

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 688
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 689
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 690
    aget v5, p1, v4

    .line 691
    aget v6, p0, v0

    mul-float/2addr v6, v1

    const/4 v7, 0x3

    aget v7, p0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    aput v6, p1, v0

    .line 692
    aget v0, p0, v2

    mul-float/2addr v0, v1

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    aput v0, p1, v2

    .line 693
    aget v0, p0, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p0, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget p0, p0, v1

    mul-float/2addr p0, v5

    add-float/2addr v0, p0

    aput v0, p1, v4

    return-object p1
.end method

.method public static final mul3x3Float3_0([FFFF)F
    .locals 1

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 712
    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x3

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/4 p1, 0x6

    aget p0, p0, p1

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    return v0
.end method

.method public static final mul3x3Float3_1([FFFF)F
    .locals 1

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 730
    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x4

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/4 p1, 0x7

    aget p0, p0, p1

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    return v0
.end method

.method public static final mul3x3Float3_2([FFFF)F
    .locals 1

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 748
    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 p1, 0x5

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    const/16 p1, 0x8

    aget p0, p0, p1

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    return v0
.end method

.method public static final rcpResponse(DDDDDD)D
    .locals 0

    mul-double/2addr p8, p6

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    div-double/2addr p6, p10

    .line 511
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p0, p4

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    div-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method public static final rcpResponse(DDDDDDDD)D
    .locals 0

    mul-double/2addr p8, p6

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    sub-double/2addr p0, p10

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    div-double/2addr p6, p14

    .line 531
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p0, p4

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    sub-double/2addr p0, p12

    div-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method public static final response(DDDDDD)D
    .locals 0

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    mul-double/2addr p2, p0

    add-double/2addr p2, p4

    .line 517
    invoke-static {p2, p3, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    mul-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method public static final response(DDDDDDDD)D
    .locals 0

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    mul-double/2addr p2, p0

    add-double/2addr p2, p4

    .line 545
    invoke-static {p2, p3, p14, p15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, p10

    goto :goto_0

    :cond_0
    mul-double/2addr p6, p0

    add-double p0, p6, p12

    :goto_0
    return-wide p0
.end method
