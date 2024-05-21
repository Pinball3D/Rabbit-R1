package kotlinx.coroutines;

import io.sentry.ProfilingTraceData;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.Delay;

/* compiled from: Delay.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\ba\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/DelayWithTimeoutDiagnostics;", "Lkotlinx/coroutines/Delay;", "timeoutMessage", "", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "Lkotlin/time/Duration;", "timeoutMessage-LRDsOJo", "(J)Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface DelayWithTimeoutDiagnostics extends Delay {
    /* renamed from: timeoutMessage-LRDsOJo, reason: not valid java name */
    String m7190timeoutMessageLRDsOJo(long timeout);

    /* compiled from: Delay.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        public static Object delay(DelayWithTimeoutDiagnostics delayWithTimeoutDiagnostics, long j, Continuation<? super Unit> continuation) {
            Object delay = Delay.DefaultImpls.delay(delayWithTimeoutDiagnostics, j, continuation);
            return delay == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? delay : Unit.INSTANCE;
        }

        public static DisposableHandle invokeOnTimeout(DelayWithTimeoutDiagnostics delayWithTimeoutDiagnostics, long j, Runnable runnable, CoroutineContext coroutineContext) {
            return Delay.DefaultImpls.invokeOnTimeout(delayWithTimeoutDiagnostics, j, runnable, coroutineContext);
        }
    }
}
