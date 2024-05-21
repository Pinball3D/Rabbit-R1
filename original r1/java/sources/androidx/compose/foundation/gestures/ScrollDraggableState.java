package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.State;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016JB\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152'\u0010\u0016\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0017¢\u0006\u0002\b\u001aH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0012H\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollDraggableState;", "Landroidx/compose/foundation/gestures/DraggableState;", "Landroidx/compose/foundation/gestures/DragScope;", "scrollLogic", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "(Landroidx/compose/runtime/State;)V", "latestScrollScope", "Landroidx/compose/foundation/gestures/ScrollScope;", "getLatestScrollScope", "()Landroidx/compose/foundation/gestures/ScrollScope;", "setLatestScrollScope", "(Landroidx/compose/foundation/gestures/ScrollScope;)V", "getScrollLogic", "()Landroidx/compose/runtime/State;", "dispatchRawDelta", "", "delta", "", "drag", "dragPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dragBy", "pixels", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollDraggableState implements DraggableState, DragScope {
    private ScrollScope latestScrollScope;
    private final State<ScrollingLogic> scrollLogic;

    public final ScrollScope getLatestScrollScope() {
        return this.latestScrollScope;
    }

    public final State<ScrollingLogic> getScrollLogic() {
        return this.scrollLogic;
    }

    public final void setLatestScrollScope(ScrollScope scrollScope) {
        Intrinsics.checkNotNullParameter(scrollScope, "<set-?>");
        this.latestScrollScope = scrollScope;
    }

    public ScrollDraggableState(State<ScrollingLogic> scrollLogic) {
        ScrollScope scrollScope;
        Intrinsics.checkNotNullParameter(scrollLogic, "scrollLogic");
        this.scrollLogic = scrollLogic;
        scrollScope = ScrollableKt.NoOpScrollScope;
        this.latestScrollScope = scrollScope;
    }

    @Override // androidx.compose.foundation.gestures.DragScope
    public void dragBy(float pixels) {
        ScrollingLogic value = this.scrollLogic.getValue();
        value.m345dispatchScroll3eAAhYA(this.latestScrollScope, value.m354toOffsettuRUvjQ(pixels), NestedScrollSource.INSTANCE.m3655getDragWNlRxjI());
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public Object drag(MutatePriority mutatePriority, Function2<? super DragScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object scroll = this.scrollLogic.getValue().getScrollableState().scroll(mutatePriority, new ScrollDraggableState$drag$2(this, function2, null), continuation);
        return scroll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void dispatchRawDelta(float delta) {
        ScrollingLogic value = this.scrollLogic.getValue();
        value.m348performRawScrollMKHz9U(value.m354toOffsettuRUvjQ(delta));
    }
}
