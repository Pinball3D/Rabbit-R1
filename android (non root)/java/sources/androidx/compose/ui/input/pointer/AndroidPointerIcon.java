package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerIcon.android.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/input/pointer/AndroidPointerIcon;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "pointerIcon", "Landroid/view/PointerIcon;", "(Landroid/view/PointerIcon;)V", "getPointerIcon", "()Landroid/view/PointerIcon;", "equals", "", "other", "", "hashCode", "", "toString", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidPointerIcon implements PointerIcon {
    private final android.view.PointerIcon pointerIcon;

    public final android.view.PointerIcon getPointerIcon() {
        return this.pointerIcon;
    }

    public AndroidPointerIcon(android.view.PointerIcon pointerIcon) {
        Intrinsics.checkNotNullParameter(pointerIcon, "pointerIcon");
        this.pointerIcon = pointerIcon;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIcon");
        return Intrinsics.areEqual(this.pointerIcon, ((AndroidPointerIcon) other).pointerIcon);
    }

    public int hashCode() {
        return this.pointerIcon.hashCode();
    }

    public String toString() {
        return "AndroidPointerIcon(pointerIcon=" + this.pointerIcon + ')';
    }
}
