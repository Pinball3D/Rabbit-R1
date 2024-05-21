.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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

.field final synthetic $totalHeight:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;


# direct methods
.method constructor <init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$totalHeight:I

    iput p2, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$width:I

    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iput-object p13, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 764
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$layout"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$totalHeight:I

    iget v3, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$width:I

    iget-object v4, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v13, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 777
    invoke-static {v13}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->access$getAnimationProgress$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)F

    move-result v13

    iget-object v14, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 778
    invoke-static {v14}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->access$getSingleLine$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)Z

    move-result v14

    iget-object v15, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 779
    invoke-interface {v15}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v15

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 780
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v16

    iget-object v0, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 781
    invoke-static {v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->access$getPaddingValues$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v17

    move-object/from16 v1, v18

    .line 765
    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$place(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)V

    return-void
.end method
