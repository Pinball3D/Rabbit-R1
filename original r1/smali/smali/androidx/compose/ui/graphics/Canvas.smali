.class public interface abstract Landroidx/compose/ui/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Canvas$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008f\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ?\u0010\n\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u0003H&J0\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016JH\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H&J0\u0010#\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J-\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010+J-\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020(2\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u00101JM\u00102\u001a\u00020\u00032\u0006\u0010-\u001a\u00020.2\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u0002042\u0008\u0008\u0002\u00108\u001a\u0002062\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00089\u0010:J-\u0010;\u001a\u00020\u00032\u0006\u0010<\u001a\u00020(2\u0006\u0010=\u001a\u00020(2\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008>\u0010?J\u0018\u0010@\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H\u0016J0\u0010@\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"H&J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"H&J3\u0010B\u001a\u00020\u00032\u0006\u0010C\u001a\u00020D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020(0F2\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008G\u0010HJ-\u0010I\u001a\u00020\u00032\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020J2\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008K\u0010LJ\u0018\u0010M\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H\u0016J0\u0010M\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"H&J@\u0010N\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010O\u001a\u00020\u00102\u0006\u0010P\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"H&J-\u0010Q\u001a\u00020\u00032\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010!\u001a\u00020\"H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008V\u0010WJ\u0008\u0010X\u001a\u00020\u0003H&J\u0008\u0010Y\u001a\u00020\u0003H&J\u0010\u0010Z\u001a\u00020\u00032\u0006\u0010[\u001a\u00020\u0010H&J\u0008\u0010\\\u001a\u00020\u0003H&J\u0018\u0010]\u001a\u00020\u00032\u0006\u0010^\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H&J\u001a\u0010_\u001a\u00020\u00032\u0006\u0010`\u001a\u00020\u00102\u0008\u0008\u0002\u0010a\u001a\u00020\u0010H&J\u0018\u0010b\u001a\u00020\u00032\u0006\u0010`\u001a\u00020\u00102\u0006\u0010a\u001a\u00020\u0010H&J\u0018\u0010c\u001a\u00020\u00032\u0006\u0010d\u001a\u00020\u00102\u0006\u0010e\u001a\u00020\u0010H\u0016J\u0018\u0010f\u001a\u00020\u00032\u0006\u0010g\u001a\u00020\u00102\u0006\u0010h\u001a\u00020\u0010H&\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006i\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Canvas;",
        "",
        "clipPath",
        "",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "clipOp",
        "Landroidx/compose/ui/graphics/ClipOp;",
        "clipPath-mtrdD-E",
        "(Landroidx/compose/ui/graphics/Path;I)V",
        "clipRect",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "clipRect-mtrdD-E",
        "(Landroidx/compose/ui/geometry/Rect;I)V",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "clipRect-N_I0leg",
        "(FFFFI)V",
        "concat",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "concat-58bKbWc",
        "([F)V",
        "disableZ",
        "drawArc",
        "startAngle",
        "sweepAngle",
        "useCenter",
        "",
        "paint",
        "Landroidx/compose/ui/graphics/Paint;",
        "drawArcRad",
        "startAngleRad",
        "sweepAngleRad",
        "drawCircle",
        "center",
        "Landroidx/compose/ui/geometry/Offset;",
        "radius",
        "drawCircle-9KIMszo",
        "(JFLandroidx/compose/ui/graphics/Paint;)V",
        "drawImage",
        "image",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "topLeftOffset",
        "drawImage-d-4ec7I",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V",
        "drawImageRect",
        "srcOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "srcSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "dstOffset",
        "dstSize",
        "drawImageRect-HPBpro0",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V",
        "drawLine",
        "p1",
        "p2",
        "drawLine-Wko1d7g",
        "(JJLandroidx/compose/ui/graphics/Paint;)V",
        "drawOval",
        "drawPath",
        "drawPoints",
        "pointMode",
        "Landroidx/compose/ui/graphics/PointMode;",
        "points",
        "",
        "drawPoints-O7TthRY",
        "(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V",
        "drawRawPoints",
        "",
        "drawRawPoints-O7TthRY",
        "(I[FLandroidx/compose/ui/graphics/Paint;)V",
        "drawRect",
        "drawRoundRect",
        "radiusX",
        "radiusY",
        "drawVertices",
        "vertices",
        "Landroidx/compose/ui/graphics/Vertices;",
        "blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "drawVertices-TPEHhCM",
        "(Landroidx/compose/ui/graphics/Vertices;ILandroidx/compose/ui/graphics/Paint;)V",
        "enableZ",
        "restore",
        "rotate",
        "degrees",
        "save",
        "saveLayer",
        "bounds",
        "scale",
        "sx",
        "sy",
        "skew",
        "skewRad",
        "sxRad",
        "syRad",
        "translate",
        "dx",
        "dy",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$clipRect-mtrdD-E$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;I)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E(Landroidx/compose/ui/geometry/Rect;I)V

    return-void
.end method

.method public static synthetic access$drawArc$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 0

    .line 171
    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->drawArc(Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static synthetic access$drawArcRad$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 0

    .line 171
    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->drawArcRad(Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static synthetic access$drawOval$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->drawOval(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static synthetic access$drawRect$jd(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->drawRect(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public static synthetic access$skewRad$jd(Landroidx/compose/ui/graphics/Canvas;FF)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->skewRad(FF)V

    return-void
.end method

.method public static synthetic clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 345
    sget-object p2, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    move-result p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 338
    sget-object p5, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {p5}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    move-result p5

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 333
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipRect-N_I0leg"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 317
    sget-object p2, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    move-result p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E(Landroidx/compose/ui/geometry/Rect;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic drawImageRect-HPBpro0$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;ILjava/lang/Object;)V
    .locals 13

    if-nez p12, :cond_4

    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_0

    .line 549
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, p2

    :goto_0
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1

    .line 550
    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_2

    .line 551
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_3

    move-wide v10, v6

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p8

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v12, p10

    .line 547
    invoke-interface/range {v2 .. v12}, Landroidx/compose/ui/graphics/Canvas;->drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: drawImageRect-HPBpro0"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic scale$default(Landroidx/compose/ui/graphics/Canvas;FFILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move p2, p1

    .line 276
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->scale(FF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scale"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V
.end method

.method public abstract clipRect-N_I0leg(FFFFI)V
.end method

.method public clipRect-mtrdD-E(Landroidx/compose/ui/geometry/Rect;I)V
    .locals 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    return-void
.end method

.method public abstract concat-58bKbWc([F)V
.end method

.method public abstract disableZ()V
.end method

.method public abstract drawArc(FFFFFFZLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public drawArc(Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    .line 453
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    .line 454
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    .line 455
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    move-object v1, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    .line 451
    invoke-interface/range {v1 .. v9}, Landroidx/compose/ui/graphics/Canvas;->drawArc(FFFFFFZLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public drawArcRad(Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-static {p2}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result v3

    invoke-static {p3}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawArc(Landroidx/compose/ui/geometry/Rect;FFZLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public abstract drawCircle-9KIMszo(JFLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawImage-d-4ec7I(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawOval(FFFFLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public drawOval(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    .line 406
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    .line 407
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    .line 408
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    move-object v1, p0

    move-object v6, p2

    .line 404
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawOval(FFFFLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public abstract drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawPoints-O7TthRY(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/ui/graphics/Paint;",
            ")V"
        }
    .end annotation
.end method

.method public abstract drawRawPoints-O7TthRY(I[FLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawRect(FFFFLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public drawRect(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    .line 361
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    .line 362
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    .line 363
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    move-object v1, p0

    move-object v6, p2

    .line 359
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public abstract drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract drawVertices-TPEHhCM(Landroidx/compose/ui/graphics/Vertices;ILandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract enableZ()V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(F)V
.end method

.method public abstract save()V
.end method

.method public abstract saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract scale(FF)V
.end method

.method public abstract skew(FF)V
.end method

.method public skewRad(FF)V
    .locals 0

    .line 300
    invoke-static {p1}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result p1

    invoke-static {p2}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->skew(FF)V

    return-void
.end method

.method public abstract translate(FF)V
.end method
