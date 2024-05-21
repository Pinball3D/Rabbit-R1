.class public interface abstract Landroidx/compose/ui/focus/FocusOwner;
.super Ljava/lang/Object;
.source "FocusOwner.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH&J\u001d\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\u0008\u0010\u001d\u001a\u00020\rH&J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020!H&J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\"H&J\u0008\u0010#\u001a\u00020\rH&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006$\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusOwner;",
        "Landroidx/compose/ui/focus/FocusManager;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setLayoutDirection",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "clearFocus",
        "",
        "force",
        "",
        "refreshFocusEvents",
        "dispatchInterceptedSoftKeyboardEvent",
        "keyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "dispatchInterceptedSoftKeyboardEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "dispatchKeyEvent",
        "dispatchKeyEvent-ZmokQxo",
        "dispatchRotaryEvent",
        "event",
        "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
        "getFocusRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "releaseFocus",
        "scheduleInvalidation",
        "node",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "takeFocus",
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
.method public abstract clearFocus(ZZ)V
.end method

.method public abstract dispatchInterceptedSoftKeyboardEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
.end method

.method public abstract getFocusRect()Landroidx/compose/ui/geometry/Rect;
.end method

.method public abstract getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method public abstract getModifier()Landroidx/compose/ui/Modifier;
.end method

.method public abstract releaseFocus()V
.end method

.method public abstract scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
.end method

.method public abstract scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
.end method

.method public abstract scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
.end method

.method public abstract setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
.end method

.method public abstract takeFocus()V
.end method
