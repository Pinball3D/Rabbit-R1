.class final Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$TabRow$2$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1864#2,3:506\n1855#2,2:509\n1855#2,2:511\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$TabRow$2$1$1$1\n*L\n176#1:506,3\n180#1:509,2\n187#1:511,2\n*E\n"
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

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabRowHeight:I

.field final synthetic $tabRowWidth:I

.field final synthetic $tabWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;JILkotlin/jvm/functions/Function3;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "JI",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabPlaceables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iput-wide p5, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$constraints:J

    iput p7, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabRowHeight:I

    iput-object p8, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iput-object p9, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabPositions:Ljava/util/List;

    iput p10, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$$dirty:I

    iput p11, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabRowWidth:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabPlaceables:Ljava/util/List;

    .line 176
    check-cast v1, Ljava/lang/Iterable;

    iget-object v10, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabWidth:Lkotlin/jvm/internal/Ref$IntRef;

    .line 507
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 177
    iget v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    mul-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move v2, v11

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 180
    sget-object v2, Landroidx/compose/material3/TabSlots;->Divider:Landroidx/compose/material3/TabSlots;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-wide v7, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$constraints:J

    iget v6, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabRowHeight:I

    .line 509
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xb

    const/16 v17, 0x0

    move-wide v10, v7

    .line 181
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    const/4 v4, 0x0

    .line 182
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v5, v6, v2

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move v13, v6

    move v6, v10

    move-wide v14, v7

    move v7, v11

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move v6, v13

    move-wide v7, v14

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 185
    sget-object v2, Landroidx/compose/material3/TabSlots;->Indicator:Landroidx/compose/material3/TabSlots;

    new-instance v3, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1$3;

    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabPositions:Ljava/util/List;

    iget v6, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$$dirty:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/util/List;I)V

    const v4, -0x3a3a1e9d

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget v10, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabRowWidth:I

    iget v0, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;->$tabRowHeight:I

    .line 511
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 188
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v3, v10, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

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

    :cond_3
    return-void
.end method
