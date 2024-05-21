.class final Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $actionIconsPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $constraints:J

.field final synthetic $layoutHeight:I

.field final synthetic $navigationIconPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $titleBaseline:I

.field final synthetic $titleBottomPadding:I

.field final synthetic $titleHorizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $titlePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $titleVerticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/Arrangement$Horizontal;JLandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/Arrangement$Vertical;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$navigationIconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$layoutHeight:I

    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleHorizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-wide p5, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$constraints:J

    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$actionIconsPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p9, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleVerticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput p10, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleBottomPadding:I

    iput p11, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleBaseline:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1363
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9

    const-string v1, "$this$layout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$navigationIconPlaceable:Landroidx/compose/ui/layout/Placeable;

    const/4 v4, 0x0

    iget v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$layoutHeight:I

    .line 1367
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    .line 1365
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleHorizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 1373
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    move v4, v1

    goto :goto_1

    .line 1374
    :cond_0
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getEnd()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$constraints:J

    .line 1375
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$actionIconsPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    .line 1379
    invoke-static {}, Landroidx/compose/material3/AppBarKt;->access$getTopAppBarTitleInset$p()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$navigationIconPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleVerticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 1382
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$layoutHeight:I

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_2
    move v5, v1

    goto :goto_4

    .line 1385
    :cond_2
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleBottomPadding:I

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$layoutHeight:I

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 1386
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    goto :goto_3

    :cond_3
    iget v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$layoutHeight:I

    iget-object v5, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 1387
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleBottomPadding:I

    iget-object v6, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titlePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 1389
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$titleBaseline:I

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_3
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    .line 1371
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$actionIconsPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-wide v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$constraints:J

    .line 1398
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$actionIconsPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v4, v1, v2

    iget v1, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$layoutHeight:I

    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$measure$1;->$actionIconsPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 1399
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v5, v1, 0x2

    move-object v2, p1

    .line 1397
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void
.end method
