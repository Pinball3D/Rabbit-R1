.class public final Landroidx/compose/ui/graphics/vector/PathNodeKt;
.super Ljava/lang/Object;
.source "PathNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n1#1,399:1\n347#1,15:400\n347#1,15:415\n347#1,15:430\n347#1,15:445\n347#1,15:460\n347#1,15:475\n347#1,15:490\n347#1,15:505\n347#1,15:520\n347#1,15:535\n347#1,15:550\n347#1,15:565\n347#1,15:580\n347#1,15:595\n347#1,15:610\n347#1,15:625\n347#1,15:640\n347#1,15:655\n*S KotlinDebug\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n154#1:400,15\n163#1:415,15\n167#1:430,15\n176#1:445,15\n180#1:460,15\n189#1:475,15\n198#1:490,15\n207#1:505,15\n216#1:520,15\n232#1:535,15\n243#1:550,15\n257#1:565,15\n271#1:580,15\n285#1:595,15\n294#1:610,15\n303#1:625,15\n312#1:640,15\n324#1:655,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001ai\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u000828\u0008\u0004\u0010(\u001a2\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(,\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020#0)H\u0082\u0008\u001a*\u0010.\u001a\u00020 *\u00020\u00012\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "ArcToKey",
        "",
        "CloseKey",
        "CurveToKey",
        "HorizontalToKey",
        "LineToKey",
        "MoveToKey",
        "NUM_ARC_TO_ARGS",
        "",
        "NUM_CURVE_TO_ARGS",
        "NUM_HORIZONTAL_TO_ARGS",
        "NUM_LINE_TO_ARGS",
        "NUM_MOVE_TO_ARGS",
        "NUM_QUAD_TO_ARGS",
        "NUM_REFLECTIVE_CURVE_TO_ARGS",
        "NUM_REFLECTIVE_QUAD_TO_ARGS",
        "NUM_VERTICAL_TO_ARGS",
        "QuadToKey",
        "ReflectiveCurveToKey",
        "ReflectiveQuadToKey",
        "RelativeArcToKey",
        "RelativeCloseKey",
        "RelativeCurveToKey",
        "RelativeHorizontalToKey",
        "RelativeLineToKey",
        "RelativeMoveToKey",
        "RelativeQuadToKey",
        "RelativeReflectiveCurveToKey",
        "RelativeReflectiveQuadToKey",
        "RelativeVerticalToKey",
        "VerticalToKey",
        "pathNodesFromArgs",
        "",
        "nodes",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "args",
        "",
        "count",
        "numArgs",
        "nodeFor",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "subArray",
        "start",
        "addPathNodes",
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
.field private static final ArcToKey:C = 'A'

.field private static final CloseKey:C = 'Z'

.field private static final CurveToKey:C = 'C'

.field private static final HorizontalToKey:C = 'H'

.field private static final LineToKey:C = 'L'

.field private static final MoveToKey:C = 'M'

.field private static final NUM_ARC_TO_ARGS:I = 0x7

.field private static final NUM_CURVE_TO_ARGS:I = 0x6

.field private static final NUM_HORIZONTAL_TO_ARGS:I = 0x1

.field private static final NUM_LINE_TO_ARGS:I = 0x2

.field private static final NUM_MOVE_TO_ARGS:I = 0x2

.field private static final NUM_QUAD_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_CURVE_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_QUAD_TO_ARGS:I = 0x2

.field private static final NUM_VERTICAL_TO_ARGS:I = 0x1

.field private static final QuadToKey:C = 'Q'

.field private static final ReflectiveCurveToKey:C = 'S'

.field private static final ReflectiveQuadToKey:C = 'T'

.field private static final RelativeArcToKey:C = 'a'

.field private static final RelativeCloseKey:C = 'z'

.field private static final RelativeCurveToKey:C = 'c'

.field private static final RelativeHorizontalToKey:C = 'h'

.field private static final RelativeLineToKey:C = 'l'

.field private static final RelativeMoveToKey:C = 'm'

.field private static final RelativeQuadToKey:C = 'q'

.field private static final RelativeReflectiveCurveToKey:C = 's'

.field private static final RelativeReflectiveQuadToKey:C = 't'

.field private static final RelativeVerticalToKey:C = 'v'

.field private static final VerticalToKey:C = 'V'


# direct methods
.method public static final addPathNodes(CLjava/util/List;[FI)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;[FI)V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "nodes"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_1

    .line 152
    :goto_0
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_1
    const/16 v3, 0x6d

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p3, -0x2

    :goto_1
    if-gt v4, v0, :cond_3b

    .line 160
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    invoke-direct {v3, v5, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 407
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_2

    if-lez v4, :cond_2

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_2

    :cond_2
    if-lez v4, :cond_3

    .line 409
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 404
    :cond_3
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    const/16 v3, 0x4d

    if-ne v0, v3, :cond_7

    add-int/lit8 v0, p3, -0x2

    :goto_3
    if-gt v4, v0, :cond_3b

    .line 164
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    invoke-direct {v3, v5, v7}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    if-lez v4, :cond_5

    .line 422
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_4

    .line 423
    :cond_5
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_6

    if-lez v4, :cond_6

    .line 424
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 419
    :cond_6
    :goto_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_7
    const/16 v3, 0x6c

    if-ne v0, v3, :cond_a

    add-int/lit8 v0, p3, -0x2

    :goto_5
    if-gt v4, v0, :cond_3b

    .line 173
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    invoke-direct {v3, v5, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 437
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_8

    if-lez v4, :cond_8

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_6

    .line 438
    :cond_8
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_9

    if-lez v4, :cond_9

    .line 439
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 434
    :cond_9
    :goto_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_a
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_d

    add-int/lit8 v0, p3, -0x2

    :goto_7
    if-gt v4, v0, :cond_3b

    .line 177
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    invoke-direct {v3, v5, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 452
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_b

    if-lez v4, :cond_b

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_8

    .line 453
    :cond_b
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_c

    if-lez v4, :cond_c

    .line 454
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 449
    :cond_c
    :goto_8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    :cond_d
    const/16 v3, 0x68

    const/4 v5, 0x1

    if-ne v0, v3, :cond_10

    add-int/lit8 v0, p3, -0x1

    :goto_9
    if-gt v4, v0, :cond_3b

    .line 186
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v5, v2, v4

    invoke-direct {v3, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 467
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_e

    if-lez v4, :cond_e

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_a

    .line 468
    :cond_e
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_f

    if-lez v4, :cond_f

    .line 469
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 464
    :cond_f
    :goto_a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    const/16 v3, 0x48

    if-ne v0, v3, :cond_13

    add-int/lit8 v0, p3, -0x1

    :goto_b
    if-gt v4, v0, :cond_3b

    .line 195
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v5, v2, v4

    invoke-direct {v3, v5}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 482
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_11

    if-lez v4, :cond_11

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_c

    .line 483
    :cond_11
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_12

    if-lez v4, :cond_12

    .line 484
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 479
    :cond_12
    :goto_c
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_13
    const/16 v3, 0x76

    if-ne v0, v3, :cond_16

    add-int/lit8 v0, p3, -0x1

    :goto_d
    if-gt v4, v0, :cond_3b

    .line 204
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v5, v2, v4

    invoke-direct {v3, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 497
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_14

    if-lez v4, :cond_14

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_e

    .line 498
    :cond_14
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_15

    if-lez v4, :cond_15

    .line 499
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 494
    :cond_15
    :goto_e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_16
    const/16 v3, 0x56

    if-ne v0, v3, :cond_19

    add-int/lit8 v0, p3, -0x1

    :goto_f
    if-gt v4, v0, :cond_3b

    .line 213
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v5, v2, v4

    invoke-direct {v3, v5}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 512
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_17

    if-lez v4, :cond_17

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_10

    .line 513
    :cond_17
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_18

    if-lez v4, :cond_18

    .line 514
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 509
    :cond_18
    :goto_10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_19
    const/16 v3, 0x63

    if-ne v0, v3, :cond_1c

    add-int/lit8 v0, p3, -0x6

    :goto_11
    if-gt v4, v0, :cond_3b

    .line 222
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 223
    aget v6, v2, v4

    add-int/lit8 v12, v4, 0x1

    .line 224
    aget v7, v2, v12

    add-int/lit8 v5, v4, 0x2

    .line 225
    aget v8, v2, v5

    add-int/lit8 v5, v4, 0x3

    .line 226
    aget v9, v2, v5

    add-int/lit8 v5, v4, 0x4

    .line 227
    aget v10, v2, v5

    add-int/lit8 v5, v4, 0x5

    .line 228
    aget v11, v2, v5

    move-object v5, v3

    .line 222
    invoke-direct/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 527
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_1a

    if-lez v4, :cond_1a

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v12

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_12

    .line 528
    :cond_1a
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_1b

    if-lez v4, :cond_1b

    .line 529
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v12

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 524
    :cond_1b
    :goto_12
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x6

    goto :goto_11

    :cond_1c
    const/16 v3, 0x43

    if-ne v0, v3, :cond_1f

    add-int/lit8 v0, p3, -0x6

    :goto_13
    if-gt v4, v0, :cond_3b

    .line 233
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 234
    aget v6, v2, v4

    add-int/lit8 v12, v4, 0x1

    .line 235
    aget v7, v2, v12

    add-int/lit8 v5, v4, 0x2

    .line 236
    aget v8, v2, v5

    add-int/lit8 v5, v4, 0x3

    .line 237
    aget v9, v2, v5

    add-int/lit8 v5, v4, 0x4

    .line 238
    aget v10, v2, v5

    add-int/lit8 v5, v4, 0x5

    .line 239
    aget v11, v2, v5

    move-object v5, v3

    .line 233
    invoke-direct/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 542
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_1d

    if-lez v4, :cond_1d

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v12

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_14

    .line 543
    :cond_1d
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_1e

    if-lez v4, :cond_1e

    .line 544
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v12

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 539
    :cond_1e
    :goto_14
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x6

    goto :goto_13

    :cond_1f
    const/16 v3, 0x73

    if-ne v0, v3, :cond_22

    add-int/lit8 v0, p3, -0x4

    :goto_15
    if-gt v4, v0, :cond_3b

    .line 249
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 250
    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    .line 251
    aget v7, v2, v6

    add-int/lit8 v8, v4, 0x2

    .line 252
    aget v8, v2, v8

    add-int/lit8 v9, v4, 0x3

    .line 253
    aget v9, v2, v9

    .line 249
    invoke-direct {v3, v5, v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 557
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_20

    if-lez v4, :cond_20

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_16

    .line 558
    :cond_20
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_21

    if-lez v4, :cond_21

    .line 559
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 554
    :cond_21
    :goto_16
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_15

    :cond_22
    const/16 v3, 0x53

    if-ne v0, v3, :cond_25

    add-int/lit8 v0, p3, -0x4

    :goto_17
    if-gt v4, v0, :cond_3b

    .line 263
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 264
    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    .line 265
    aget v7, v2, v6

    add-int/lit8 v8, v4, 0x2

    .line 266
    aget v8, v2, v8

    add-int/lit8 v9, v4, 0x3

    .line 267
    aget v9, v2, v9

    .line 263
    invoke-direct {v3, v5, v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 572
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_23

    if-lez v4, :cond_23

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_18

    .line 573
    :cond_23
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_24

    if-lez v4, :cond_24

    .line 574
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 569
    :cond_24
    :goto_18
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_17

    :cond_25
    const/16 v3, 0x71

    if-ne v0, v3, :cond_28

    add-int/lit8 v0, p3, -0x4

    :goto_19
    if-gt v4, v0, :cond_3b

    .line 277
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 278
    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    .line 279
    aget v7, v2, v6

    add-int/lit8 v8, v4, 0x2

    .line 280
    aget v8, v2, v8

    add-int/lit8 v9, v4, 0x3

    .line 281
    aget v9, v2, v9

    .line 277
    invoke-direct {v3, v5, v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 587
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_26

    if-lez v4, :cond_26

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1a

    .line 588
    :cond_26
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_27

    if-lez v4, :cond_27

    .line 589
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 584
    :cond_27
    :goto_1a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_19

    :cond_28
    const/16 v3, 0x51

    if-ne v0, v3, :cond_2b

    add-int/lit8 v0, p3, -0x4

    :goto_1b
    if-gt v4, v0, :cond_3b

    .line 286
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 287
    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    .line 288
    aget v7, v2, v6

    add-int/lit8 v8, v4, 0x2

    .line 289
    aget v8, v2, v8

    add-int/lit8 v9, v4, 0x3

    .line 290
    aget v9, v2, v9

    .line 286
    invoke-direct {v3, v5, v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 602
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_29

    if-lez v4, :cond_29

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1c

    .line 603
    :cond_29
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_2a

    if-lez v4, :cond_2a

    .line 604
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 599
    :cond_2a
    :goto_1c
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_1b

    :cond_2b
    const/16 v3, 0x74

    if-ne v0, v3, :cond_2e

    add-int/lit8 v0, p3, -0x2

    :goto_1d
    if-gt v4, v0, :cond_3b

    .line 300
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    invoke-direct {v3, v5, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 617
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_2c

    if-lez v4, :cond_2c

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1e

    .line 618
    :cond_2c
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_2d

    if-lez v4, :cond_2d

    .line 619
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 614
    :cond_2d
    :goto_1e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_1d

    :cond_2e
    const/16 v3, 0x54

    if-ne v0, v3, :cond_31

    add-int/lit8 v0, p3, -0x2

    :goto_1f
    if-gt v4, v0, :cond_3b

    .line 309
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v7, v2, v6

    invoke-direct {v3, v5, v7}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 632
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_2f

    if-lez v4, :cond_2f

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_20

    .line 633
    :cond_2f
    instance-of v5, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_30

    if-lez v4, :cond_30

    .line 634
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, v2, v4

    aget v6, v2, v6

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 629
    :cond_30
    :goto_20
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_1f

    :cond_31
    const/16 v3, 0x61

    const/4 v6, 0x0

    if-ne v0, v3, :cond_36

    add-int/lit8 v0, p3, -0x7

    move v3, v4

    :goto_21
    if-gt v3, v0, :cond_3b

    .line 313
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 314
    aget v8, v2, v3

    add-int/lit8 v16, v3, 0x1

    .line 315
    aget v9, v2, v16

    add-int/lit8 v7, v3, 0x2

    .line 316
    aget v10, v2, v7

    add-int/lit8 v7, v3, 0x3

    .line 317
    aget v7, v2, v7

    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_32

    move v11, v5

    goto :goto_22

    :cond_32
    move v11, v4

    :goto_22
    add-int/lit8 v7, v3, 0x4

    .line 318
    aget v7, v2, v7

    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_33

    move v12, v5

    goto :goto_23

    :cond_33
    move v12, v4

    :goto_23
    add-int/lit8 v7, v3, 0x5

    .line 319
    aget v13, v2, v7

    add-int/lit8 v7, v3, 0x6

    .line 320
    aget v14, v2, v7

    move-object v7, v15

    .line 313
    invoke-direct/range {v7 .. v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 647
    instance-of v7, v15, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v7, :cond_34

    if-lez v3, :cond_34

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v8, v2, v3

    aget v9, v2, v16

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_24

    .line 648
    :cond_34
    instance-of v7, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v7, :cond_35

    if-lez v3, :cond_35

    .line 649
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v8, v2, v3

    aget v9, v2, v16

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 644
    :cond_35
    :goto_24
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x7

    goto :goto_21

    :cond_36
    const/16 v3, 0x41

    if-ne v0, v3, :cond_3c

    add-int/lit8 v0, p3, -0x7

    move v3, v4

    :goto_25
    if-gt v3, v0, :cond_3b

    .line 325
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 326
    aget v8, v2, v3

    add-int/lit8 v16, v3, 0x1

    .line 327
    aget v9, v2, v16

    add-int/lit8 v7, v3, 0x2

    .line 328
    aget v10, v2, v7

    add-int/lit8 v7, v3, 0x3

    .line 329
    aget v7, v2, v7

    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_37

    move v11, v5

    goto :goto_26

    :cond_37
    move v11, v4

    :goto_26
    add-int/lit8 v7, v3, 0x4

    .line 330
    aget v7, v2, v7

    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_38

    move v12, v5

    goto :goto_27

    :cond_38
    move v12, v4

    :goto_27
    add-int/lit8 v7, v3, 0x5

    .line 331
    aget v13, v2, v7

    add-int/lit8 v7, v3, 0x6

    .line 332
    aget v14, v2, v7

    move-object v7, v15

    .line 325
    invoke-direct/range {v7 .. v14}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 662
    instance-of v7, v15, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v7, :cond_39

    if-lez v3, :cond_39

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v8, v2, v3

    aget v9, v2, v16

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_28

    .line 663
    :cond_39
    instance-of v7, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v7, :cond_3a

    if-lez v3, :cond_3a

    .line 664
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v8, v2, v3

    aget v9, v2, v16

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 659
    :cond_3a
    :goto_28
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x7

    goto :goto_25

    :cond_3b
    :goto_29
    return-void

    .line 336
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown command for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final pathNodesFromArgs(Ljava/util/List;[FIILkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;[FII",
            "Lkotlin/jvm/functions/Function2<",
            "-[F-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p2, p3

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_2

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 354
    instance-of v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1

    .line 355
    :cond_0
    instance-of v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 356
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 351
    :cond_1
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, p3

    goto :goto_0

    :cond_2
    return-void
.end method
