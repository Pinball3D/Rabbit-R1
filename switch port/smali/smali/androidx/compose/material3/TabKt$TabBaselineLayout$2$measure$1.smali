.class final Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Tab.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabKt$TabBaselineLayout$2;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $firstBaseline:Ljava/lang/Integer;

.field final synthetic $iconPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $lastBaseline:Ljava/lang/Integer;

.field final synthetic $tabHeight:I

.field final synthetic $tabWidth:I

.field final synthetic $textPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p4, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$tabWidth:I

    iput p5, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    iput-object p6, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$firstBaseline:Ljava/lang/Integer;

    iput-object p7, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$lastBaseline:Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 351
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v4, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    .line 354
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/unit/Density;

    iget v5, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$tabWidth:I

    iget v6, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    iget-object v0, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$firstBaseline:Ljava/lang/Integer;

    .line 359
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object p0, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$lastBaseline:Ljava/lang/Integer;

    .line 360
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v1, p1

    .line 353
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/TabKt;->access$placeTextAndIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iget p0, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    .line 362
    invoke-static {p1, v3, p0}, Landroidx/compose/material3/TabKt;->access$placeTextOrIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_2

    iget p0, p0, Landroidx/compose/material3/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    .line 363
    invoke-static {p1, v0, p0}, Landroidx/compose/material3/TabKt;->access$placeTextOrIcon(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V

    :cond_2
    :goto_0
    return-void
.end method
