.class public final Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;
.super Ljava/lang/Object;
.source "SelectionManager.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\n\u00b2\u0006\n\u0010\u000b\u001a\u00020\u000cX\u008a\u008e\u0002"
    }
    d2 = {
        "isCopyKeyEvent",
        "",
        "keyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "isCopyKeyEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "selectionMagnifier",
        "Landroidx/compose/ui/Modifier;",
        "manager",
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "foundation_release",
        "magnifierSize",
        "Landroidx/compose/ui/unit/IntSize;"
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
.method public static final isCopyKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "keyEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroidx/compose/foundation/text/KeyMapping_androidKt;->getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/foundation/text/KeyMapping;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    move-result-object p0

    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final selectionMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/MagnifierStyle$Companion;->getTextDefault()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/MagnifierStyle;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
