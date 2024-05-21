.class public final Landroidx/compose/foundation/text/TextLayoutResultProxy;
.super Ljava/lang/Object;
.source "TextLayoutResultProxy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutResultProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutResultProxy.kt\nandroidx/compose/foundation/text/TextLayoutResultProxy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017J%\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0014\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001a\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010\"\u001a\u00020\u001a*\u00020\u001aH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010%\u001a\u00020\u001a*\u00020\u001aH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010$R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
        "",
        "value",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "(Landroidx/compose/ui/text/TextLayoutResult;)V",
        "decorationBoxCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getDecorationBoxCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setDecorationBoxCoordinates",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "innerTextFieldCoordinates",
        "getInnerTextFieldCoordinates",
        "setInnerTextFieldCoordinates",
        "getValue",
        "()Landroidx/compose/ui/text/TextLayoutResult;",
        "getLineEnd",
        "",
        "lineIndex",
        "visibleEnd",
        "",
        "getLineForVerticalPosition",
        "vertical",
        "",
        "getOffsetForPosition",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "coerceInVisibleBounds",
        "getOffsetForPosition-3MmeM6k",
        "(JZ)I",
        "isPositionOnText",
        "offset",
        "isPositionOnText-k-4lQ0M",
        "(J)Z",
        "coercedInVisibleBoundsOfInputText",
        "coercedInVisibleBoundsOfInputText-MK-Hz9U",
        "(J)J",
        "relativeToInputText",
        "relativeToInputText-MK-Hz9U",
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
.field private decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private innerTextFieldCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final value:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    return-void
.end method

.method private final coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->innerTextFieldCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 104
    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 108
    :cond_2
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 109
    :cond_3
    invoke-static {p1, p2, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxyKt;->access$coerceIn-3MmeM6k(JLandroidx/compose/ui/geometry/Rect;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getLineEnd$default(Landroidx/compose/foundation/text/TextLayoutResultProxy;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getLineEnd(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic getOffsetForPosition-3MmeM6k$default(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k(JZ)I

    move-result p0

    return p0
.end method

.method private final relativeToInputText-MK-Hz9U(J)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->innerTextFieldCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p0, :cond_1

    .line 86
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0, p0, p1, p2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    .line 86
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    .line 84
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method


# virtual methods
.method public final getDecorationBoxCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public final getInnerTextFieldCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->innerTextFieldCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public final getLineEnd(IZ)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p0

    return p0
.end method

.method public final getLineForVerticalPosition(F)I
    .locals 2

    const/4 v0, 0x0

    .line 50
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    .line 51
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J

    move-result-wide v0

    .line 52
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->relativeToInputText-MK-Hz9U(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 53
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result p0

    return p0
.end method

.method public final getOffsetForPosition-3MmeM6k(JZ)I
    .locals 0

    if-eqz p3, :cond_0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J

    move-result-wide p1

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->relativeToInputText-MK-Hz9U(J)J

    move-result-wide p1

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p0

    return p0
.end method

.method public final getValue()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0
.end method

.method public final isPositionOnText-k-4lQ0M(J)Z
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->relativeToInputText-MK-Hz9U(J)J

    move-result-wide p1

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 64
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v0

    .line 65
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 66
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setDecorationBoxCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public final setInnerTextFieldCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->innerTextFieldCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method
