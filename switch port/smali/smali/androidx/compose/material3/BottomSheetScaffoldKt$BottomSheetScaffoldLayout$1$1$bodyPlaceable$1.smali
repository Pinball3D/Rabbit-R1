.class final Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
.field final synthetic $$dirty:I

.field final synthetic $body:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $contentColor:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $sheetPeekHeight:F


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;JJILkotlin/jvm/functions/Function3;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJI",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$containerColor:J

    iput-wide p4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$contentColor:J

    iput p6, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$$dirty:I

    iput-object p7, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$body:Lkotlin/jvm/functions/Function3;

    iput p8, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$sheetPeekHeight:F

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 347
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    const-string v2, "C347@15198L194:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 348
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 348
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.BottomSheetScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:346)"

    const v4, -0x56f9f05f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$modifier:Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    iget-wide v3, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$containerColor:J

    iget-wide v5, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$contentColor:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 352
    new-instance v11, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1$1;

    iget-object v12, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$body:Lkotlin/jvm/functions/Function3;

    iget v13, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$sheetPeekHeight:F

    iget v14, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$$dirty:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1$1;-><init>(Lkotlin/jvm/functions/Function3;FI)V

    const v12, 0x66dae27c

    const/4 v13, 0x1

    invoke-static {v10, v12, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget v0, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;->$$dirty:I

    and-int/lit8 v12, v0, 0xe

    const/high16 v13, 0xc00000

    or-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x12

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v12, v13

    shr-int/lit8 v0, v0, 0x12

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v12, v0

    const/16 v13, 0x72

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object/from16 v10, p1

    move v11, v12

    move v12, v13

    .line 348
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
