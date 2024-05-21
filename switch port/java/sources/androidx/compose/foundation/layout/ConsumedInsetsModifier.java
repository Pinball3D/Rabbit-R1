package androidx.compose.foundation.layout;

import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsPadding.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B2\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\t¢\u0006\u0002\u0010\nJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/layout/ConsumedInsetsModifier;", "Landroidx/compose/ui/platform/InspectorValueInfo;", "Landroidx/compose/ui/modifier/ModifierLocalConsumer;", "block", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/WindowInsets;", "", "inspectorInfo", "Landroidx/compose/ui/platform/InspectorInfo;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "oldWindowInsets", "equals", "", "other", "", "hashCode", "", "onModifierLocalsUpdated", "scope", "Landroidx/compose/ui/modifier/ModifierLocalReadScope;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ConsumedInsetsModifier extends InspectorValueInfo implements ModifierLocalConsumer {
    private final Function1<WindowInsets, Unit> block;
    private WindowInsets oldWindowInsets;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConsumedInsetsModifier(Function1<? super WindowInsets, Unit> block, Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.block = block;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof ConsumedInsetsModifier) {
            return Intrinsics.areEqual(((ConsumedInsetsModifier) other).block, this.block);
        }
        return false;
    }

    public int hashCode() {
        return this.block.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        WindowInsets windowInsets = (WindowInsets) scope.getCurrent(WindowInsetsPaddingKt.getModifierLocalConsumedWindowInsets());
        if (Intrinsics.areEqual(windowInsets, this.oldWindowInsets)) {
            return;
        }
        this.oldWindowInsets = windowInsets;
        this.block.invoke(windowInsets);
    }
}
