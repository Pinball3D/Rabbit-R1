package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WindowInsets.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\b\u0010\u001f\u001a\u00020\u0005H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR+\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00038@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006 "}, d2 = {"Landroidx/compose/foundation/layout/ValueInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Landroidx/compose/foundation/layout/InsetsValues;", "name", "", "(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "<set-?>", "value", "getValue$foundation_layout_release", "()Landroidx/compose/foundation/layout/InsetsValues;", "setValue$foundation_layout_release", "(Landroidx/compose/foundation/layout/InsetsValues;)V", "value$delegate", "Landroidx/compose/runtime/MutableState;", "equals", "", "other", "", "getBottom", "", "density", "Landroidx/compose/ui/unit/Density;", "getLeft", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getRight", "getTop", "hashCode", "toString", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ValueInsets implements WindowInsets {
    private final String name;

    /* renamed from: value$delegate, reason: from kotlin metadata */
    private final MutableState value;

    public final String getName() {
        return this.name;
    }

    public ValueInsets(InsetsValues insets, String name) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(insets, "insets");
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(insets, null, 2, null);
        this.value = mutableStateOf$default;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InsetsValues getValue$foundation_layout_release() {
        return (InsetsValues) this.value.getValue();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return getValue$foundation_layout_release().getLeft();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return getValue$foundation_layout_release().getTop();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return getValue$foundation_layout_release().getRight();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return getValue$foundation_layout_release().getBottom();
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof ValueInsets) {
            return Intrinsics.areEqual(getValue$foundation_layout_release(), ((ValueInsets) other).getValue$foundation_layout_release());
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return this.name + "(left=" + getValue$foundation_layout_release().getLeft() + ", top=" + getValue$foundation_layout_release().getTop() + ", right=" + getValue$foundation_layout_release().getRight() + ", bottom=" + getValue$foundation_layout_release().getBottom() + ')';
    }

    public final void setValue$foundation_layout_release(InsetsValues insetsValues) {
        Intrinsics.checkNotNullParameter(insetsValues, "<set-?>");
        this.value.setValue(insetsValues);
    }
}
