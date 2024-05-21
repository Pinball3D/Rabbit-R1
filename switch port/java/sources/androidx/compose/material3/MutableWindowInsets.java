package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchBar.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R+\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0003¨\u0006\u0014"}, d2 = {"Landroidx/compose/material3/MutableWindowInsets;", "Landroidx/compose/foundation/layout/WindowInsets;", "initialInsets", "(Landroidx/compose/foundation/layout/WindowInsets;)V", "<set-?>", "insets", "getInsets", "()Landroidx/compose/foundation/layout/WindowInsets;", "setInsets", "insets$delegate", "Landroidx/compose/runtime/MutableState;", "getBottom", "", "density", "Landroidx/compose/ui/unit/Density;", "getLeft", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getRight", "getTop", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class MutableWindowInsets implements WindowInsets {

    /* renamed from: insets$delegate, reason: from kotlin metadata */
    private final MutableState insets;

    /* JADX WARN: Multi-variable type inference failed */
    public MutableWindowInsets() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public MutableWindowInsets(WindowInsets initialInsets) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(initialInsets, "initialInsets");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(initialInsets, null, 2, null);
        this.insets = mutableStateOf$default;
    }

    public /* synthetic */ MutableWindowInsets(WindowInsets windowInsets, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? WindowInsetsKt.WindowInsets(0, 0, 0, 0) : windowInsets);
    }

    public final WindowInsets getInsets() {
        return (WindowInsets) this.insets.getValue();
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return getInsets().getLeft(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return getInsets().getTop(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return getInsets().getRight(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return getInsets().getBottom(density);
    }

    public final void setInsets(WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsets, "<set-?>");
        this.insets.setValue(windowInsets);
    }
}
