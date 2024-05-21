.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1855#2,2:506\n1855#2,2:508\n1855#2,2:510\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1\n*L\n291#1:506,2\n299#1:508,2\n314#1:510,2\n*E\n"
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

.field final synthetic $constraints:J

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

.field final synthetic $layoutHeight:I

.field final synthetic $layoutWidth:I

.field final synthetic $padding:I

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method constructor <init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScrollableTabData;IJIILkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/ScrollableTabData;",
            "IJII",
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

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$padding:I

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$tabPlaceables:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iput p6, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$selectedTabIndex:I

    iput-wide p7, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$constraints:J

    iput p9, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$layoutWidth:I

    iput p10, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$layoutHeight:I

    iput-object p11, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iput p12, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$$dirty:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 287
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$padding:I

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$tabPlaceables:Ljava/util/List;

    .line 291
    check-cast v3, Ljava/lang/Iterable;

    iget-object v10, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 506
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    move v4, v12

    .line 292
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 293
    new-instance v2, Landroidx/compose/material3/TabPosition;

    invoke-interface {v10, v12}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-interface {v10, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/material3/TabPosition;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 299
    sget-object v3, Landroidx/compose/material3/TabSlots;->Divider:Landroidx/compose/material3/TabSlots;

    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-wide v7, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$constraints:J

    iget v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$layoutWidth:I

    iget v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$layoutHeight:I

    .line 508
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-wide v10, v7

    move v12, v6

    move v13, v6

    .line 301
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 300
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    const/4 v4, 0x0

    .line 307
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v10, v5, v2

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v2, p1

    move v14, v5

    move v5, v10

    move v10, v6

    move v6, v11

    move-wide v15, v7

    move v7, v12

    move-object v8, v13

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move v6, v10

    move v5, v14

    move-wide v7, v15

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 312
    sget-object v3, Landroidx/compose/material3/TabSlots;->Indicator:Landroidx/compose/material3/TabSlots;

    new-instance v4, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1$3;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iget v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$$dirty:I

    invoke-direct {v4, v5, v1, v6}, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;I)V

    const v5, 0x396b74f7

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget v10, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$layoutWidth:I

    iget v11, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$layoutHeight:I

    .line 510
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 315
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v3, v10, v11}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 319
    check-cast v3, Landroidx/compose/ui/unit/Density;

    iget v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$padding:I

    iget v0, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRow$2$1$1;->$selectedTabIndex:I

    .line 318
    invoke-virtual {v2, v3, v4, v1, v0}, Landroidx/compose/material3/ScrollableTabData;->onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V

    return-void
.end method
