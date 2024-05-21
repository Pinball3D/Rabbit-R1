package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentDialog;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionMode;
import androidx.core.view.KeyEventDispatcher;

/* loaded from: classes.dex */
public class AppCompatDialog extends ComponentDialog implements AppCompatCallback {
    private AppCompatDelegate mDelegate;
    private final KeyEventDispatcher.Component mKeyDispatcher;

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeStarted(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback) {
        return null;
    }

    public AppCompatDialog(Context context) {
        this(context, 0);
    }

    public AppCompatDialog(Context context, int i) {
        super(context, getThemeResId(context, i));
        this.mKeyDispatcher = new KeyEventDispatcher.Component() { // from class: androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0
            @Override // androidx.core.view.KeyEventDispatcher.Component
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return AppCompatDialog.this.superDispatchKeyEvent(keyEvent);
            }
        };
        AppCompatDelegate delegate = getDelegate();
        delegate.setTheme(getThemeResId(context, i));
        delegate.onCreate(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AppCompatDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context);
        this.mKeyDispatcher = new KeyEventDispatcher.Component() { // from class: androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0
            @Override // androidx.core.view.KeyEventDispatcher.Component
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return AppCompatDialog.this.superDispatchKeyEvent(keyEvent);
            }
        };
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        getDelegate().installViewFactory();
        super.onCreate(bundle);
        getDelegate().onCreate(bundle);
    }

    public ActionBar getSupportActionBar() {
        return getDelegate().getSupportActionBar();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(int i) {
        getDelegate().setContentView(i);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        getDelegate().setContentView(view);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().setContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().findViewById(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().setTitle(charSequence);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        getDelegate().setTitle(getContext().getString(i));
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().addContentView(view, layoutParams);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    protected void onStop() {
        super.onStop();
        getDelegate().onStop();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().onDestroy();
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().requestWindowFeature(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    public AppCompatDelegate getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = AppCompatDelegate.create(this, this);
        }
        return this.mDelegate;
    }

    private static int getThemeResId(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }
}
