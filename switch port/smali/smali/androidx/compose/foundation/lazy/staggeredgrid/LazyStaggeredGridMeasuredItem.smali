.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasure.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem\n+ 2 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 5 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,1158:1\n1145#1:1180\n1147#1:1182\n1145#1:1183\n99#2,8:1159\n99#2,8:1167\n1#3:1175\n69#4,4:1176\n74#4:1185\n86#5:1181\n86#5:1184\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridMeasure.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem\n*L\n1118#1:1180\n1134#1:1182\n1135#1:1183\n1072#1:1159,8\n1078#1:1167,8\n1117#1:1176,4\n1117#1:1185\n1124#1:1181\n1138#1:1184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0011J\u0010\u00107\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0002\u001a\u00020\u0003J\u0016\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=J\u001e\u0010>\u001a\u0002092\u0006\u00103\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003J\u0008\u0010@\u001a\u00020AH\u0016J.\u0010B\u001a\u00020&*\u00020&2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030DH\u0082\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010FR\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001a\"\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013R\u0014\u0010\u000c\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016R\u000e\u0010 \u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0016R\u000e\u0010#\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R)\u0010\'\u001a\u00020&2\u0006\u0010%\u001a\u00020&@RX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008(\u0010)R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010+\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0016R\u001f\u0010-\u001a\u00020.X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010*\u001a\u0004\u0008/\u0010)R\u0011\u00100\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0016R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u0016R\u001b\u00103\u001a\u00020\u0003*\u00020&8BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0019\u0010!\u001a\u00020\u0003*\u00020\u00088\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u00106\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006G"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
        "index",
        "",
        "key",
        "",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "isVertical",
        "",
        "spacing",
        "lane",
        "span",
        "beforeContentPadding",
        "afterContentPadding",
        "contentType",
        "(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;)V",
        "getContentType",
        "()Ljava/lang/Object;",
        "crossAxisOffset",
        "getCrossAxisOffset",
        "()I",
        "crossAxisSize",
        "getCrossAxisSize",
        "getIndex",
        "()Z",
        "isVisible",
        "setVisible",
        "(Z)V",
        "getKey",
        "getLane",
        "mainAxisLayoutSize",
        "mainAxisSize",
        "getMainAxisSize",
        "maxMainAxisOffset",
        "minMainAxisOffset",
        "<set-?>",
        "Landroidx/compose/ui/unit/IntOffset;",
        "offset",
        "getOffset-nOcc-ac",
        "()J",
        "J",
        "placeablesCount",
        "getPlaceablesCount",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "sizeWithSpacings",
        "getSizeWithSpacings",
        "getSpan",
        "mainAxis",
        "getMainAxis--gyyYBs",
        "(J)I",
        "(Landroidx/compose/ui/layout/Placeable;)I",
        "getParentData",
        "place",
        "",
        "scope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "context",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;",
        "position",
        "crossAxis",
        "toString",
        "",
        "copy",
        "mainAxisMap",
        "Lkotlin/Function1;",
        "copy-4Tuh3kE",
        "(JLkotlin/jvm/functions/Function1;)J",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final contentType:Ljava/lang/Object;

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private isVisible:Z

.field private final key:Ljava/lang/Object;

.field private final lane:I

.field private mainAxisLayoutSize:I

.field private final mainAxisSize:I

.field private maxMainAxisOffset:I

.field private minMainAxisOffset:I

.field private offset:J

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field private final size:J

.field private final sizeWithSpacings:I

.field private final span:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;ZIIIII",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeables"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    iput p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    iput p7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    iput p8, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->beforeContentPadding:I

    iput p9, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->contentType:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    .line 1160
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p6, 0x0

    const/4 p7, 0x0

    if-eqz p2, :cond_0

    move-object p2, p6

    goto :goto_3

    .line 1161
    :cond_0
    invoke-interface {p3, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/layout/Placeable;

    if-eqz p4, :cond_1

    .line 1073
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1161
    check-cast p2, Ljava/lang/Comparable;

    .line 1162
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    if-gt p1, p4, :cond_4

    move p8, p1

    .line 1163
    :goto_1
    invoke-interface {p3, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p10, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p10, :cond_2

    .line 1073
    invoke-virtual {p9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p9

    goto :goto_2

    :cond_2
    invoke-virtual {p9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p9

    :goto_2
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    .line 1163
    check-cast p9, Ljava/lang/Comparable;

    .line 1164
    invoke-interface {p9, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p10

    if-lez p10, :cond_3

    move-object p2, p9

    :cond_3
    if-eq p8, p4, :cond_4

    add-int/lit8 p8, p8, 0x1

    goto :goto_1

    .line 1072
    :cond_4
    :goto_3
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_5
    move p2, p7

    :goto_4
    iput p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    add-int/2addr p2, p5

    .line 1076
    invoke-static {p2, p7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->sizeWithSpacings:I

    iget-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 1168
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_8

    .line 1169
    :cond_6
    invoke-interface {p2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p4, :cond_7

    .line 1079
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p3

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    :goto_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1169
    check-cast p3, Ljava/lang/Comparable;

    .line 1170
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    if-gt p1, p4, :cond_a

    .line 1171
    :goto_6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p6, :cond_8

    .line 1079
    invoke-virtual {p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p5

    goto :goto_7

    :cond_8
    invoke-virtual {p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p5

    :goto_7
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 1171
    check-cast p5, Ljava/lang/Comparable;

    .line 1172
    invoke-interface {p5, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p6

    if-lez p6, :cond_9

    move-object p3, p5

    :cond_9
    if-eq p1, p4, :cond_a

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_a
    move-object p6, p3

    .line 1078
    :goto_8
    check-cast p6, Ljava/lang/Integer;

    if-eqz p6, :cond_b

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p7

    :cond_b
    iput p7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->crossAxisSize:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p1, :cond_c

    iget p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    .line 1087
    invoke-static {p7, p1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p1

    goto :goto_9

    :cond_c
    iget p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    .line 1089
    invoke-static {p1, p7}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p1

    :goto_9
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->size:J

    .line 1091
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    return-void
.end method

.method private final copy-4Tuh3kE(JLkotlin/jvm/functions/Function1;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    .line 1147
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    :goto_1
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p0, :cond_0

    .line 1144
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p0, :cond_0

    .line 1145
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getContentType()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->contentType:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCrossAxisOffset()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getCrossAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->crossAxisSize:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->index:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getLane()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->lane:I

    return p0
.end method

.method public final getMainAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisSize:I

    return p0
.end method

.method public getOffset-nOcc-ac()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    return-wide v0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 1070
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaceablesCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 1068
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->size:J

    return-wide v0
.end method

.method public final getSizeWithSpacings()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->sizeWithSpacings:I

    return p0
.end method

.method public final getSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->span:I

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    return p0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;)V
    .locals 13

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->placeables:Ljava/util/List;

    .line 1177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_b

    .line 1178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1179
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->minMainAxisOffset:I

    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_0

    .line 1180
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    :goto_1
    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    .line 1121
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v6

    .line 1122
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    if-eqz v9, :cond_1

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_5

    .line 1124
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getPlacementDelta-nOcc-ac()J

    move-result-wide v9

    .line 1181
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v12

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    add-int/2addr v12, v9

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    .line 1126
    invoke-direct {p0, v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v11

    if-gt v11, v3, :cond_2

    invoke-direct {p0, v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v11

    if-le v11, v3, :cond_3

    .line 1127
    :cond_2
    invoke-direct {p0, v6, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v3

    if-lt v3, v4, :cond_4

    invoke-direct {p0, v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v3

    if-lt v3, v4, :cond_4

    .line 1129
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->cancelAnimation()V

    :cond_4
    move-wide v6, v9

    .line 1133
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getReverseLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v3, :cond_6

    .line 1182
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    goto :goto_4

    :cond_6
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    iget v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v4, v3

    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v3, :cond_7

    .line 1183
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    :goto_3
    sub-int v3, v4, v3

    :goto_4
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_9

    .line 1182
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    iget v6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v6, v4

    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz v4, :cond_8

    .line 1183
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    :goto_5
    sub-int/2addr v6, v4

    goto :goto_6

    .line 1182
    :cond_9
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    :goto_6
    invoke-static {v3, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 1138
    :cond_a
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->getContentOffset-nOcc-ac()J

    move-result-wide v3

    .line 1184
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    add-int/2addr v6, v3

    invoke-static {v8, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v4, p1

    .line 1139
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    .line 1115
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "position() should be called first"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final position(III)V
    .locals 1

    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->mainAxisLayoutSize:I

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->beforeContentPadding:I

    neg-int v0, v0

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->minMainAxisOffset:I

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->afterContentPadding:I

    add-int/2addr p3, v0

    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->maxMainAxisOffset:I

    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical:Z

    if-eqz p3, :cond_0

    .line 1103
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p1

    goto :goto_0

    .line 1105
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->offset:J

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1153
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
