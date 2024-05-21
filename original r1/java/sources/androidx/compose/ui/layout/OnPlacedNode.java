package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OnPlacedModifier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0005H\u0016R&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007¨\u0006\r"}, d2 = {"Landroidx/compose/ui/layout/OnPlacedNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "callback", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "", "(Lkotlin/jvm/functions/Function1;)V", "getCallback", "()Lkotlin/jvm/functions/Function1;", "setCallback", "onPlaced", "coordinates", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class OnPlacedNode extends Modifier.Node implements LayoutAwareModifierNode {
    private Function1<? super LayoutCoordinates, Unit> callback;

    public final Function1<LayoutCoordinates, Unit> getCallback() {
        return this.callback;
    }

    public final void setCallback(Function1<? super LayoutCoordinates, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.callback = function1;
    }

    public OnPlacedNode(Function1<? super LayoutCoordinates, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public void onPlaced(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.callback.invoke(coordinates);
    }
}
