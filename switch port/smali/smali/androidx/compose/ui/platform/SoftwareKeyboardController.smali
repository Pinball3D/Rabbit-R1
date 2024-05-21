.class public interface abstract Landroidx/compose/ui/platform/SoftwareKeyboardController;
.super Ljava/lang/Object;
.source "SoftwareKeyboardController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H\u0017J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H\u0017\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0007\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "",
        "hide",
        "",
        "hideSoftwareKeyboard",
        "show",
        "showSoftwareKeyboard",
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


# virtual methods
.method public abstract hide()V
.end method

.method public hideSoftwareKeyboard()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use hide instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hide()"
            imports = {}
        .end subannotation
    .end annotation

    .line 79
    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->hide()V

    return-void
.end method

.method public abstract show()V
.end method

.method public showSoftwareKeyboard()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use show instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "show()"
            imports = {}
        .end subannotation
    .end annotation

    .line 57
    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->show()V

    return-void
.end method
