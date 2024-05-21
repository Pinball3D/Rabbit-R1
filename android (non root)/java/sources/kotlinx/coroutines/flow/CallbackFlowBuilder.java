package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002BU\u0012-\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000fø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0094@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014R:\u0010\u0003\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\tX\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/flow/CallbackFlowBuilder;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/ChannelFlowBuilder;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "onBufferOverflow", "Lkotlinx/coroutines/channels/BufferOverflow;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "Lkotlin/jvm/functions/Function2;", "collectTo", "scope", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "create", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CallbackFlowBuilder<T> extends ChannelFlowBuilder<T> {
    private final Function2<ProducerScope<? super T>, Continuation<? super Unit>, Object> block;

    public /* synthetic */ CallbackFlowBuilder(Function2 function2, EmptyCoroutineContext emptyCoroutineContext, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i2 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : emptyCoroutineContext, (i2 & 4) != 0 ? -2 : i, (i2 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CallbackFlowBuilder(Function2<? super ProducerScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i, bufferOverflow);
        this.block = function2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.ChannelFlowBuilder, kotlinx.coroutines.flow.internal.ChannelFlow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collectTo(kotlinx.coroutines.channels.ProducerScope<? super T> r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            if (r0 == 0) goto L14
            r0 = r6
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = new kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            r0.<init>(r4, r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.L$0
            r5 = r4
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r4 = super.collectTo(r5, r0)
            if (r4 != r1) goto L45
            return r1
        L45:
            boolean r4 = r5.isClosedForSend()
            if (r4 == 0) goto L4e
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L4e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.CallbackFlowBuilder.collectTo(kotlinx.coroutines.channels.ProducerScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.ChannelFlowBuilder, kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow<T> create(CoroutineContext context, int capacity, BufferOverflow onBufferOverflow) {
        return new CallbackFlowBuilder(this.block, context, capacity, onBufferOverflow);
    }
}
