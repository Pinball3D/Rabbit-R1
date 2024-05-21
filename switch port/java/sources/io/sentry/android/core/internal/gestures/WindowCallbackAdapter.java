package io.sentry.android.core.internal.gestures;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;

/* loaded from: classes3.dex */
public class WindowCallbackAdapter implements Window.Callback {
    private final Window.Callback delegate;

    public WindowCallbackAdapter(Window.Callback callback) {
        this.delegate = callback;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.delegate.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.delegate.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.delegate.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.delegate.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.delegate.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.delegate.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i) {
        return this.delegate.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.delegate.onCreatePanelMenu(i, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.delegate.onPreparePanel(i, view, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return this.delegate.onMenuOpened(i, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.delegate.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.delegate.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        this.delegate.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        this.delegate.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
        this.delegate.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.delegate.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        this.delegate.onPanelClosed(i, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return this.delegate.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.delegate.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.delegate.onWindowStartingActionMode(callback);
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        return this.delegate.onWindowStartingActionMode(callback, i);
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        this.delegate.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        this.delegate.onActionModeFinished(actionMode);
    }
}
