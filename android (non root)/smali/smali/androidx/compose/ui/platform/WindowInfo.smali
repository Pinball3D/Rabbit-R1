.class public interface abstract Landroidx/compose/ui/platform/WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008g\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R#\u0010\u0005\u001a\u00020\u00068WX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/WindowInfo;",
        "",
        "isWindowFocused",
        "",
        "()Z",
        "keyboardModifiers",
        "Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;",
        "getKeyboardModifiers-k7X9c1A$annotations",
        "()V",
        "getKeyboardModifiers-k7X9c1A",
        "()I",
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
.method public static synthetic getKeyboardModifiers-k7X9c1A$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getKeyboardModifiers-k7X9c1A()I
    .locals 0

    .line 50
    sget-object p0, Landroidx/compose/ui/platform/WindowInfoImpl;->Companion:Landroidx/compose/ui/platform/WindowInfoImpl$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/WindowInfoImpl$Companion;->getGlobalKeyboardModifiers$ui_release()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public abstract isWindowFocused()Z
.end method
