package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsPadding.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0003\u0018\u00002\u00020\u0001B&\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¢\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/layout/UnionInsetsConsumingModifier;", "Landroidx/compose/foundation/layout/InsetsConsumingModifier;", "insets", "Landroidx/compose/foundation/layout/WindowInsets;", "inspectorInfo", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;)V", "calculateInsets", "modifierLocalInsets", "equals", "", "other", "", "hashCode", "", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UnionInsetsConsumingModifier extends InsetsConsumingModifier {
    private final WindowInsets insets;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnionInsetsConsumingModifier(WindowInsets insets, Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo, null);
        Intrinsics.checkNotNullParameter(insets, "insets");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.insets = insets;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifier
    public WindowInsets calculateInsets(WindowInsets modifierLocalInsets) {
        Intrinsics.checkNotNullParameter(modifierLocalInsets, "modifierLocalInsets");
        return WindowInsetsKt.union(this.insets, modifierLocalInsets);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof UnionInsetsConsumingModifier) {
            return Intrinsics.areEqual(((UnionInsetsConsumingModifier) other).insets, this.insets);
        }
        return false;
    }

    public int hashCode() {
        return this.insets.hashCode();
    }
}
