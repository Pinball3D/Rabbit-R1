package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.selects.SelectClause2;

/* compiled from: BroadcastChannel.kt */
@Deprecated(level = DeprecationLevel.WARNING, message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005B\u0015\b\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\u0015\u001a\u00020\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0097\u0001J\u001b\u0010\u0015\u001a\u00020\u00182\u0010\b\u0002\u0010\u0016\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH\u0096\u0001J\u0013\u0010\u001b\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0001J.\u0010\u001c\u001a\u00020\u00182#\u0010\u001d\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00180\u001eH\u0096\u0001J\u0016\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0002\u0010#J\u000f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0096\u0001J\u0019\u0010&\u001a\u00020\u00182\u0006\u0010\"\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0002\u0010'J'\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00180)2\u0006\u0010\"\u001a\u00028\u0000H\u0096\u0001ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b*\u0010+R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR$\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000e0\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006,"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/BroadcastChannel;", "()V", "value", "(Ljava/lang/Object;)V", "broadcast", "Lkotlinx/coroutines/channels/BroadcastChannelImpl;", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "isClosedForSend", "", "()Z", "onSend", "Lkotlinx/coroutines/selects/SelectClause2;", "Lkotlinx/coroutines/channels/SendChannel;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "getValue", "()Ljava/lang/Object;", "valueOrNull", "getValueOrNull", "cancel", "cause", "", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "close", "invokeOnClose", "handler", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "offer", "element", "(Ljava/lang/Object;)Z", "openSubscription", "Lkotlinx/coroutines/channels/ReceiveChannel;", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trySend", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConflatedBroadcastChannel<E> implements BroadcastChannel<E> {
    private final BroadcastChannelImpl<E> broadcast;

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public void cancel(CancellationException cause) {
        this.broadcast.cancel(cause);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility only")
    public /* synthetic */ boolean cancel(Throwable cause) {
        return this.broadcast.cancel(cause);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(Throwable cause) {
        return this.broadcast.close(cause);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public SelectClause2<E, SendChannel<E>> getOnSend() {
        return this.broadcast.getOnSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(Function1<? super Throwable, Unit> handler) {
        this.broadcast.invokeOnClose(handler);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return this.broadcast.isClosedForSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E element) {
        return this.broadcast.offer(element);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public ReceiveChannel<E> openSubscription() {
        return this.broadcast.openSubscription();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object send(E e, Continuation<? super Unit> continuation) {
        return this.broadcast.send(e, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public Object mo7202trySendJP2dKIU(E element) {
        return this.broadcast.mo7202trySendJP2dKIU(element);
    }

    private ConflatedBroadcastChannel(BroadcastChannelImpl<E> broadcastChannelImpl) {
        this.broadcast = broadcastChannelImpl;
    }

    public ConflatedBroadcastChannel() {
        this(new BroadcastChannelImpl(-1));
    }

    public ConflatedBroadcastChannel(E e) {
        this();
        mo7202trySendJP2dKIU(e);
    }

    public final E getValue() {
        return this.broadcast.getValue();
    }

    public final E getValueOrNull() {
        return this.broadcast.getValueOrNull();
    }
}
