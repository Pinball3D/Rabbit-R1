package androidx.compose.material3;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: Slider.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0004H\u0016JB\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192'\u0010\u001a\u001a#\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001b¢\u0006\u0002\b\u001eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001fR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Landroidx/compose/material3/SliderDraggableState;", "Landroidx/compose/foundation/gestures/DraggableState;", "onDelta", "Lkotlin/Function1;", "", "", "(Lkotlin/jvm/functions/Function1;)V", "dragScope", "Landroidx/compose/foundation/gestures/DragScope;", "<set-?>", "", "isDragging", "()Z", "setDragging", "(Z)V", "isDragging$delegate", "Landroidx/compose/runtime/MutableState;", "getOnDelta", "()Lkotlin/jvm/functions/Function1;", "scrollMutex", "Landroidx/compose/foundation/MutatorMutex;", "dispatchRawDelta", "delta", "drag", "dragPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class SliderDraggableState implements DraggableState {
    private final DragScope dragScope;

    /* renamed from: isDragging$delegate, reason: from kotlin metadata */
    private final MutableState isDragging;
    private final Function1<Float, Unit> onDelta;
    private final MutatorMutex scrollMutex;

    public final Function1<Float, Unit> getOnDelta() {
        return this.onDelta;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SliderDraggableState(Function1<? super Float, Unit> onDelta) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(onDelta, "onDelta");
        this.onDelta = onDelta;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.isDragging = mutableStateOf$default;
        this.dragScope = new DragScope() { // from class: androidx.compose.material3.SliderDraggableState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public void dragBy(float pixels) {
                SliderDraggableState.this.getOnDelta().invoke(Float.valueOf(pixels));
            }
        };
        this.scrollMutex = new MutatorMutex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDragging(boolean z) {
        this.isDragging.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isDragging() {
        return ((Boolean) this.isDragging.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public Object drag(MutatePriority mutatePriority, Function2<? super DragScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new SliderDraggableState$drag$2(this, mutatePriority, function2, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void dispatchRawDelta(float delta) {
        this.onDelta.invoke(Float.valueOf(delta));
    }
}
