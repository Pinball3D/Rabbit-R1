.class public final Landroidx/compose/foundation/Clickable_androidKt;
.super Ljava/lang/Object;
.source "Clickable.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\r\u001a\u00020\u0005*\u00020\u000eH\u0000\u001a\u000c\u0010\u000f\u001a\u00020\u0005*\u00020\u0010H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u001b\u0010\u0004\u001a\u00020\u0005*\u00020\u00068@X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u001b\u0010\t\u001a\u00020\u0005*\u00020\u00068BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\"\u001b\u0010\u000b\u001a\u00020\u0005*\u00020\u00068@X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "TapIndicationDelay",
        "",
        "getTapIndicationDelay",
        "()J",
        "isClick",
        "",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "isClick-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "isEnter",
        "isEnter-ZmokQxo",
        "isPress",
        "isPress-ZmokQxo",
        "isComposeRootInScrollableContainer",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "isInScrollableViewGroup",
        "Landroid/view/View;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TapIndicationDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    return-void
.end method

.method public static final getTapIndicationDelay()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    return-wide v0
.end method

.method public static final isClick-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "$this$isClick"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/Clickable_androidKt;->isEnter-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isComposeRootInScrollableContainer(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/compose/foundation/Clickable_androidKt;->isInScrollableViewGroup(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final isEnter-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 68
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/Key_androidKt;->getNativeKeyCode-YVgTNJs(J)I

    move-result p0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final isInScrollableViewGroup(Landroid/view/View;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 42
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 43
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final isPress-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "$this$isPress"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/Clickable_androidKt;->isEnter-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
