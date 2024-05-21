.class final Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->RangeSliderImpl(Landroidx/compose/ui/Modifier;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$RangeSliderImpl$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1508:1\n223#2,2:1509\n223#2,2:1511\n223#2,2:1513\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderKt$RangeSliderImpl$2\n*L\n781#1:1509,2\n787#1:1511,2\n793#1:1513,2\n*E\n"
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
.field final synthetic $endThumbWidth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $obtainedMeasurements:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $positionFractionEnd:F

.field final synthetic $positionFractionStart:F

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startThumbWidth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $totalWidth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $value:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;FF",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$obtainedMeasurements:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$rawOffsetStart:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    iput-object p4, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$rawOffsetEnd:Landroidx/compose/runtime/MutableState;

    iput p5, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$positionFractionStart:F

    iput p6, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$positionFractionEnd:F

    iput-object p7, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$startThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$endThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$totalWidth$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26
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

    move-wide/from16 v2, p3

    const-string v4, "$this$Layout"

    move-object/from16 v7, p1

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "measurables"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    check-cast v1, Ljava/lang/Iterable;

    .line 1509
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Collection contains no element matching the predicate."

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 782
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/material3/RangeSliderComponents;->STARTTHUMB:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v8, v9, :cond_0

    .line 783
    invoke-interface {v5, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v14

    .line 1511
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 788
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/material3/RangeSliderComponents;->ENDTHUMB:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v8, v9, :cond_1

    .line 789
    invoke-interface {v5, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v17

    .line 1513
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 794
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/material3/RangeSliderComponents;->TRACK:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v4, v5, :cond_2

    .line 797
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    neg-int v1, v1

    const/4 v9, 0x2

    div-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-wide/from16 v1, p3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    .line 796
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xb

    const/16 v25, 0x0

    .line 798
    invoke-static/range {v18 .. v25}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 795
    invoke-interface {v8, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    .line 801
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    .line 802
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    div-int/2addr v2, v9

    add-int v6, v1, v2

    .line 804
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    .line 805
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    .line 806
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$startThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 809
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$26(Landroidx/compose/runtime/MutableState;F)V

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$endThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 810
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$29(Landroidx/compose/runtime/MutableState;F)V

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$totalWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 811
    invoke-static {v2, v6}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$32(Landroidx/compose/runtime/MutableState;I)V

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$obtainedMeasurements:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 816
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$totalWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 817
    invoke-static {v2}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$31(Landroidx/compose/runtime/MutableState;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$endThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$28(Landroidx/compose/runtime/MutableState;)F

    move-result v3

    int-to-float v4, v9

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$startThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 818
    invoke-static {v3}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$25(Landroidx/compose/runtime/MutableState;)F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$rawOffsetStart:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v8, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 822
    invoke-interface {v8}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 819
    invoke-static {v5, v3, v2, v8}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$scaleToOffset$34(Lkotlin/ranges/ClosedFloatingPointRange;FFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v4, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$rawOffsetEnd:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v8, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 827
    invoke-interface {v8}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 824
    invoke-static {v5, v3, v2, v8}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$scaleToOffset$34(Lkotlin/ranges/ClosedFloatingPointRange;FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$obtainedMeasurements:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 829
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 832
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    div-int/lit8 v12, v2, 0x2

    .line 833
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$positionFractionStart:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$startThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 836
    invoke-static {v2}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$25(Landroidx/compose/runtime/MutableState;)F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$endThumbWidth$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Landroidx/compose/material3/SliderKt;->access$RangeSliderImpl$lambda$28(Landroidx/compose/runtime/MutableState;)F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v9

    div-float/2addr v2, v3

    .line 838
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v0, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2;->$positionFractionEnd:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v18

    .line 839
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v13, v0, 0x2

    .line 840
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v16, v0, 0x2

    .line 841
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v19, v0, 0x2

    const/4 v8, 0x0

    .line 843
    new-instance v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$measure$1;

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move v7, v1

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 1514
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
