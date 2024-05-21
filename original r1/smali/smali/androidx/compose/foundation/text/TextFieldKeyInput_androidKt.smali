.class public final Landroidx/compose/foundation/text/TextFieldKeyInput_androidKt;
.super Ljava/lang/Object;
.source "TextFieldKeyInput.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0005"
    }
    d2 = {
        "isTypedEvent",
        "",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "isTypedEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
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


# direct methods
.method public static final isTypedEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "$this$isTypedEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
