package kotlinx.coroutines.time;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.ProfilingTraceData;
import java.time.Duration;
import java.time.temporal.ChronoUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.selects.OnTimeoutKt;
import kotlinx.coroutines.selects.SelectBuilder;

/* compiled from: Time.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0019\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001aU\u0010\u0005\u001a\u0002H\u0006\"\u0004\b\u0000\u0010\u00062\u0006\u0010\u0002\u001a\u00020\u00032'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010\r\u001aJ\u0010\u000e\u001a\u0004\u0018\u0001H\u0006\"\u0004\b\u0000\u0010\u00062\u0006\u0010\u0002\u001a\u00020\u00032'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\r\u001a\f\u0010\u000f\u001a\u00020\u0010*\u00020\u0003H\u0002\u001a&\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0012\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0007\u001aD\u0010\u0014\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0015*\b\u0012\u0004\u0012\u0002H\u00150\u00162\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00150\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0017ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001a&\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0012\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0003H\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"delay", "", "duration", "Ljava/time/Duration;", "(Ljava/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTimeout", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Ljava/time/Duration;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTimeoutOrNull", "coerceToMillis", "", "debounce", "Lkotlinx/coroutines/flow/Flow;", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "onTimeout", "R", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlin/Function1;", "(Lkotlinx/coroutines/selects/SelectBuilder;Ljava/time/Duration;Lkotlin/jvm/functions/Function1;)V", "sample", "period", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TimeKt {
    public static final Object delay(Duration duration, Continuation<? super Unit> continuation) {
        Object delay = DelayKt.delay(coerceToMillis(duration), continuation);
        return delay == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? delay : Unit.INSTANCE;
    }

    public static final <T> Flow<T> debounce(Flow<? extends T> flow, Duration duration) {
        return FlowKt.debounce(flow, coerceToMillis(duration));
    }

    public static final <T> Flow<T> sample(Flow<? extends T> flow, Duration duration) {
        return FlowKt.sample(flow, coerceToMillis(duration));
    }

    public static final <R> void onTimeout(SelectBuilder<? super R> selectBuilder, Duration duration, Function1<? super Continuation<? super R>, ? extends Object> function1) {
        OnTimeoutKt.onTimeout(selectBuilder, coerceToMillis(duration), function1);
    }

    public static final <T> Object withTimeout(Duration duration, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return TimeoutKt.withTimeout(coerceToMillis(duration), function2, continuation);
    }

    public static final <T> Object withTimeoutOrNull(Duration duration, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return TimeoutKt.withTimeoutOrNull(coerceToMillis(duration), function2, continuation);
    }

    private static final long coerceToMillis(Duration duration) {
        if (duration.compareTo(Duration.ZERO) <= 0) {
            return 0L;
        }
        if (duration.compareTo(ChronoUnit.MILLIS.getDuration()) <= 0) {
            return 1L;
        }
        if (duration.getSeconds() < 9223372036854775L || (duration.getSeconds() == 9223372036854775L && duration.getNano() < 807000000)) {
            return duration.toMillis();
        }
        return Long.MAX_VALUE;
    }
}
