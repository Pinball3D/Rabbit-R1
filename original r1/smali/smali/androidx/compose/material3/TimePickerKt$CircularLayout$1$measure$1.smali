.class final Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$CircularLayout$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1673:1\n1864#2,3:1674\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1\n*L\n1523#1:1674,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $constraints:J

.field final synthetic $innerCirclePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $radiusPx:F

.field final synthetic $selectorPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $theta:F


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/Placeable;JFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/ui/layout/Placeable;",
            "JFF)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$selectorPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$placeables:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$innerCirclePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-wide p4, p0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$constraints:J

    iput p6, p0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$radiusPx:F

    iput p7, p0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$theta:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1517
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$selectorPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 1521
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$placeables:Ljava/util/List;

    .line 1523
    check-cast v1, Ljava/lang/Iterable;

    iget-wide v10, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$constraints:J

    iget v12, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$radiusPx:F

    iget v13, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$theta:F

    .line 1675
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 1524
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 1525
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    float-to-double v6, v12

    int-to-float v2, v2

    mul-float/2addr v2, v13

    move-object v15, v1

    float-to-double v1, v2

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v1, v1, v16

    .line 1526
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v6

    int-to-double v8, v4

    add-double v16, v16, v8

    .line 1527
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v6, v1

    int-to-double v1, v5

    add-double/2addr v6, v1

    .line 1529
    invoke-static/range {v16 .. v17}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v4

    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 1528
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move-object/from16 v9, p1

    move v2, v14

    move-object v1, v15

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$innerCirclePlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_3

    iget-wide v1, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$constraints:J

    .line 1534
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    iget-object v2, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$innerCirclePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v4, v1, 0x2

    iget-wide v1, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$constraints:J

    .line 1535
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    iget-object v0, v0, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$measure$1;->$innerCirclePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 1533
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_3
    return-void
.end method
