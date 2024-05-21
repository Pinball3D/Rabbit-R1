package tech.rabbit.r1launcher.extensions;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.FlowExtKt;
import androidx.lifecycle.LifecycleOwner;
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

/* compiled from: CoroutinesExtensions.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt$collect$1", f = "CoroutinesExtensions.kt", i = {}, l = {13}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class CoroutinesExtensionsKt$collect$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<T, Continuation<? super Unit>, Object> $action;
    final /* synthetic */ Flow<T> $flow;
    final /* synthetic */ LifecycleOwner $this_collect;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutinesExtensionsKt$collect$1(Flow<? extends T> flow, LifecycleOwner lifecycleOwner, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super CoroutinesExtensionsKt$collect$1> continuation) {
        super(2, continuation);
        this.$flow = flow;
        this.$this_collect = lifecycleOwner;
        this.$action = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CoroutinesExtensionsKt$collect$1(this.$flow, this.$this_collect, this.$action, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CoroutinesExtensionsKt$collect$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow flowWithLifecycle$default = FlowExtKt.flowWithLifecycle$default(this.$flow, this.$this_collect.getLifecycle(), null, 2, null);
            final Function2<T, Continuation<? super Unit>, Object> function2 = this.$action;
            this.label = 1;
            if (flowWithLifecycle$default.collect(new FlowCollector() { // from class: tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt$collect$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(T t, Continuation<? super Unit> continuation) {
                    Object invoke = function2.invoke(t, continuation);
                    return invoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? invoke : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
