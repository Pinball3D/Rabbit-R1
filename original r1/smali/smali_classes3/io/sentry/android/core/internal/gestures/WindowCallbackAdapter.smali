.class public Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;
.super Ljava/lang/Object;
.source "WindowCallbackAdapter.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private final delegate:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 49
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 29
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 34
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 54
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 39
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 44
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 144
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 139
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 100
    invoke-interface {p0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 90
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 65
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 60
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 105
    invoke-interface {p0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 80
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 75
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 110
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 70
    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onSearchRequested()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 115
    invoke-interface {p0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 121
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 85
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 95
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 127
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->delegate:Landroid/view/Window$Callback;

    .line 134
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
