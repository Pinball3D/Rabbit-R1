package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidTextToolbar.android.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\"\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/platform/TextToolbarHelperMethods;", "", "()V", "invalidateContentRect", "", "actionMode", "Landroid/view/ActionMode;", "startActionMode", "view", "Landroid/view/View;", "actionModeCallback", "Landroid/view/ActionMode$Callback;", "type", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextToolbarHelperMethods {
    public static final TextToolbarHelperMethods INSTANCE = new TextToolbarHelperMethods();

    private TextToolbarHelperMethods() {
    }

    public final ActionMode startActionMode(View view, ActionMode.Callback actionModeCallback, int type) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(actionModeCallback, "actionModeCallback");
        return view.startActionMode(actionModeCallback, type);
    }

    public final void invalidateContentRect(ActionMode actionMode) {
        Intrinsics.checkNotNullParameter(actionMode, "actionMode");
        actionMode.invalidateContentRect();
    }
}
