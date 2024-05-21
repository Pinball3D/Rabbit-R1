.class public final Landroidx/compose/ui/input/key/KeyEvent_androidKt;
.super Ljava/lang/Object;
.source "KeyEvent.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\"\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004\"\u0018\u0010\t\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0004\"\u0018\u0010\u000b\u001a\u00020\u000c*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\"\u0018\u0010\u000f\u001a\u00020\u0010*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\"\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0012*\n\u0010\u0016\"\u00020\u00172\u00020\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "isAltPressed",
        "",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "isAltPressed-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "isCtrlPressed",
        "isCtrlPressed-ZmokQxo",
        "isMetaPressed",
        "isMetaPressed-ZmokQxo",
        "isShiftPressed",
        "isShiftPressed-ZmokQxo",
        "key",
        "Landroidx/compose/ui/input/key/Key;",
        "getKey-ZmokQxo",
        "(Landroid/view/KeyEvent;)J",
        "type",
        "Landroidx/compose/ui/input/key/KeyEventType;",
        "getType-ZmokQxo",
        "(Landroid/view/KeyEvent;)I",
        "utf16CodePoint",
        "",
        "getUtf16CodePoint-ZmokQxo",
        "NativeKeyEvent",
        "Landroid/view/KeyEvent;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getKey-ZmokQxo(Landroid/view/KeyEvent;)J
    .locals 2

    const-string v0, "$this$key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getType-ZmokQxo(Landroid/view/KeyEvent;)I
    .locals 1

    const-string v0, "$this$type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 71
    sget-object p0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getUnknown-CS__XNY()I

    move-result p0

    goto :goto_0

    .line 70
    :cond_0
    sget-object p0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result p0

    goto :goto_0

    .line 69
    :cond_1
    sget-object p0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getUtf16CodePoint-ZmokQxo(Landroid/view/KeyEvent;)I
    .locals 1

    const-string v0, "$this$utf16CodePoint"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    return p0
.end method

.method public static final isAltPressed-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "$this$isAltPressed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    return p0
.end method

.method public static final isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "$this$isCtrlPressed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    return p0
.end method

.method public static final isMetaPressed-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "$this$isMetaPressed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p0

    return p0
.end method

.method public static final isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "$this$isShiftPressed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    return p0
.end method
