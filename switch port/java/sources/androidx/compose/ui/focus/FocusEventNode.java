package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusEventModifier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007¨\u0006\f"}, d2 = {"Landroidx/compose/ui/focus/FocusEventNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "onFocusEvent", "Lkotlin/Function1;", "Landroidx/compose/ui/focus/FocusState;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnFocusEvent", "()Lkotlin/jvm/functions/Function1;", "setOnFocusEvent", "focusState", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class FocusEventNode extends Modifier.Node implements FocusEventModifierNode {
    private Function1<? super FocusState, Unit> onFocusEvent;

    public final Function1<FocusState, Unit> getOnFocusEvent() {
        return this.onFocusEvent;
    }

    public final void setOnFocusEvent(Function1<? super FocusState, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onFocusEvent = function1;
    }

    public FocusEventNode(Function1<? super FocusState, Unit> onFocusEvent) {
        Intrinsics.checkNotNullParameter(onFocusEvent, "onFocusEvent");
        this.onFocusEvent = onFocusEvent;
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        Intrinsics.checkNotNullParameter(focusState, "focusState");
        this.onFocusEvent.invoke(focusState);
    }
}
