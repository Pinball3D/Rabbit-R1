.class final Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BottomSheetScaffoldKt;->StandardBottomSheet-8oydGBM(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $dragHandle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $layoutHeight:F

.field final synthetic $peekHeight:F

.field final synthetic $shadowElevation:F

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetSwipeEnabled:Z

.field final synthetic $state:Landroidx/compose/material3/SheetState;

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "FZF",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$state:Landroidx/compose/material3/SheetState;

    iput p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$peekHeight:F

    iput-boolean p3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$sheetSwipeEnabled:Z

    iput p4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$layoutHeight:F

    iput-object p5, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$containerColor:J

    iput-wide p8, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$contentColor:J

    iput p10, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$tonalElevation:F

    iput p11, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shadowElevation:F

    iput-object p12, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$content:Lkotlin/jvm/functions/Function3;

    iput p14, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed:I

    iput p15, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$state:Landroidx/compose/material3/SheetState;

    iget v2, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$peekHeight:F

    iget-boolean v3, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$sheetSwipeEnabled:Z

    iget v4, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$layoutHeight:F

    iget-object v5, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$containerColor:J

    iget-wide v8, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$contentColor:J

    iget v10, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$tonalElevation:F

    iget v11, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$shadowElevation:F

    iget-object v12, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$content:Lkotlin/jvm/functions/Function3;

    iget v14, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed:I

    or-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v0, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;->$$changed1:I

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v8

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, p1

    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/BottomSheetScaffoldKt;->access$StandardBottomSheet-8oydGBM(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
