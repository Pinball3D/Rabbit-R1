.class public final Landroidx/compose/ui/graphics/vector/PathParserKt;
.super Ljava/lang/Object;
.source "PathParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParserKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,553:1\n552#1:560\n33#2,6:554\n*S KotlinDebug\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParserKt\n*L\n405#1:560\n174#1:554,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aX\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002\u001aX\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u001a\u001a\u0010\u001a\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0007\u001a\r\u0010\u001e\u001a\u00020\t*\u00020\tH\u0082\u0008\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u001f"
    }
    d2 = {
        "EmptyArray",
        "",
        "getEmptyArray",
        "()[F",
        "arcToBezier",
        "",
        "p",
        "Landroidx/compose/ui/graphics/Path;",
        "cx",
        "",
        "cy",
        "a",
        "b",
        "e1x",
        "e1y",
        "theta",
        "start",
        "sweep",
        "drawArc",
        "x0",
        "y0",
        "x1",
        "y1",
        "isMoreThanHalf",
        "",
        "isPositiveArc",
        "toPath",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "target",
        "toRadians",
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


# static fields
.field private static final EmptyArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/ui/graphics/vector/PathParserKt;->EmptyArray:[F

    return-void
.end method

.method private static final arcToBezier(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V
    .locals 48

    move-wide/from16 v0, p5

    const/4 v2, 0x4

    int-to-double v2, v2

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 505
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 508
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 509
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 510
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 511
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double/2addr v13, v7

    mul-double/2addr v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 p7, p9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v17

    move/from16 v11, v23

    move-wide/from16 v17, p11

    move-wide/from16 v23, p15

    :goto_0
    if-ge v11, v4, :cond_0

    add-double v29, v23, v9

    .line 518
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    .line 519
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    mul-double v35, v0, v5

    mul-double v35, v35, v33

    add-double v35, p1, v35

    mul-double v37, v19, v31

    move v12, v4

    move-wide/from16 v39, v5

    sub-double v4, v35, v37

    mul-double v35, v0, v7

    mul-double v35, v35, v33

    add-double v35, p3, v35

    mul-double v37, v21, v31

    add-double v0, v35, v37

    mul-double v35, v15, v31

    mul-double v37, v19, v33

    sub-double v35, v35, v37

    mul-double v31, v31, v13

    mul-double v33, v33, v21

    add-double v31, v31, v33

    sub-double v23, v29, v23

    const/4 v6, 0x2

    move-wide/from16 p13, v7

    int-to-double v6, v6

    div-double v6, v23, v6

    .line 524
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 525
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    mul-double v33, v33, v6

    mul-double v33, v33, v6

    add-double v33, v2, v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x1

    move-wide/from16 v33, v2

    int-to-double v2, v8

    sub-double/2addr v6, v2

    mul-double v23, v23, v6

    const/4 v2, 0x3

    int-to-double v2, v2

    div-double v23, v23, v2

    mul-double v27, v27, v23

    move-wide/from16 v2, p7

    add-double v2, v2, v27

    mul-double v25, v25, v23

    add-double v6, v17, v25

    mul-double v17, v23, v35

    move-wide/from16 p7, v9

    sub-double v8, v4, v17

    mul-double v23, v23, v31

    move/from16 p9, v12

    move-wide/from16 v17, v13

    sub-double v12, v0, v23

    double-to-float v2, v2

    double-to-float v3, v6

    double-to-float v6, v8

    double-to-float v7, v12

    double-to-float v8, v4

    double-to-float v9, v0

    move-object/from16 v41, p0

    move/from16 v42, v2

    move/from16 v43, v3

    move/from16 v44, v6

    move/from16 v45, v7

    move/from16 v46, v8

    move/from16 v47, v9

    .line 535
    invoke-interface/range {v41 .. v47}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, p7

    move-wide/from16 v7, p13

    move-wide/from16 p7, v4

    move-wide/from16 v13, v17

    move-wide/from16 v23, v29

    move-wide/from16 v25, v31

    move-wide/from16 v2, v33

    move-wide/from16 v27, v35

    move-wide/from16 v5, v39

    move/from16 v4, p9

    move-wide/from16 v17, v0

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static final drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 32

    move-wide/from16 v13, p1

    move-wide/from16 v5, p5

    move/from16 v15, p16

    const/16 v0, 0xb4

    int-to-double v0, v0

    div-double v0, p13, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v0, v2

    .line 407
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 408
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v0, v13, v3

    mul-double v9, p3, v7

    add-double/2addr v0, v9

    div-double v0, v0, p9

    neg-double v9, v13

    mul-double/2addr v9, v7

    mul-double v11, p3, v3

    add-double/2addr v9, v11

    div-double v9, v9, p11

    mul-double v11, v5, v3

    mul-double v18, p7, v7

    add-double v11, v11, v18

    div-double v11, v11, p9

    neg-double v13, v5

    mul-double/2addr v13, v7

    mul-double v18, p7, v3

    add-double v13, v13, v18

    div-double v13, v13, p11

    sub-double v18, v0, v11

    sub-double v20, v9, v13

    add-double v22, v0, v11

    const/4 v2, 0x2

    int-to-double v5, v2

    div-double v22, v22, v5

    add-double v24, v9, v13

    div-double v24, v24, v5

    mul-double v5, v18, v18

    mul-double v26, v20, v20

    add-double v5, v5, v26

    const-wide/16 v26, 0x0

    cmpg-double v2, v5, v26

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v28, v28, v5

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    sub-double v28, v28, v30

    cmpg-double v2, v28, v26

    if-gez v2, :cond_1

    .line 428
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    mul-double v9, p9, v0

    mul-double v11, p11, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    .line 429
    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    return-void

    .line 435
    :cond_1
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v18, v18, v5

    mul-double v5, v5, v20

    move/from16 v2, p15

    move/from16 v15, p16

    if-ne v2, v15, :cond_2

    sub-double v22, v22, v5

    add-double v24, v24, v18

    goto :goto_0

    :cond_2
    add-double v22, v22, v5

    sub-double v24, v24, v18

    :goto_0
    sub-double v9, v9, v24

    sub-double v0, v0, v22

    .line 448
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    sub-double v13, v13, v24

    sub-double v11, v11, v22

    .line 450
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v18

    cmpl-double v2, v0, v26

    if-ltz v2, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eq v15, v5, :cond_5

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double/2addr v0, v5

    goto :goto_2

    :cond_4
    add-double/2addr v0, v5

    :cond_5
    :goto_2
    move-wide/from16 v20, v0

    mul-double v22, v22, p9

    mul-double v24, v24, p11

    mul-double v0, v22, v3

    mul-double v5, v24, v7

    sub-double v1, v0, v5

    mul-double v22, v22, v7

    mul-double v24, v24, v3

    add-double v3, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    .line 467
    invoke-static/range {v0 .. v18}, Landroidx/compose/ui/graphics/vector/PathParserKt;->arcToBezier(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static final getEmptyArray()[F
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/vector/PathParserKt;->EmptyArray:[F

    return-object v0
.end method

.method public static final toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;",
            "Landroidx/compose/ui/graphics/Path;",
            ")",
            "Landroidx/compose/ui/graphics/Path;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->getFillType-Rg-k1Os()I

    move-result v1

    .line 161
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 162
    invoke-interface {v14, v1}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 173
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 555
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v12, 0x0

    move v13, v2

    move v2, v12

    move v3, v2

    move v8, v3

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v13, v15, :cond_18

    .line 556
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 557
    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 176
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    if-eqz v4, :cond_1

    .line 181
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 182
    invoke-interface {v14, v10, v11}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    move-object/from16 v19, v7

    move v2, v10

    move v8, v2

    move v3, v11

    move v9, v3

    :goto_2
    move/from16 v23, v12

    move/from16 v22, v13

    move v0, v15

    goto/16 :goto_b

    .line 185
    :cond_1
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v4, :cond_2

    .line 186
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDx()F

    move-result v4

    add-float/2addr v8, v4

    .line 187
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDy()F

    move-result v4

    add-float/2addr v9, v4

    .line 188
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDx()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDy()F

    move-result v1

    invoke-interface {v14, v4, v1}, Landroidx/compose/ui/graphics/Path;->relativeMoveTo(FF)V

    move-object/from16 v19, v7

    move v10, v8

    move v11, v9

    goto :goto_2

    .line 193
    :cond_2
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v4, :cond_3

    .line 194
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    move-result v4

    .line 195
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    move-result v5

    .line 196
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    move-result v1

    invoke-interface {v14, v6, v1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    move v8, v4

    move v10, v8

    move v9, v5

    move v11, v9

    :goto_3
    move-object/from16 v19, v7

    goto :goto_2

    .line 201
    :cond_3
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    if-eqz v4, :cond_4

    .line 202
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    move-result v5

    invoke-interface {v14, v4, v5}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 203
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    move-result v4

    add-float/2addr v8, v4

    .line 204
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    move-result v1

    :goto_4
    add-float/2addr v9, v1

    goto :goto_3

    .line 207
    :cond_4
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    if-eqz v4, :cond_5

    .line 208
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    move-result v5

    invoke-interface {v14, v4, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 209
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    move-result v4

    .line 210
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    move-result v1

    move v9, v1

    move v8, v4

    goto :goto_3

    .line 213
    :cond_5
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    if-eqz v4, :cond_6

    .line 214
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    move-result v4

    invoke-interface {v14, v4, v12}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 215
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    move-result v1

    add-float/2addr v8, v1

    goto :goto_3

    .line 218
    :cond_6
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    if-eqz v4, :cond_7

    .line 219
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    move-result v4

    invoke-interface {v14, v4, v9}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 220
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    move-result v1

    move v8, v1

    goto :goto_3

    .line 223
    :cond_7
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    if-eqz v4, :cond_8

    .line 224
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    move-result v4

    invoke-interface {v14, v12, v4}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 225
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    move-result v1

    goto :goto_4

    .line 228
    :cond_8
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    if-eqz v4, :cond_9

    .line 229
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    move-result v4

    invoke-interface {v14, v8, v4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 230
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    move-result v1

    move v9, v1

    goto/16 :goto_3

    .line 233
    :cond_9
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    if-eqz v4, :cond_a

    .line 235
    move-object/from16 v16, v7

    check-cast v16, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx1()F

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy1()F

    move-result v3

    .line 236
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    move-result v5

    .line 237
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    move-result v17

    move-object/from16 v1, p1

    move-object v0, v7

    move/from16 v7, v17

    .line 234
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    .line 239
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    move-result v1

    add-float/2addr v1, v8

    .line 240
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    move-result v2

    add-float/2addr v2, v9

    .line 241
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    move-result v3

    add-float/2addr v8, v3

    .line 242
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    move-result v3

    :goto_5
    add-float/2addr v9, v3

    move-object/from16 v19, v0

    move v3, v2

    move/from16 v23, v12

    move/from16 v22, v13

    move v0, v15

    :goto_6
    move v2, v1

    goto/16 :goto_b

    :cond_a
    move-object v0, v7

    .line 245
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    if-eqz v4, :cond_b

    .line 247
    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX1()F

    move-result v2

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY1()F

    move-result v3

    .line 248
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    move-result v5

    .line 249
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    move-result v7

    move-object/from16 v1, p1

    .line 246
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 251
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    move-result v1

    .line 252
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    move-result v2

    .line 253
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    move-result v3

    .line 254
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    move-result v4

    :goto_7
    move-object/from16 v19, v0

    move v8, v3

    move v9, v4

    move/from16 v23, v12

    move/from16 v22, v13

    move v0, v15

    move v3, v2

    goto :goto_6

    .line 257
    :cond_b
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    if-eqz v4, :cond_d

    .line 258
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    move-result v1

    if-eqz v1, :cond_c

    sub-float v1, v8, v2

    sub-float v2, v9, v3

    move v3, v2

    move v2, v1

    goto :goto_8

    :cond_c
    move v2, v12

    move v3, v2

    .line 267
    :goto_8
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    move-result v5

    .line 268
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    move-result v7

    move-object/from16 v1, p1

    .line 265
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    .line 270
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    move-result v1

    add-float/2addr v1, v8

    .line 271
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    move-result v2

    add-float/2addr v2, v9

    .line 272
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    move-result v3

    add-float/2addr v8, v3

    .line 273
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    move-result v3

    goto/16 :goto_5

    .line 276
    :cond_d
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    const/4 v5, 0x2

    if-eqz v4, :cond_f

    .line 277
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    move-result v1

    if-eqz v1, :cond_e

    int-to-float v1, v5

    mul-float/2addr v8, v1

    sub-float/2addr v8, v2

    mul-float/2addr v1, v9

    sub-float/2addr v1, v3

    move v3, v1

    move v2, v8

    goto :goto_9

    :cond_e
    move v2, v8

    move v3, v9

    .line 286
    :goto_9
    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    move-result v5

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    move-result v7

    move-object/from16 v1, p1

    .line 284
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 288
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    move-result v1

    .line 289
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    move-result v2

    .line 290
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    move-result v3

    .line 291
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    move-result v4

    goto/16 :goto_7

    .line 294
    :cond_f
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    if-eqz v4, :cond_10

    .line 295
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx1()F

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy1()F

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx2()F

    move-result v3

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy2()F

    move-result v4

    invoke-interface {v14, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Path;->relativeQuadraticBezierTo(FFFF)V

    .line 296
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx1()F

    move-result v1

    add-float/2addr v1, v8

    .line 297
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy1()F

    move-result v2

    add-float/2addr v2, v9

    .line 298
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx2()F

    move-result v3

    add-float/2addr v8, v3

    .line 299
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy2()F

    move-result v3

    goto/16 :goto_5

    .line 302
    :cond_10
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    if-eqz v4, :cond_11

    .line 303
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX1()F

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY1()F

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX2()F

    move-result v3

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY2()F

    move-result v4

    invoke-interface {v14, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Path;->quadraticBezierTo(FFFF)V

    .line 304
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX1()F

    move-result v1

    .line 305
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY1()F

    move-result v2

    .line 306
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX2()F

    move-result v3

    .line 307
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY2()F

    move-result v4

    goto/16 :goto_7

    .line 310
    :cond_11
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    if-eqz v4, :cond_13

    .line 311
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad()Z

    move-result v1

    if-eqz v1, :cond_12

    sub-float v1, v8, v2

    sub-float v2, v9, v3

    goto :goto_a

    :cond_12
    move v1, v12

    move v2, v1

    .line 320
    :goto_a
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDx()F

    move-result v3

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDy()F

    move-result v4

    .line 318
    invoke-interface {v14, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Path;->relativeQuadraticBezierTo(FFFF)V

    add-float/2addr v1, v8

    add-float/2addr v2, v9

    .line 324
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDx()F

    move-result v3

    add-float/2addr v8, v3

    .line 325
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDy()F

    move-result v3

    goto/16 :goto_5

    .line 328
    :cond_13
    instance-of v4, v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    if-eqz v4, :cond_15

    .line 329
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad()Z

    move-result v1

    if-eqz v1, :cond_14

    int-to-float v1, v5

    mul-float/2addr v8, v1

    sub-float/2addr v8, v2

    mul-float/2addr v1, v9

    sub-float v9, v1, v3

    .line 338
    :cond_14
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getX()F

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getY()F

    move-result v2

    .line 336
    invoke-interface {v14, v8, v9, v1, v2}, Landroidx/compose/ui/graphics/Path;->quadraticBezierTo(FFFF)V

    .line 342
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getX()F

    move-result v1

    .line 343
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getY()F

    move-result v2

    move-object/from16 v19, v0

    move v3, v9

    move/from16 v23, v12

    move/from16 v22, v13

    move v0, v15

    move v9, v2

    move v2, v8

    move v8, v1

    goto/16 :goto_b

    .line 346
    :cond_15
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    if-eqz v1, :cond_16

    .line 347
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getArcStartDx()F

    move-result v2

    add-float v6, v2, v8

    .line 348
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getArcStartDy()F

    move-result v2

    add-float v7, v2, v9

    float-to-double v2, v8

    float-to-double v4, v9

    float-to-double v8, v6

    move-object/from16 v19, v0

    move/from16 v18, v6

    move v0, v7

    move-wide v6, v8

    float-to-double v8, v0

    .line 355
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getHorizontalEllipseRadius()F

    move-result v12

    move/from16 v17, v10

    move/from16 v20, v11

    float-to-double v10, v12

    move/from16 v21, v20

    move/from16 v20, v17

    .line 356
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getVerticalEllipseRadius()F

    move-result v12

    move/from16 v17, v13

    float-to-double v12, v12

    move/from16 v22, v17

    const/16 v23, 0x0

    move/from16 v24, v0

    .line 357
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getTheta()F

    move-result v0

    move/from16 v16, v15

    float-to-double v14, v0

    move/from16 v0, v16

    .line 358
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isMoreThanHalf()Z

    move-result v16

    .line 359
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isPositiveArc()Z

    move-result v17

    move-object/from16 v1, p1

    .line 349
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    move/from16 v2, v18

    move v8, v2

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v3, v24

    move v9, v3

    goto :goto_b

    :cond_16
    move-object v1, v0

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v23, v12

    move/from16 v22, v13

    move v0, v15

    .line 367
    instance-of v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    if-eqz v4, :cond_17

    float-to-double v2, v8

    float-to-double v4, v9

    .line 372
    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartX()F

    move-result v6

    float-to-double v6, v6

    .line 373
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartY()F

    move-result v8

    float-to-double v8, v8

    .line 374
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getHorizontalEllipseRadius()F

    move-result v10

    float-to-double v10, v10

    .line 375
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getVerticalEllipseRadius()F

    move-result v12

    float-to-double v12, v12

    .line 376
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getTheta()F

    move-result v14

    float-to-double v14, v14

    .line 377
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isMoreThanHalf()Z

    move-result v16

    .line 378
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isPositiveArc()Z

    move-result v17

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .line 368
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 380
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartX()F

    move-result v1

    .line 381
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartY()F

    move-result v2

    move v8, v1

    move v3, v2

    move v9, v3

    move/from16 v10, v20

    move/from16 v11, v21

    move v2, v8

    goto :goto_b

    :cond_17
    move-object/from16 v19, v1

    move/from16 v10, v20

    move/from16 v11, v21

    :goto_b
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v14, p1

    move v15, v0

    move-object/from16 v1, v19

    move/from16 v12, v23

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_18
    return-object p1
.end method

.method public static synthetic toPath$default(Ljava/util/List;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 158
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final toRadians(D)D
    .locals 2

    const/16 v0, 0xb4

    int-to-double v0, v0

    div-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    return-wide p0
.end method
