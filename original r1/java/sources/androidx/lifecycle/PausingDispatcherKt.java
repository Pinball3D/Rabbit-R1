package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* compiled from: PausingDispatcher.kt */
@Metadata(d1 = {"\u00000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aD\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\t\u001aD\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\n2'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001aD\u0010\f\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\t\u001aD\u0010\f\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\n2'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001aD\u0010\r\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\t\u001aD\u0010\r\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\n2'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001aL\u0010\u000e\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102'\u0010\u0003\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"whenCreated", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/Lifecycle;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whenResumed", "whenStarted", "whenStateAtLeast", "minState", "Landroidx/lifecycle/Lifecycle$State;", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lifecycle-common"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PausingDispatcherKt {
    @Deprecated(message = "whenCreated has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withCreated for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenCreated(LifecycleOwner lifecycleOwner, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return whenCreated(lifecycleOwner.getLifecycle(), function2, continuation);
    }

    @Deprecated(message = "whenCreated has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withCreated for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenCreated(Lifecycle lifecycle, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.CREATED, function2, continuation);
    }

    @Deprecated(message = "whenStarted has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withStarted for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenStarted(LifecycleOwner lifecycleOwner, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return whenStarted(lifecycleOwner.getLifecycle(), function2, continuation);
    }

    @Deprecated(message = "whenStarted has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withStarted for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenStarted(Lifecycle lifecycle, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.STARTED, function2, continuation);
    }

    @Deprecated(message = "whenResumed has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withResumed for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenResumed(LifecycleOwner lifecycleOwner, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return whenResumed(lifecycleOwner.getLifecycle(), function2, continuation);
    }

    @Deprecated(message = "whenResumed has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withResumed for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenResumed(Lifecycle lifecycle, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.RESUMED, function2, continuation);
    }

    @Deprecated(message = "whenStateAtLeast has been deprecated because it runs the block on a pausing dispatcher that suspends, rather than cancels work when the lifecycle state goes below the given state. Use withStateAtLeast for non-suspending work that needs to run only once when the Lifecycle changes.")
    public static final <T> Object whenStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return BuildersKt.withContext(Dispatchers.getMain().getImmediate(), new PausingDispatcherKt$whenStateAtLeast$2(lifecycle, state, function2, null), continuation);
    }
}
