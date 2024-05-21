package androidx.window.java.layout;

import androidx.core.util.Consumer;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: WindowInfoTrackerCallbackAdapter.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.window.java.layout.WindowInfoTrackerCallbackAdapter$addListener$1$1", f = "WindowInfoTrackerCallbackAdapter.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
final class WindowInfoTrackerCallbackAdapter$addListener$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Consumer<T> $consumer;
    final /* synthetic */ Flow<T> $flow;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WindowInfoTrackerCallbackAdapter$addListener$1$1(Flow<? extends T> flow, Consumer<T> consumer, Continuation<? super WindowInfoTrackerCallbackAdapter$addListener$1$1> continuation) {
        super(2, continuation);
        this.$flow = flow;
        this.$consumer = consumer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WindowInfoTrackerCallbackAdapter$addListener$1$1(this.$flow, this.$consumer, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((WindowInfoTrackerCallbackAdapter$addListener$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow<T> flow = this.$flow;
            final Consumer<T> consumer = this.$consumer;
            this.label = 1;
            if (flow.collect(new FlowCollector<T>() { // from class: androidx.window.java.layout.WindowInfoTrackerCallbackAdapter$addListener$1$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(T t, Continuation<? super Unit> continuation) {
                    Consumer.this.accept(t);
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
