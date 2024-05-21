.class public abstract Landroidx/compose/ui/input/pointer/PointerInputFilter;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H&J-\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0015H&\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0002\u001a\u0004\u0008\u0013\u0010\u0006R\u001a\u0010\u0014\u001a\u00020\u00158F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
        "",
        "()V",
        "interceptOutOfBoundsChildEvents",
        "",
        "getInterceptOutOfBoundsChildEvents",
        "()Z",
        "isAttached",
        "isAttached$ui_release",
        "setAttached$ui_release",
        "(Z)V",
        "layoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getLayoutCoordinates$ui_release",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setLayoutCoordinates$ui_release",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "shareWithSiblings",
        "getShareWithSiblings$annotations",
        "getShareWithSiblings",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "()J",
        "onCancel",
        "",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isAttached:Z

.field private layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getShareWithSiblings$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getInterceptOutOfBoundsChildEvents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLayoutCoordinates$ui_release()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public getShareWithSiblings()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p0, :cond_0

    .line 81
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final isAttached$ui_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached:Z

    return p0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
.end method

.method public final setAttached$ui_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached:Z

    return-void
.end method

.method public final setLayoutCoordinates$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method
