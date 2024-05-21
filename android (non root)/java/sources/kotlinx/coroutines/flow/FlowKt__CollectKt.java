package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.NopCollector;

/* compiled from: Collect.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0003\u001aV\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u000223\b\u0004\u0010\u0005\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006H\u0087Hø\u0001\u0000¢\u0006\u0002\u0010\f\u001ak\u0010\r\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00022H\b\u0004\u0010\u0005\u001aB\b\u0001\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u000eH\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001aT\u0010\u0012\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u000221\u0010\u0005\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\f\u001a/\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0002H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a\u001e\u0010\u0017\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00022\u0006\u0010\u0019\u001a\u00020\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"collect", "", "Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectIndexed", "Lkotlin/Function3;", "", "index", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectLatest", "emitAll", "Lkotlinx/coroutines/flow/FlowCollector;", "flow", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launchIn", "Lkotlinx/coroutines/Job;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3.dex */
public final /* synthetic */ class FlowKt__CollectKt {
    public static final Object collect(Flow<?> flow, Continuation<? super Unit> continuation) {
        Object collect = flow.collect(NopCollector.INSTANCE, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    public static final <T> Job launchIn(Flow<? extends T> flow, CoroutineScope coroutineScope) {
        Job launch$default;
        launch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new FlowKt__CollectKt$launchIn$1(flow, null), 3, null);
        return launch$default;
    }

    public static final <T> Object collectIndexed(Flow<? extends T> flow, Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        Object collect = flow.collect(new FlowKt__CollectKt$collectIndexed$2(function3), continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    private static final <T> Object collectIndexed$$forInline(Flow<? extends T> flow, Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        FlowKt__CollectKt$collectIndexed$2 flowKt__CollectKt$collectIndexed$2 = new FlowKt__CollectKt$collectIndexed$2(function3);
        InlineMarker.mark(0);
        flow.collect(flowKt__CollectKt$collectIndexed$2, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }

    public static final <T> Object collectLatest(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Flow buffer$default;
        buffer$default = FlowKt__ContextKt.buffer$default(FlowKt.mapLatest(flow, function2), 0, null, 2, null);
        Object collect = FlowKt.collect(buffer$default, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, Flow<? extends T> flow, Continuation<? super Unit> continuation) {
        FlowKt.ensureActive(flowCollector);
        Object collect = flow.collect(flowCollector, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Backwards compatibility with JS and K/N")
    public static final /* synthetic */ <T> Object collect(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object collect = flow.collect(new FlowKt__CollectKt$collect$3(function2), continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Backwards compatibility with JS and K/N")
    private static final /* synthetic */ <T> Object collect$$forInline(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        FlowKt__CollectKt$collect$3 flowKt__CollectKt$collect$3 = new FlowKt__CollectKt$collect$3(function2);
        InlineMarker.mark(0);
        flow.collect(flowKt__CollectKt$collect$3, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
