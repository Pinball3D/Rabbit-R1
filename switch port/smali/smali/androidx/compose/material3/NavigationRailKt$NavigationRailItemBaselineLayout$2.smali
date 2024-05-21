.class final Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;
.super Ljava/lang/Object;
.source "NavigationRail.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationRailKt;->NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,668:1\n223#2,2:669\n223#2,2:673\n288#2,2:675\n223#2,2:677\n92#3:671\n92#3:672\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2\n*L\n452#1:669,2\n465#1:673,2\n474#1:675,2\n485#1:677,2\n454#1:671\n461#1:672\n*E\n"
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
.field final synthetic $alwaysShowLabel:Z

.field final synthetic $animationProgress:F

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
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
.method constructor <init>(FLkotlin/jvm/functions/Function2;Z)V
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
            ">;Z)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$animationProgress:F

    iput-object p2, p0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    iput-boolean p3, p0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$alwaysShowLabel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$Layout"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "measurables"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    check-cast v2, Ljava/lang/Iterable;

    .line 669
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Collection contains no element matching the predicate."

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 452
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "icon"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide/from16 v14, p3

    invoke-interface {v4, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 454
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-static {}, Landroidx/compose/material3/NavigationRailKt;->access$getIndicatorHorizontalPadding$p()F

    move-result v6

    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 671
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 454
    invoke-interface {v1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v6, v4

    iget v8, v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$animationProgress:F

    mul-float/2addr v6, v8

    .line 455
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    iget-object v8, v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    if-nez v8, :cond_1

    .line 457
    invoke-static {}, Landroidx/compose/material3/NavigationRailKt;->access$getIndicatorVerticalPaddingNoLabel$p()F

    move-result v8

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {}, Landroidx/compose/material3/NavigationRailKt;->access$getIndicatorVerticalPaddingWithLabel$p()F

    move-result v8

    .line 461
    :goto_0
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    mul-float/2addr v8, v7

    .line 672
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 461
    invoke-interface {v1, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v7

    add-int/2addr v9, v7

    .line 673
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 465
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "indicatorRipple"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 467
    sget-object v7, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v7, v4, v9}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v10

    .line 466
    invoke-interface {v8, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 675
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 474
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "indicator"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_3
    move-object v8, v10

    :goto_2
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    if-eqz v8, :cond_4

    .line 476
    sget-object v7, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v7, v6, v9}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v6

    .line 475
    invoke-interface {v8, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v10

    :goto_3
    iget-object v7, v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    if-eqz v7, :cond_7

    .line 677
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 485
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "label"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v2, 0xb

    const/4 v5, 0x0

    move-wide/from16 v7, p3

    move-object/from16 v16, v13

    move v13, v2

    move-object v14, v5

    .line 489
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v7

    move-object/from16 v2, v16

    .line 486
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p3

    goto :goto_4

    .line 678
    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v2, v10

    :goto_5
    iget-object v5, v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    if-nez v5, :cond_8

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v6

    move-wide/from16 v4, p3

    .line 494
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/NavigationRailKt;->access$placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    goto :goto_6

    .line 497
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v7, v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$alwaysShowLabel:Z

    iget v8, v0, Landroidx/compose/material3/NavigationRailKt$NavigationRailItemBaselineLayout$2;->$animationProgress:F

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-wide/from16 v5, p3

    .line 496
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/NavigationRailKt;->access$placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_9
    move-wide/from16 v14, p3

    goto/16 :goto_1

    .line 674
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
