.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1789#2,3:506\n1549#2:509\n1620#2,3:510\n1789#2,3:513\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1\n*L\n270#1:506,3\n280#1:509\n280#1:510,3\n282#1:513,3\n*E\n"
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

.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method constructor <init>(FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScrollableTabData;ILkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/ScrollableTabData;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$tabs:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iput p5, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    iput-object p6, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iput p7, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 257
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    const-string v1, "$this$SubcomposeLayout"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Landroidx/compose/material3/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v1

    invoke-interface {v3, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    iget v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$edgePadding:F

    .line 266
    invoke-interface {v3, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 268
    sget-object v2, Landroidx/compose/material3/TabSlots;->Tabs:Landroidx/compose/material3/TabSlots;

    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$tabs:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v2, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    .line 270
    check-cast v2, Ljava/lang/Iterable;

    .line 507
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v13, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    const v7, 0x7fffffff

    .line 271
    invoke-interface {v5, v7}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    move v8, v13

    move v9, v13

    .line 274
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    .line 509
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 510
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 511
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 280
    invoke-interface {v7, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 511
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_1
    move-object v2, v6

    check-cast v2, Ljava/util/List;

    .line 282
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    mul-int/lit8 v5, v1, 0x2

    .line 514
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v14, v5

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 283
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    add-int/2addr v14, v5

    goto :goto_2

    .line 287
    :cond_2
    move-object v15, v3

    check-cast v15, Landroidx/compose/ui/layout/MeasureScope;

    const/16 v16, 0x0

    new-instance v17, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;

    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iget v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$selectedTabIndex:I

    iget-object v11, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iget v12, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->$$dirty:I

    move-object/from16 v0, v17

    move-object/from16 v3, p1

    move-wide/from16 v7, p2

    move v9, v14

    move v10, v13

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;-><init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScrollableTabData;IJIILkotlin/jvm/functions/Function3;I)V

    move-object/from16 v11, v17

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x4

    const/4 v0, 0x0

    move-object v7, v15

    move v8, v14

    move v9, v13

    move-object/from16 v10, v16

    move-object v13, v0

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
