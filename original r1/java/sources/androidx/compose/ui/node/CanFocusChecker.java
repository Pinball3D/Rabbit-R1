package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusProperties;
import kotlin.Metadata;

/* compiled from: NodeKind.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u000eR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/node/CanFocusChecker;", "Landroidx/compose/ui/focus/FocusProperties;", "()V", "value", "", "canFocus", "getCanFocus", "()Z", "setCanFocus", "(Z)V", "canFocusValue", "Ljava/lang/Boolean;", "isCanFocusSet", "reset", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class CanFocusChecker implements FocusProperties {
    public static final CanFocusChecker INSTANCE = new CanFocusChecker();
    private static Boolean canFocusValue;

    public final boolean isCanFocusSet() {
        return canFocusValue != null;
    }

    public final void reset() {
        canFocusValue = null;
    }

    private CanFocusChecker() {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public boolean getCanFocus() {
        Boolean bool = canFocusValue;
        if (bool != null) {
            return bool.booleanValue();
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setCanFocus(boolean z) {
        canFocusValue = Boolean.valueOf(z);
    }
}
