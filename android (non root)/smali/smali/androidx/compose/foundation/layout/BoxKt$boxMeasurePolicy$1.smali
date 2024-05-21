.class final Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;
.super Ljava/lang/Object;
.source "Box.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/BoxKt;->boxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Box.kt\nandroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,301:1\n69#2,6:302\n69#2,6:308\n*S KotlinDebug\n*F\n+ 1 Box.kt\nandroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1\n*L\n134#1:302,6\n154#1:308,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $propagateMinConstraints:Z


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/Alignment;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$propagateMinConstraints:Z

    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
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

    move-object/from16 v2, p2

    const-string v1, "$this$MeasurePolicy"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "measurables"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    .line 98
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    const/4 v5, 0x0

    .line 96
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$propagateMinConstraints:Z

    if-eqz v1, :cond_1

    move-wide/from16 v3, p3

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    move-wide/from16 v10, p3

    .line 105
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 108
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v5, :cond_3

    .line 109
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 113
    invoke-static {v1}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 115
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 116
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v3

    move v11, v4

    move-object v3, v2

    goto :goto_1

    .line 118
    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 119
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    .line 121
    sget-object v4, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v4

    .line 120
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    move v10, v2

    move v11, v3

    move-object v3, v4

    :goto_1
    const/4 v12, 0x0

    .line 124
    new-instance v13, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;

    iget-object v8, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    move-object v2, v13

    move-object v4, v1

    move-object/from16 v5, p1

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/Alignment;)V

    move-object v6, v13

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v3, v10

    move v4, v11

    move-object v5, v12

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 129
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/compose/ui/layout/Placeable;

    .line 132
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v8

    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 133
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v10

    iput v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 303
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move v11, v6

    move v12, v11

    :goto_2
    if-ge v11, v10, :cond_5

    .line 304
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 305
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 135
    invoke-static {v13}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 136
    invoke-interface {v13, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v13

    .line 137
    aput-object v13, v1, v11

    .line 138
    iget v14, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 139
    iget v14, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    :cond_4
    move v12, v5

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    if-eqz v12, :cond_9

    .line 149
    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_6

    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4

    :cond_6
    move v3, v6

    .line 150
    :goto_4
    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v5, v4, :cond_7

    iget v4, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_5

    :cond_7
    move v4, v6

    .line 151
    :goto_5
    iget v5, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 152
    iget v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 148
    invoke-static {v3, v5, v4, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v3

    .line 309
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_6
    if-ge v6, v5, :cond_9

    .line 310
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 311
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 155
    invoke-static {v10}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 156
    invoke-interface {v10, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    aput-object v10, v1, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 162
    :cond_9
    iget v10, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v12, 0x0

    new-instance v13, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$5;

    iget-object v6, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    move-object v0, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$5;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/Alignment;)V

    move-object v6, v13

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v3, v10

    move v4, v11

    move-object v5, v12

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
