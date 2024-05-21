.class public final Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.super Ljava/lang/Object;
.source "LazyListMeasuredItem.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemInfo;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasuredItem.kt\nandroidx/compose/foundation/lazy/LazyListMeasuredItem\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,171:1\n168#1:186\n33#2,6:172\n69#2,6:178\n1#3:184\n86#4:185\n86#4:187\n*S KotlinDebug\n*F\n+ 1 LazyListMeasuredItem.kt\nandroidx/compose/foundation/lazy/LazyListMeasuredItem\n*L\n152#1:186\n84#1:172,6\n110#1:178,6\n142#1:185\n156#1:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0011\n\u0002\u0010\u0015\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B~\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J\u001e\u0010&\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107J\u0010\u00108\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<J\u001e\u0010=\u001a\u00020:2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u0003J.\u0010@\u001a\u00020\u0014*\u00020\u00142\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030BH\u0082\u0008\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010DR\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u001fR\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001aR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001dR\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010)\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u001dR\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001dR\u0011\u0010-\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001dR\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010/R\u001b\u00100\u001a\u00020\u0003*\u00020\u00148BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0018\u00103\u001a\u00020\u0003*\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006E"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
        "index",
        "",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "isVertical",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "reverseLayout",
        "beforeContentPadding",
        "afterContentPadding",
        "spacing",
        "visualOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "key",
        "",
        "contentType",
        "(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getContentType",
        "()Ljava/lang/Object;",
        "crossAxisSize",
        "getCrossAxisSize",
        "()I",
        "getIndex",
        "()Z",
        "getKey",
        "mainAxisLayoutSize",
        "maxMainAxisOffset",
        "minMainAxisOffset",
        "<set-?>",
        "offset",
        "getOffset",
        "placeableOffsets",
        "",
        "placeablesCount",
        "getPlaceablesCount",
        "size",
        "getSize",
        "sizeWithSpacings",
        "getSizeWithSpacings",
        "J",
        "mainAxis",
        "getMainAxis--gyyYBs",
        "(J)I",
        "mainAxisSize",
        "getMainAxisSize",
        "(Landroidx/compose/ui/layout/Placeable;)I",
        "getOffset-Bjo55l4",
        "(I)J",
        "getParentData",
        "place",
        "",
        "scope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "position",
        "layoutWidth",
        "layoutHeight",
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

.field private final horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mainAxisLayoutSize:I

.field private maxMainAxisOffset:I

.field private minMainAxisOffset:I

.field private offset:I

.field private final placeableOffsets:[I

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final size:I

.field private final sizeWithSpacings:I

.field private final spacing:I

.field private final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field private final visualOffset:J


# direct methods
.method private constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;Z",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "ZIIIJ",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "placeables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->reverseLayout:Z

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->beforeContentPadding:I

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    iput p10, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->spacing:I

    iput-wide p11, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->visualOffset:J

    iput-object p13, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    iput-object p14, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->contentType:Ljava/lang/Object;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 173
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move p6, p5

    :goto_0
    if-ge p4, p1, :cond_2

    .line 174
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    .line 175
    check-cast p7, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz p8, :cond_0

    .line 85
    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p8

    goto :goto_1

    :cond_0
    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p8

    :goto_1
    add-int/2addr p5, p8

    iget-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-nez p8, :cond_1

    .line 86
    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p7

    goto :goto_2

    :cond_1
    invoke-virtual {p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p7

    :goto_2
    invoke-static {p6, p7}, Ljava/lang/Math;->max(II)I

    move-result p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 89
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result p1

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->spacing:I

    add-int/2addr p1, p2

    invoke-static {p1, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->sizeWithSpacings:I

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;-><init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;)V

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

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    .line 168
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
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

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

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz p0, :cond_0

    .line 165
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

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz p0, :cond_0

    .line 166
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

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->contentType:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCrossAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    return p0
.end method

.method public final getOffset-Bjo55l4(I)J
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    mul-int/lit8 p1, p1, 0x2

    .line 129
    aget v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 96
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaceablesCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 94
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    return p0
.end method

.method public final getSizeWithSpacings()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->sizeWithSpacings:I

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    return p0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 12

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_a

    .line 135
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 136
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->minMainAxisOffset:I

    .line 137
    invoke-direct {p0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    .line 139
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v5

    .line 140
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    if-eqz v8, :cond_0

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 142
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getPlacementDelta-nOcc-ac()J

    move-result-wide v8

    .line 185
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v10

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v11

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    add-int/2addr v11, v8

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    .line 144
    invoke-direct {p0, v5, v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v10

    if-gt v10, v2, :cond_1

    invoke-direct {p0, v8, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v10

    if-le v10, v2, :cond_2

    .line 145
    :cond_1
    invoke-direct {p0, v5, v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v2

    if-lt v2, v3, :cond_3

    invoke-direct {p0, v8, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 147
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->cancelAnimation()V

    :cond_3
    move-wide v5, v8

    :cond_4
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->reverseLayout:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v2, :cond_5

    .line 186
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v3, v2

    .line 153
    invoke-direct {p0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int v2, v3, v2

    :goto_2
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v3, :cond_6

    .line 186
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    iget v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v5, v3

    .line 153
    invoke-direct {p0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int/2addr v5, v3

    goto :goto_3

    .line 186
    :cond_6
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    :goto_3
    invoke-static {v2, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    :cond_7
    iget-wide v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->visualOffset:J

    .line 187
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v5, v2

    invoke-static {v7, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v2, :cond_8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v3, p1

    .line 158
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v3, p1

    .line 160
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    .line 134
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "position() should be called first"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final position(III)V
    .locals 9

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 181
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    mul-int/lit8 v4, v2, 0x2

    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    const-string v6, "Required value was null."

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    iget-object v8, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {v7, v6, p2, v8}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    add-int/lit8 v4, v4, 0x1

    .line 115
    aput p1, v5, v4

    .line 116
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    goto :goto_2

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    .line 118
    aput p1, v5, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    if-eqz v7, :cond_3

    .line 120
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    invoke-interface {v7, v6, p3}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v6

    aput v6, v5, v4

    .line 121
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    :goto_2
    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->beforeContentPadding:I

    neg-int p1, p1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->minMainAxisOffset:I

    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    return-void
.end method
