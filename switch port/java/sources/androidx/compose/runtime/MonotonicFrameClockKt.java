package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MonotonicFrameClock.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a:\u0010\u0007\u001a\u0002H\b\"\u0004\b\u0000\u0010\b2!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\b0\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a:\u0010\u0010\u001a\u0002H\b\"\u0004\b\u0000\u0010\b2!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u0002H\b0\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a@\u0010\u0007\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\u00020\u00012#\b\u0004\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\b0\nH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0012\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"monotonicFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;", "Lkotlin/coroutines/CoroutineContext;", "getMonotonicFrameClock$annotations", "(Lkotlin/coroutines/CoroutineContext;)V", "getMonotonicFrameClock", "(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;", "withFrameMillis", "R", "onFrame", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "frameTimeMillis", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withFrameNanos", "frameTimeNanos", "(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MonotonicFrameClockKt {
    public static /* synthetic */ void getMonotonicFrameClock$annotations(CoroutineContext coroutineContext) {
    }

    public static final <R> Object withFrameMillis(MonotonicFrameClock monotonicFrameClock, Function1<? super Long, ? extends R> function1, Continuation<? super R> continuation) {
        return monotonicFrameClock.withFrameNanos(new MonotonicFrameClockKt$withFrameMillis$2(function1), continuation);
    }

    private static final <R> Object withFrameMillis$$forInline(MonotonicFrameClock monotonicFrameClock, Function1<? super Long, ? extends R> function1, Continuation<? super R> continuation) {
        MonotonicFrameClockKt$withFrameMillis$2 monotonicFrameClockKt$withFrameMillis$2 = new MonotonicFrameClockKt$withFrameMillis$2(function1);
        InlineMarker.mark(0);
        Object withFrameNanos = monotonicFrameClock.withFrameNanos(monotonicFrameClockKt$withFrameMillis$2, continuation);
        InlineMarker.mark(1);
        return withFrameNanos;
    }

    public static final <R> Object withFrameNanos(Function1<? super Long, ? extends R> function1, Continuation<? super R> continuation) {
        return getMonotonicFrameClock(continuation.getContext()).withFrameNanos(function1, continuation);
    }

    public static final <R> Object withFrameMillis(Function1<? super Long, ? extends R> function1, Continuation<? super R> continuation) {
        return getMonotonicFrameClock(continuation.getContext()).withFrameNanos(new MonotonicFrameClockKt$withFrameMillis$2(function1), continuation);
    }

    public static final MonotonicFrameClock getMonotonicFrameClock(CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(coroutineContext, "<this>");
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(MonotonicFrameClock.INSTANCE);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        throw new IllegalStateException("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.".toString());
    }
}
