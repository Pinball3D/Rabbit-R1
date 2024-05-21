package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: RepeatOnLifecycle.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aF\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006¢\u0006\u0002\b\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001aF\u0010\u0000\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00042'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006¢\u0006\u0002\b\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"repeatOnLifecycle", "", "Landroidx/lifecycle/Lifecycle;", SentryThread.JsonKeys.STATE, "Landroidx/lifecycle/Lifecycle$State;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RepeatOnLifecycleKt {
    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        if (state == Lifecycle.State.INITIALIZED) {
            throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.".toString());
        }
        if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
            return Unit.INSTANCE;
        }
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, function2, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object repeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, function2, continuation);
        return repeatOnLifecycle == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? repeatOnLifecycle : Unit.INSTANCE;
    }
}
