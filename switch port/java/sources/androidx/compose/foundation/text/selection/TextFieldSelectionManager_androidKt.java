package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldSelectionManager.android.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0000\u0010\u0003¨\u0006\b²\u0006\n\u0010\t\u001a\u00020\nX\u008a\u008e\u0002"}, d2 = {"isShiftPressed", "", "Landroidx/compose/ui/input/pointer/PointerEvent;", "(Landroidx/compose/ui/input/pointer/PointerEvent;)Z", "textFieldMagnifier", "Landroidx/compose/ui/Modifier;", "manager", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "foundation_release", "magnifierSize", "Landroidx/compose/ui/unit/IntSize;"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager_androidKt {
    public static final boolean isShiftPressed(PointerEvent pointerEvent) {
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        return false;
    }

    public static final Modifier textFieldMagnifier(Modifier modifier, TextFieldSelectionManager manager) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        return !MagnifierStyle.INSTANCE.getTextDefault().isSupported() ? modifier : ComposedModifierKt.composed$default(modifier, null, new TextFieldSelectionManager_androidKt$textFieldMagnifier$1(manager), 1, null);
    }
}
