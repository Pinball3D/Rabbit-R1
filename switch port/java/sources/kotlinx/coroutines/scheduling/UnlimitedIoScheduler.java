package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: Dispatcher.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\bj\u0002`\tH\u0016J\u001c\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\bj\u0002`\tH\u0017J\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0017¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatchYield", "limitedParallelism", "parallelism", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
final class UnlimitedIoScheduler extends CoroutineDispatcher {
    public static final UnlimitedIoScheduler INSTANCE = new UnlimitedIoScheduler();

    private UnlimitedIoScheduler() {
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(CoroutineContext context, Runnable block) {
        DefaultScheduler.INSTANCE.dispatchWithContext$kotlinx_coroutines_core(block, TasksKt.BlockingContext, true);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: dispatch */
    public void mo7257dispatch(CoroutineContext context, Runnable block) {
        DefaultScheduler.INSTANCE.dispatchWithContext$kotlinx_coroutines_core(block, TasksKt.BlockingContext, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public CoroutineDispatcher limitedParallelism(int parallelism) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        return parallelism >= TasksKt.MAX_POOL_SIZE ? this : super.limitedParallelism(parallelism);
    }
}
