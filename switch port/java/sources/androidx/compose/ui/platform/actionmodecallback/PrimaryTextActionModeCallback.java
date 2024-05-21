package androidx.compose.ui.platform.actionmodecallback;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PrimaryTextActionModeCallback.android.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u001c\u0010\u0010\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;", "Landroid/view/ActionMode$Callback;", "callback", "Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;", "(Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;)V", "onActionItemClicked", "", "mode", "Landroid/view/ActionMode;", "item", "Landroid/view/MenuItem;", "onCreateActionMode", "menu", "Landroid/view/Menu;", "onDestroyActionMode", "", "onPrepareActionMode", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PrimaryTextActionModeCallback implements ActionMode.Callback {
    private final TextActionModeCallback callback;

    public PrimaryTextActionModeCallback(TextActionModeCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
        return this.callback.onActionItemClicked(mode, item);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode mode, Menu menu) {
        return this.callback.onCreateActionMode(mode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
        return this.callback.onPrepareActionMode(mode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode mode) {
        this.callback.onDestroyActionMode();
    }
}
