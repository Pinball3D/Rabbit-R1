package androidx.compose.ui.input.rotary;

import androidx.compose.ui.Modifier;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RotaryInputModifier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0005H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\f¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/input/rotary/RotaryInputNode;", "Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "onEvent", "Lkotlin/Function1;", "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "", "onPreEvent", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "getOnEvent", "()Lkotlin/jvm/functions/Function1;", "setOnEvent", "(Lkotlin/jvm/functions/Function1;)V", "getOnPreEvent", "setOnPreEvent", "onPreRotaryScrollEvent", NotificationCompat.CATEGORY_EVENT, "onRotaryScrollEvent", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class RotaryInputNode extends Modifier.Node implements RotaryInputModifierNode {
    private Function1<? super RotaryScrollEvent, Boolean> onEvent;
    private Function1<? super RotaryScrollEvent, Boolean> onPreEvent;

    public final Function1<RotaryScrollEvent, Boolean> getOnEvent() {
        return this.onEvent;
    }

    public final Function1<RotaryScrollEvent, Boolean> getOnPreEvent() {
        return this.onPreEvent;
    }

    public final void setOnEvent(Function1<? super RotaryScrollEvent, Boolean> function1) {
        this.onEvent = function1;
    }

    public final void setOnPreEvent(Function1<? super RotaryScrollEvent, Boolean> function1) {
        this.onPreEvent = function1;
    }

    public RotaryInputNode(Function1<? super RotaryScrollEvent, Boolean> function1, Function1<? super RotaryScrollEvent, Boolean> function12) {
        this.onEvent = function1;
        this.onPreEvent = function12;
    }

    @Override // androidx.compose.ui.input.rotary.RotaryInputModifierNode
    public boolean onRotaryScrollEvent(RotaryScrollEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Function1<? super RotaryScrollEvent, Boolean> function1 = this.onEvent;
        if (function1 != null) {
            return function1.invoke(event).booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.input.rotary.RotaryInputModifierNode
    public boolean onPreRotaryScrollEvent(RotaryScrollEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Function1<? super RotaryScrollEvent, Boolean> function1 = this.onPreEvent;
        if (function1 != null) {
            return function1.invoke(event).booleanValue();
        }
        return false;
    }
}
