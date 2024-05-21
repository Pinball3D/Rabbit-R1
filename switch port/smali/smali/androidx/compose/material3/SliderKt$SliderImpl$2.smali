.class final Landroidx/compose/material3/SliderKt$SliderImpl$2;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->SliderImpl(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;IFLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$SliderImpl$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1508:1\n223#2,2:1509\n223#2,2:1511\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$SliderImpl$2\n*L\n588#1:1509,2\n592#1:1511,2\n*E\n"
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
.field final synthetic $positionFraction:F

.field final synthetic $thumbWidth:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $totalWidth:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2;->$thumbWidth:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2;->$totalWidth:Landroidx/compose/runtime/MutableState;

    iput p3, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2;->$positionFraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$this$Layout"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "measurables"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    check-cast v1, Ljava/lang/Iterable;

    .line 1509
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Collection contains no element matching the predicate."

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 589
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    if-ne v6, v7, :cond_2

    move-wide/from16 v6, p3

    .line 590
    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 1511
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 593
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    if-ne v8, v9, :cond_0

    .line 596
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    neg-int v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-wide/from16 v8, p3

    .line 595
    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x0

    .line 597
    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v5

    .line 594
    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 600
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 601
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v1, v0, Landroidx/compose/material3/SliderKt$SliderImpl$2;->$thumbWidth:Landroidx/compose/runtime/MutableState;

    .line 603
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/compose/material3/SliderKt$SliderImpl$2;->$totalWidth:Landroidx/compose/runtime/MutableState;

    .line 604
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 606
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 607
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroidx/compose/material3/SliderKt$SliderImpl$2;->$positionFraction:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    .line 608
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v9, v0, 0x2

    .line 609
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v12, v0, 0x2

    const/4 v0, 0x0

    .line 611
    new-instance v1, Landroidx/compose/material3/SliderKt$SliderImpl$2$measure$1;

    move-object v6, v1

    move-object v10, v2

    invoke-direct/range {v6 .. v12}, Landroidx/compose/material3/SliderKt$SliderImpl$2$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object v6, v0

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 1512
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-wide/from16 v6, p3

    goto/16 :goto_0

    .line 1510
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
