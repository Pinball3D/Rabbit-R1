package androidx.compose.foundation.text.selection;

import android.view.KeyEvent;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.KeyMapping_androidKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SelectionManager.android.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\n²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u008e\u0002"}, d2 = {"isCopyKeyEvent", "", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "isCopyKeyEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "selectionMagnifier", "Landroidx/compose/ui/Modifier;", "manager", "Landroidx/compose/foundation/text/selection/SelectionManager;", "foundation_release", "magnifierSize", "Landroidx/compose/ui/unit/IntSize;"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectionManager_androidKt {
    /* renamed from: isCopyKeyEvent-ZmokQxo, reason: not valid java name */
    public static final boolean m938isCopyKeyEventZmokQxo(KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        return KeyMapping_androidKt.getPlatformDefaultKeyMapping().mo769mapZmokQxo(keyEvent) == KeyCommand.COPY;
    }

    public static final Modifier selectionMagnifier(Modifier modifier, SelectionManager manager) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        return !MagnifierStyle.INSTANCE.getTextDefault().isSupported() ? modifier : ComposedModifierKt.composed$default(modifier, null, new SelectionManager_androidKt$selectionMagnifier$1(manager), 1, null);
    }
}
