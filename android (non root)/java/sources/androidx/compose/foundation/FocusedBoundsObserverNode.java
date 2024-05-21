package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalModifierNodeKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusedBounds.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003B\u001b\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0007J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0096\u0002R(\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007R$\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\tR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/FocusedBoundsObserverNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "", "onPositioned", "(Lkotlin/jvm/functions/Function1;)V", "getOnPositioned", "()Lkotlin/jvm/functions/Function1;", "setOnPositioned", "parent", "getParent", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", "invoke", "focusedBounds", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class FocusedBoundsObserverNode extends Modifier.Node implements ModifierLocalModifierNode, Function1<LayoutCoordinates, Unit> {
    private Function1<? super LayoutCoordinates, Unit> onPositioned;
    private final ModifierLocalMap providedValues;

    public final Function1<LayoutCoordinates, Unit> getOnPositioned() {
        return this.onPositioned;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public ModifierLocalMap getProvidedValues() {
        return this.providedValues;
    }

    public final void setOnPositioned(Function1<? super LayoutCoordinates, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onPositioned = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
        invoke2(layoutCoordinates);
        return Unit.INSTANCE;
    }

    public FocusedBoundsObserverNode(Function1<? super LayoutCoordinates, Unit> onPositioned) {
        Intrinsics.checkNotNullParameter(onPositioned, "onPositioned");
        this.onPositioned = onPositioned;
        this.providedValues = ModifierLocalModifierNodeKt.modifierLocalMapOf(TuplesKt.to(FocusedBoundsKt.getModifierLocalFocusedBoundsObserver(), this));
    }

    private final Function1<LayoutCoordinates, Unit> getParent() {
        if (getIsAttached()) {
            return (Function1) getCurrent(FocusedBoundsKt.getModifierLocalFocusedBoundsObserver());
        }
        return null;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(LayoutCoordinates focusedBounds) {
        if (getIsAttached()) {
            this.onPositioned.invoke(focusedBounds);
            Function1<LayoutCoordinates, Unit> parent = getParent();
            if (parent != null) {
                parent.invoke(focusedBounds);
            }
        }
    }
}
