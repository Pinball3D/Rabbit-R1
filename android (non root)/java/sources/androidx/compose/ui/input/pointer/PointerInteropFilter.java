package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerInteropFilter.android.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R(\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInteropFilter;", "Landroidx/compose/ui/input/pointer/PointerInputModifier;", "()V", "disallowIntercept", "", "getDisallowIntercept$ui_release", "()Z", "setDisallowIntercept$ui_release", "(Z)V", "onTouchEvent", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "getOnTouchEvent", "()Lkotlin/jvm/functions/Function1;", "setOnTouchEvent", "(Lkotlin/jvm/functions/Function1;)V", "pointerInputFilter", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "getPointerInputFilter", "()Landroidx/compose/ui/input/pointer/PointerInputFilter;", "value", "Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;", "requestDisallowInterceptTouchEvent", "getRequestDisallowInterceptTouchEvent", "()Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;", "setRequestDisallowInterceptTouchEvent", "(Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;)V", "DispatchToViewState", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInteropFilter implements PointerInputModifier {
    private boolean disallowIntercept;
    public Function1<? super MotionEvent, Boolean> onTouchEvent;
    private final PointerInputFilter pointerInputFilter = new PointerInteropFilter$pointerInputFilter$1(this);
    private RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PointerInteropFilter.android.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;", "", "(Ljava/lang/String;I)V", "Unknown", "Dispatching", "NotDispatching", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public enum DispatchToViewState {
        Unknown,
        Dispatching,
        NotDispatching
    }

    /* renamed from: getDisallowIntercept$ui_release, reason: from getter */
    public final boolean getDisallowIntercept() {
        return this.disallowIntercept;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputModifier
    public PointerInputFilter getPointerInputFilter() {
        return this.pointerInputFilter;
    }

    public final RequestDisallowInterceptTouchEvent getRequestDisallowInterceptTouchEvent() {
        return this.requestDisallowInterceptTouchEvent;
    }

    public final void setDisallowIntercept$ui_release(boolean z) {
        this.disallowIntercept = z;
    }

    public final void setOnTouchEvent(Function1<? super MotionEvent, Boolean> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onTouchEvent = function1;
    }

    public final Function1<MotionEvent, Boolean> getOnTouchEvent() {
        Function1 function1 = this.onTouchEvent;
        if (function1 != null) {
            return function1;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onTouchEvent");
        return null;
    }

    public final void setRequestDisallowInterceptTouchEvent(RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent) {
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent2 = this.requestDisallowInterceptTouchEvent;
        if (requestDisallowInterceptTouchEvent2 != null) {
            requestDisallowInterceptTouchEvent2.setPointerInteropFilter$ui_release(null);
        }
        this.requestDisallowInterceptTouchEvent = requestDisallowInterceptTouchEvent;
        if (requestDisallowInterceptTouchEvent == null) {
            return;
        }
        requestDisallowInterceptTouchEvent.setPointerInteropFilter$ui_release(this);
    }
}
