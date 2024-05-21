.class final Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $containerPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $topPaddingValue:I

.field final synthetic $totalHeight:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/TextFieldMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$width:I

    iput p3, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$totalHeight:I

    iput-object p4, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    iput p13, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    iput-object p14, p0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 747
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v6, :cond_0

    iget v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$width:I

    iget v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$totalHeight:I

    iget-object v5, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v7, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v8, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v10, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v13, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 761
    invoke-static {v1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$getSingleLine$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Z

    move-result v14

    iget v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    move v15, v1

    iget-object v2, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 763
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    add-int v16, v1, v2

    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 764
    invoke-static {v1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$getAnimationProgress$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)F

    move-result v17

    iget-object v0, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 765
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v18

    move-object/from16 v2, p1

    .line 749
    invoke-static/range {v2 .. v18}, Landroidx/compose/material3/TextFieldKt;->access$placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZIIFF)V

    goto :goto_0

    :cond_0
    iget v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$width:I

    iget v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$totalHeight:I

    iget-object v5, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v7, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v8, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v10, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 779
    invoke-static {v1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$getSingleLine$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Z

    move-result v13

    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 780
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v14

    iget-object v0, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 781
    invoke-static {v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$getPaddingValues$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v15

    move-object/from16 v2, p1

    .line 768
    invoke-static/range {v2 .. v15}, Landroidx/compose/material3/TextFieldKt;->access$placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    :goto_0
    return-void
.end method
