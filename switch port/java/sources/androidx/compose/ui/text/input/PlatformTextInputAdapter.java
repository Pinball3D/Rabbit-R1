package androidx.compose.ui.text.input;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import kotlin.Metadata;

/* compiled from: PlatformTextInputAdapter.android.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/input/PlatformTextInputAdapter;", "", "createInputConnection", "Landroid/view/inputmethod/InputConnection;", "outAttrs", "Landroid/view/inputmethod/EditorInfo;", "onDisposed", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface PlatformTextInputAdapter {
    InputConnection createInputConnection(EditorInfo outAttrs);

    default void onDisposed() {
    }
}
