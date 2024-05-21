.class final Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$TabRow$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$TabRow$2$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,505:1\n1789#2,3:506\n1549#2:509\n1620#2,3:510\n92#3:513\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$TabRow$2$1$1\n*L\n156#1:506,3\n160#1:509\n160#1:510,3\n172#1:513\n*E\n"
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
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iput p4, p0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 148
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "$this$SubcomposeLayout"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v12

    .line 150
    sget-object v1, Landroidx/compose/material3/TabSlots;->Tabs:Landroidx/compose/material3/TabSlots;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v1, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 152
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    if-lez v3, :cond_0

    .line 154
    div-int v5, v12, v3

    iput v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 156
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    .line 507
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v11, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 157
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v7, v8}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_0

    .line 509
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 510
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 511
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 163
    iget v15, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 164
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-wide/from16 v13, p2

    move/from16 v16, v8

    move/from16 v17, v11

    move/from16 v18, v11

    .line 162
    invoke-static/range {v13 .. v18}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v8

    .line 161
    invoke-interface {v7, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 511
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_2
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 171
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v6, v3, :cond_3

    .line 172
    new-instance v7, Landroidx/compose/material3/TabPosition;

    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2, v8}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v8

    int-to-float v9, v6

    mul-float/2addr v8, v9

    .line 513
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 172
    iget v9, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2, v9}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/material3/TabPosition;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v9, v5

    check-cast v9, Ljava/util/List;

    .line 175
    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/layout/MeasureScope;

    const/4 v14, 0x0

    new-instance v15, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    iget v10, v0, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1;->$$dirty:I

    move-object v0, v15

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    move v7, v11

    move/from16 v16, v11

    move v11, v12

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/TabRowKt$TabRow$2$1$1$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;JILkotlin/jvm/functions/Function3;Ljava/util/List;II)V

    move-object v6, v15

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v13

    move v3, v12

    move/from16 v4, v16

    move-object v5, v14

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
