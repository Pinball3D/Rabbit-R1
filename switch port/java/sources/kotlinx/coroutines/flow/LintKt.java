package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.MetricSummary;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Lint.kt */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0001\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010#\n\u0002\b\u0002\u001a\"\u0010\u000b\u001a\u00020\f*\u0006\u0012\u0002\b\u00030\u00022\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000fH\u0007\u001a\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u0013H\u0007\u001am\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132D\b\b\u0010\u0015\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00120\u0002\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0016¢\u0006\u0002\b\u001cH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u001fH\u0007\u001a!\u0010 \u001a\u00020!\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u0013H\u0087Hø\u0001\u0000¢\u0006\u0002\u0010\"\u001a\u001e\u0010#\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u001fH\u0007\u001a&\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\u0006\u0010%\u001a\u00020\u0001H\u0007\u001af\u0010&\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\b\b\u0002\u0010'\u001a\u00020(23\b\n\u0010)\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0*H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010+\u001a\u0082\u0001\u0010,\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132Y\b\b\u0010)\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00120\u0002\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110(¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(.\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0-¢\u0006\u0002\b\u001cH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010/\u001a'\u00100\u001a\b\u0012\u0004\u0012\u0002H\u001201\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u0013H\u0087Hø\u0001\u0000¢\u0006\u0002\u0010\"\u001a/\u00100\u001a\u000202\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\f\u00103\u001a\b\u0012\u0004\u0012\u0002H\u001204H\u0087Hø\u0001\u0000¢\u0006\u0002\u00105\u001a'\u00106\u001a\b\u0012\u0004\u0012\u0002H\u001207\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u0013H\u0087Hø\u0001\u0000¢\u0006\u0002\u0010\"\u001a/\u00106\u001a\u000202\"\u0004\b\u0000\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\f\u00103\u001a\b\u0012\u0004\u0012\u0002H\u001208H\u0087Hø\u0001\u0000¢\u0006\u0002\u00109\"\"\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u00020\b*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\t\u0010\u0004\u001a\u0004\b\u0007\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006:"}, d2 = {"coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/flow/FlowCollector;", "getCoroutineContext$annotations", "(Lkotlinx/coroutines/flow/FlowCollector;)V", "getCoroutineContext", "(Lkotlinx/coroutines/flow/FlowCollector;)Lkotlin/coroutines/CoroutineContext;", "isActive", "", "isActive$annotations", "(Lkotlinx/coroutines/flow/FlowCollector;)Z", "cancel", "", "cause", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cancellable", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/SharedFlow;", "catch", "action", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "conflate", "Lkotlinx/coroutines/flow/StateFlow;", MetricSummary.JsonKeys.COUNT, "", "(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "distinctUntilChanged", "flowOn", "context", "retry", "retries", "", "predicate", "Lkotlin/Function2;", "(Lkotlinx/coroutines/flow/SharedFlow;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "retryWhen", "Lkotlin/Function4;", "attempt", "(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;", "toList", "", "", "destination", "", "(Lkotlinx/coroutines/flow/SharedFlow;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toSet", "", "", "(Lkotlinx/coroutines/flow/SharedFlow;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LintKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "coroutineContext is resolved into the property of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext() instead or specify the receiver of coroutineContext explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext()", imports = {}))
    public static /* synthetic */ void getCoroutineContext$annotations(FlowCollector flowCollector) {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "isActive is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().isActive or cancellable() operator instead or specify the receiver of isActive explicitly. Additionally, flow {} builder emissions are cancellable by default.", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().isActive", imports = {}))
    public static /* synthetic */ void isActive$annotations(FlowCollector flowCollector) {
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'cancellable' to a SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    public static final <T> Flow<T> cancellable(SharedFlow<? extends T> sharedFlow) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'flowOn' to SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    public static final <T> Flow<T> flowOn(SharedFlow<? extends T> sharedFlow, CoroutineContext coroutineContext) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'conflate' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    public static final <T> Flow<T> conflate(StateFlow<? extends T> stateFlow) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'distinctUntilChanged' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    public static final <T> Flow<T> distinctUntilChanged(StateFlow<? extends T> stateFlow) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    public static final boolean isActive(FlowCollector<?> flowCollector) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "cancel() is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().cancel() instead or specify the receiver of cancel() explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().cancel(cause)", imports = {}))
    public static final void cancel(FlowCollector<?> flowCollector, CancellationException cancellationException) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void cancel$default(FlowCollector flowCollector, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        cancel(flowCollector, cancellationException);
    }

    public static final CoroutineContext getCoroutineContext(FlowCollector<?> flowCollector) {
        FlowKt.noImpl();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator typically has not effect, it can only catch exceptions from 'onSubscribe' operator", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    /* renamed from: catch, reason: not valid java name */
    private static final <T> Flow<T> m7243catch(SharedFlow<? extends T> sharedFlow, Function3<? super FlowCollector<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.catch>");
        return FlowKt.m7231catch(sharedFlow, function3);
    }

    static /* synthetic */ Flow retry$default(SharedFlow sharedFlow, long j, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = Long.MAX_VALUE;
        }
        if ((i & 2) != 0) {
            function2 = new LintKt$retry$1(null);
        }
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>");
        return FlowKt.retry(sharedFlow, j, function2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    private static final <T> Flow<T> retry(SharedFlow<? extends T> sharedFlow, long j, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>");
        return FlowKt.retry(sharedFlow, j, function2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    private static final <T> Flow<T> retryWhen(SharedFlow<? extends T> sharedFlow, Function4<? super FlowCollector<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retryWhen>");
        return FlowKt.retryWhen(sharedFlow, function4);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    private static final <T> Object toList(SharedFlow<? extends T> sharedFlow, Continuation<? super List<? extends T>> continuation) {
        Object list$default;
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>");
        InlineMarker.mark(0);
        list$default = FlowKt__CollectionKt.toList$default(sharedFlow, null, continuation, 1, null);
        InlineMarker.mark(1);
        return list$default;
    }

    private static final <T> Object toList(SharedFlow<? extends T> sharedFlow, List<T> list, Continuation<?> continuation) {
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>");
        InlineMarker.mark(0);
        FlowKt.toList(sharedFlow, list, continuation);
        InlineMarker.mark(1);
        throw new IllegalStateException("this code is supposed to be unreachable");
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    private static final <T> Object toSet(SharedFlow<? extends T> sharedFlow, Continuation<? super Set<? extends T>> continuation) {
        Object set$default;
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>");
        InlineMarker.mark(0);
        set$default = FlowKt__CollectionKt.toSet$default(sharedFlow, null, continuation, 1, null);
        InlineMarker.mark(1);
        return set$default;
    }

    private static final <T> Object toSet(SharedFlow<? extends T> sharedFlow, Set<T> set, Continuation<?> continuation) {
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>");
        InlineMarker.mark(0);
        FlowKt.toSet(sharedFlow, set, continuation);
        InlineMarker.mark(1);
        throw new IllegalStateException("this code is supposed to be unreachable");
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    private static final <T> Object count(SharedFlow<? extends T> sharedFlow, Continuation<? super Integer> continuation) {
        Intrinsics.checkNotNull(sharedFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.count>");
        InlineMarker.mark(0);
        Object count = FlowKt.count(sharedFlow, continuation);
        InlineMarker.mark(1);
        return count;
    }
}
