.class public final Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;
.super Ljava/lang/Object;
.source "LayoutNode.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0014\u0010\u0008\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0005R\u001d\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0005R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "doubleTapMinTimeMillis",
        "",
        "getDoubleTapMinTimeMillis",
        "()J",
        "doubleTapTimeoutMillis",
        "getDoubleTapTimeoutMillis",
        "longPressTimeoutMillis",
        "getLongPressTimeoutMillis",
        "minimumTouchTargetSize",
        "Landroidx/compose/ui/unit/DpSize;",
        "getMinimumTouchTargetSize-MYxV2XQ",
        "touchSlop",
        "",
        "getTouchSlop",
        "()F",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDoubleTapMinTimeMillis()J
    .locals 2

    const-wide/16 v0, 0x28

    return-wide v0
.end method

.method public getDoubleTapTimeoutMillis()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public getLongPressTimeoutMillis()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public getMinimumTouchTargetSize-MYxV2XQ()J
    .locals 2

    .line 1386
    sget-object p0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/DpSize$Companion;->getZero-MYxV2XQ()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTouchSlop()F
    .locals 0

    const/high16 p0, 0x41800000    # 16.0f

    return p0
.end method
