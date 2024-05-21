.class final Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AlertDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,221:1\n1864#2,2:222\n1864#2,3:224\n1866#2:227\n*S KotlinDebug\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1\n*L\n191#1:222,2\n202#1:224,3\n191#1:227\n*E\n"
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
.field final synthetic $crossAxisPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mainAxisLayoutSize:I

.field final synthetic $mainAxisSpacing:F

.field final synthetic $sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$sequences:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p3, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisSpacing:F

    iput p4, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisLayoutSize:I

    iput-object p5, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$crossAxisPositions:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$sequences:Ljava/util/List;

    .line 191
    check-cast v1, Ljava/lang/Iterable;

    iget-object v10, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget v11, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisSpacing:F

    iget v12, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisLayoutSize:I

    iget-object v0, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$crossAxisPositions:Ljava/util/List;

    .line 223
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v15, v14, 0x1

    if-gez v14, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v8, v2

    check-cast v8, Ljava/util/List;

    .line 192
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [I

    move v3, v13

    :goto_1
    if-ge v3, v2, :cond_2

    .line 193
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .line 194
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-interface {v10, v11}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v13

    :goto_2
    add-int/2addr v4, v6

    .line 193
    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    :cond_2
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getEnd()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    .line 197
    new-array v7, v2, [I

    move v4, v13

    :goto_3
    if-ge v4, v2, :cond_3

    aput v13, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 199
    :cond_3
    move-object v4, v10

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 200
    invoke-interface {v10}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    move-object v2, v3

    move-object v3, v4

    move v4, v12

    move-object/from16 v16, v7

    .line 199
    invoke-interface/range {v2 .. v7}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 202
    check-cast v8, Ljava/lang/Iterable;

    .line 225
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v2, v13

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v18, v2, 0x1

    if-gez v2, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 204
    aget v4, v16, v2

    .line 205
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 203
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move/from16 v2, v18

    goto :goto_4

    :cond_5
    move v14, v15

    goto/16 :goto_0

    :cond_6
    return-void
.end method
