.class final Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $bodyPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $sheetOffsetX:I

.field final synthetic $sheetOffsetY:I

.field final synthetic $sheetPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $snackbarOffsetX:I

.field final synthetic $snackbarOffsetY:I

.field final synthetic $snackbarPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $topBarHeight:I

.field final synthetic $topBarPlaceable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$bodyPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarHeight:I

    iput-object p3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffsetX:I

    iput p6, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffsetY:I

    iput-object p7, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p8, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetX:I

    iput p9, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetY:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 363
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$bodyPlaceable:Landroidx/compose/ui/layout/Placeable;

    const/4 v3, 0x0

    iget v4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    .line 365
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    .line 366
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffsetX:I

    iget v4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffsetY:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    .line 367
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetX:I

    iget v4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetY:I

    .line 368
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void
.end method
