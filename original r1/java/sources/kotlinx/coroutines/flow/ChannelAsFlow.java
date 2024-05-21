package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B9\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\b\u0010\u0010\u001a\u00020\u0011H\u0014J\u001f\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00132\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0094@ø\u0001\u0000¢\u0006\u0002\u0010\u001aJ&\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0002J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0018\u001a\u00020 H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\t\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lkotlinx/coroutines/flow/ChannelAsFlow;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "channel", "Lkotlinx/coroutines/channels/ReceiveChannel;", "consume", "", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "onBufferOverflow", "Lkotlinx/coroutines/channels/BufferOverflow;", "(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "consumed", "Lkotlinx/atomicfu/AtomicBoolean;", "additionalToStringProps", "", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectTo", "scope", "Lkotlinx/coroutines/channels/ProducerScope;", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "create", "dropChannelOperators", "Lkotlinx/coroutines/flow/Flow;", "markConsumed", "produceImpl", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ChannelAsFlow<T> extends ChannelFlow<T> {
    private static final AtomicIntegerFieldUpdater consumed$FU = AtomicIntegerFieldUpdater.newUpdater(ChannelAsFlow.class, "consumed");
    private final ReceiveChannel<T> channel;
    private final boolean consume;

    @Volatile
    private volatile int consumed;

    public /* synthetic */ ChannelAsFlow(ReceiveChannel receiveChannel, boolean z, EmptyCoroutineContext emptyCoroutineContext, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(receiveChannel, z, (i2 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : emptyCoroutineContext, (i2 & 8) != 0 ? -3 : i, (i2 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelAsFlow(ReceiveChannel<? extends T> receiveChannel, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.channel = receiveChannel;
        this.consume = z;
        this.consumed = 0;
    }

    private final void markConsumed() {
        if (this.consume && consumed$FU.getAndSet(this, 1) != 0) {
            throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow<T> create(CoroutineContext context, int capacity, BufferOverflow onBufferOverflow) {
        return new ChannelAsFlow(this.channel, this.consume, context, capacity, onBufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Flow<T> dropChannelOperators() {
        return new ChannelAsFlow(this.channel, this.consume, null, 0, null, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(ProducerScope<? super T> producerScope, Continuation<? super Unit> continuation) {
        Object emitAllImpl$FlowKt__ChannelsKt;
        emitAllImpl$FlowKt__ChannelsKt = FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(new SendingCollector(producerScope), this.channel, this.consume, continuation);
        return emitAllImpl$FlowKt__ChannelsKt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? emitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ReceiveChannel<T> produceImpl(CoroutineScope scope) {
        markConsumed();
        return this.capacity == -3 ? this.channel : super.produceImpl(scope);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        Object emitAllImpl$FlowKt__ChannelsKt;
        if (this.capacity == -3) {
            markConsumed();
            emitAllImpl$FlowKt__ChannelsKt = FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(flowCollector, this.channel, this.consume, continuation);
            return emitAllImpl$FlowKt__ChannelsKt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? emitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
        }
        Object collect = super.collect(flowCollector, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected String additionalToStringProps() {
        return "channel=" + this.channel;
    }
}
