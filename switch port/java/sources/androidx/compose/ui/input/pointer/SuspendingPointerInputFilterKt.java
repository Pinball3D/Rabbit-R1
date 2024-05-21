package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SuspendingPointerInputFilter.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0003\u001a7\u0010\u0006\u001a\u00020\u00072'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\t¢\u0006\u0002\b\u000eø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001aO\u0010\u0010\u001a\u00020\u0011*\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\r2'\u0010\u0014\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\t¢\u0006\u0002\b\u000eø\u0001\u0000¢\u0006\u0002\u0010\u0015\u001aE\u0010\u0010\u001a\u00020\u0011*\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\r2'\u0010\u0014\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\t¢\u0006\u0002\b\u000eø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001aS\u0010\u0010\u001a\u00020\u0011*\u00020\u00112\u0016\u0010\u0017\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\r0\u0018\"\u0004\u0018\u00010\r2'\u0010\u0014\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\t¢\u0006\u0002\b\u000eø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a=\u0010\u0010\u001a\u00020\u0011*\u00020\u00112'\u0010\u0014\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\t¢\u0006\u0002\b\u000eH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"EmptyPointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "PointerInputModifierNoParamError", "", "getPointerInputModifierNoParamError$annotations", "()V", "SuspendingPointerInputModifierNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "pointerInputHandler", "Lkotlin/Function2;", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "pointerInput", "Landroidx/compose/ui/Modifier;", "key1", "key2", "block", "(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;", "keys", "", "(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuspendingPointerInputFilterKt {
    private static final PointerEvent EmptyPointerEvent = new PointerEvent(CollectionsKt.emptyList());
    private static final String PointerInputModifierNoParamError = "Modifier.pointerInput must provide one or more 'key' parameters that define the identity of the modifier and determine when its previous input processing coroutine should be cancelled and a new effect launched for the new key.";

    private static /* synthetic */ void getPointerInputModifierNoParamError$annotations() {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = PointerInputModifierNoParamError)
    public static final Modifier pointerInput(Modifier modifier, Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        throw new IllegalStateException(PointerInputModifierNoParamError.toString());
    }

    public static final Modifier pointerInput(Modifier modifier, Object obj, Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return modifier.then(new SuspendPointerInputElement(obj, null, null, block, 6, null));
    }

    public static final Modifier pointerInput(Modifier modifier, Object obj, Object obj2, Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return modifier.then(new SuspendPointerInputElement(obj, obj2, null, block, 4, null));
    }

    public static final Modifier pointerInput(Modifier modifier, Object[] keys, Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(block, "block");
        return modifier.then(new SuspendPointerInputElement(null, null, keys, block, 3, null));
    }

    public static final SuspendingPointerInputModifierNode SuspendingPointerInputModifierNode(Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object> pointerInputHandler) {
        Intrinsics.checkNotNullParameter(pointerInputHandler, "pointerInputHandler");
        return new SuspendingPointerInputModifierNodeImpl(pointerInputHandler);
    }
}
