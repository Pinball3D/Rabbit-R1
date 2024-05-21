.class final Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RowColumnImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $measureResult:Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

.field final synthetic $rowColumnMeasureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->$rowColumnMeasureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->$measureResult:Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    iput-object p3, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 3

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->$rowColumnMeasureHelper:Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    iget-object v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->$measureResult:Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    iget-object p0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 89
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, p1, v1, v2, p0}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeHelper(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;ILandroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method
