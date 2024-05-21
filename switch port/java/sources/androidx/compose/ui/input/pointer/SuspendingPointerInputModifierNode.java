package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.PointerInputModifierNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* compiled from: SuspendingPointerInputFilter.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001J\b\u0010\r\u001a\u00020\u0006H&R<\u0010\u0002\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bX¦\u000eø\u0001\u0000¢\u0006\f\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f\u0082\u0001\u0001\u000eø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "pointerInputHandler", "Lkotlin/Function2;", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "getPointerInputHandler", "()Lkotlin/jvm/functions/Function2;", "setPointerInputHandler", "(Lkotlin/jvm/functions/Function2;)V", "resetPointerInputHandler", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SuspendingPointerInputModifierNode extends PointerInputModifierNode {
    Function2<PointerInputScope, Continuation<? super Unit>, Object> getPointerInputHandler();

    void resetPointerInputHandler();

    void setPointerInputHandler(Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> function2);
}
