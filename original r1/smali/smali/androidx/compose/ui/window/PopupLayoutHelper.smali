.class public interface abstract Landroidx/compose/ui/window/PopupLayoutHelper;
.super Ljava/lang/Object;
.source "AndroidPopup.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/window/PopupLayoutHelper;",
        "",
        "getWindowVisibleDisplayFrame",
        "",
        "composeView",
        "Landroid/view/View;",
        "outRect",
        "Landroid/graphics/Rect;",
        "setGestureExclusionRects",
        "width",
        "",
        "height",
        "updateViewLayout",
        "windowManager",
        "Landroid/view/WindowManager;",
        "popupView",
        "params",
        "Landroid/view/ViewGroup$LayoutParams;",
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
.method public abstract getWindowVisibleDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract setGestureExclusionRects(Landroid/view/View;II)V
.end method

.method public abstract updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method
