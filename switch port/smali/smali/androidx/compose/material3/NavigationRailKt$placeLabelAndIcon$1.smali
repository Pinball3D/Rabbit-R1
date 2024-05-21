.class final Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationRail.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationRailKt;->placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $alwaysShowLabel:Z

.field final synthetic $animationProgress:F

.field final synthetic $iconPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $iconX:I

.field final synthetic $indicatorPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $indicatorRipplePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelX:I

.field final synthetic $labelY:I

.field final synthetic $offset:I

.field final synthetic $rippleX:I

.field final synthetic $rippleY:I

.field final synthetic $selectedIconY:I

.field final synthetic $this_placeLabelAndIcon:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $width:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$indicatorPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-boolean p2, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$alwaysShowLabel:Z

    iput p3, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$animationProgress:F

    iput-object p4, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$labelX:I

    iput p6, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$labelY:I

    iput p7, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$offset:I

    iput-object p8, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p9, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$iconX:I

    iput p10, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$selectedIconY:I

    iput-object p11, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$indicatorRipplePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p12, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$rippleX:I

    iput p13, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$rippleY:I

    iput p14, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$width:I

    iput-object p15, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$this_placeLabelAndIcon:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 613
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9

    const-string v1, "$this$layout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$indicatorPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_0

    iget v1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$width:I

    iget v2, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$selectedIconY:I

    iget-object v4, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$this_placeLabelAndIcon:Landroidx/compose/ui/layout/MeasureScope;

    iget v5, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$offset:I

    .line 615
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    .line 616
    invoke-static {}, Landroidx/compose/material3/NavigationRailKt;->access$getIndicatorVerticalPaddingWithLabel$p()F

    move-result v6

    invoke-interface {v4, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    move v4, v1

    .line 617
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$alwaysShowLabel:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$animationProgress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$labelX:I

    iget v1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$labelY:I

    iget v2, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$offset:I

    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    .line 620
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$iconX:I

    iget v1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$selectedIconY:I

    iget v2, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$offset:I

    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    .line 622
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    iget-object v3, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$indicatorRipplePlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$rippleX:I

    iget v1, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$rippleY:I

    iget v0, p0, Landroidx/compose/material3/NavigationRailKt$placeLabelAndIcon$1;->$offset:I

    add-int v5, v1, v0

    .line 623
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void
.end method
