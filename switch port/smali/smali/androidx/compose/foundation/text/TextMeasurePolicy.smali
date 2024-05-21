.class final Landroidx/compose/foundation/text/TextMeasurePolicy;
.super Ljava/lang/Object;
.source "BasicText.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/TextMeasurePolicy\n+ 2 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,436:1\n80#2,3:437\n83#2:444\n84#2:446\n85#2:448\n69#3,4:440\n74#3:447\n1#4:445\n*S KotlinDebug\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/TextMeasurePolicy\n*L\n362#1:437,3\n362#1:444\n362#1:446\n362#1:448\n362#1:440,4\n362#1:447\n362#1:445\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J/\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0002\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/foundation/text/TextMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "placements",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final placements:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "placements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "$this$measure"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "measurables"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Lkotlin/jvm/functions/Function0;

    .line 362
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 438
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 442
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 444
    check-cast v7, Landroidx/compose/ui/geometry/Rect;

    if-eqz v7, :cond_0

    .line 366
    new-instance v8, Lkotlin/Pair;

    .line 367
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    const/4 v10, 0x0

    .line 369
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    float-to-int v11, v11

    const/4 v12, 0x0

    .line 370
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v13, v13

    float-to-int v13, v13

    const/4 v14, 0x5

    const/4 v15, 0x0

    .line 368
    invoke-static/range {v10 .. v15}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 367
    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    .line 373
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v10

    invoke-static {v10}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-static {v10, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v7

    .line 366
    invoke-direct {v8, v9, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v8, v3

    :goto_1
    if-eqz v8, :cond_1

    .line 444
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 448
    :cond_2
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    .line 378
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .line 379
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    const/4 v5, 0x0

    .line 377
    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy$measure$1;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/TextMeasurePolicy$measure$1;-><init>(Ljava/util/List;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v3, v0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
