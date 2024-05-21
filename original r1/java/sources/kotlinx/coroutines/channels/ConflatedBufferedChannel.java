package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectInstance;

/* compiled from: ConflatedBufferedChannel.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\"\b\u0002\u0010\u0007\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\n¢\u0006\u0002\u0010\u000bJ\u001e\u0010\u000f\u001a\u00020\t2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0019\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0090@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0015J\r\u0010\u0018\u001a\u00020\rH\u0010¢\u0006\u0002\b\u0019J&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ.\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\rH\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b \u0010!J&\u0010\"\u001a\b\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u0000H\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b#\u0010\u001dJ.\u0010$\u001a\b\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\rH\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b%\u0010!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006&"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/BufferedChannel;", "capacity", "", "onBufferOverflow", "Lkotlinx/coroutines/channels/BufferOverflow;", "onUndeliveredElement", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V", "isConflatedDropOldest", "", "()Z", "registerSelectForSend", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "element", "", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendBroadcast", "sendBroadcast$kotlinx_coroutines_core", "shouldSendSuspend", "shouldSendSuspend$kotlinx_coroutines_core", "trySend", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySendDropLatest", "isSendOp", "trySendDropLatest-Mj0NB7M", "(Ljava/lang/Object;Z)Ljava/lang/Object;", "trySendDropOldest", "trySendDropOldest-JP2dKIU", "trySendImpl", "trySendImpl-Mj0NB7M", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public class ConflatedBufferedChannel<E> extends BufferedChannel<E> {
    private final int capacity;
    private final BufferOverflow onBufferOverflow;

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public Object send(E e, Continuation<? super Unit> continuation) {
        return send$suspendImpl((ConflatedBufferedChannel) this, (Object) e, continuation);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public Object sendBroadcast$kotlinx_coroutines_core(E e, Continuation<? super Boolean> continuation) {
        return sendBroadcast$suspendImpl((ConflatedBufferedChannel) this, (Object) e, continuation);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean shouldSendSuspend$kotlinx_coroutines_core() {
        return false;
    }

    public /* synthetic */ ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, bufferOverflow, (i2 & 4) != 0 ? null : function1);
    }

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow, Function1<? super E, Unit> function1) {
        super(i, function1);
        this.capacity = i;
        this.onBufferOverflow = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName() + " instead").toString());
        }
        if (i < 1) {
            throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i + " was specified").toString());
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected boolean isConflatedDropOldest() {
        return this.onBufferOverflow == BufferOverflow.DROP_OLDEST;
    }

    static /* synthetic */ <E> Object send$suspendImpl(ConflatedBufferedChannel<E> conflatedBufferedChannel, E e, Continuation<? super Unit> continuation) {
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        Object m7230trySendImplMj0NB7M = conflatedBufferedChannel.m7230trySendImplMj0NB7M(e, true);
        if (m7230trySendImplMj0NB7M instanceof ChannelResult.Closed) {
            ChannelResult.m7216exceptionOrNullimpl(m7230trySendImplMj0NB7M);
            Function1<E, Unit> function1 = conflatedBufferedChannel.onUndeliveredElement;
            if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e, null, 2, null)) != null) {
                ExceptionsKt.addSuppressed(callUndeliveredElementCatchingException$default, conflatedBufferedChannel.getSendException());
                throw callUndeliveredElementCatchingException$default;
            }
            throw conflatedBufferedChannel.getSendException();
        }
        return Unit.INSTANCE;
    }

    static /* synthetic */ <E> Object sendBroadcast$suspendImpl(ConflatedBufferedChannel<E> conflatedBufferedChannel, E e, Continuation<? super Boolean> continuation) {
        Object m7230trySendImplMj0NB7M = conflatedBufferedChannel.m7230trySendImplMj0NB7M(e, true);
        if (!(m7230trySendImplMj0NB7M instanceof ChannelResult.Failed)) {
            return Boxing.boxBoolean(true);
        }
        return Boxing.boxBoolean(false);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public Object mo7202trySendJP2dKIU(E element) {
        return m7230trySendImplMj0NB7M(element, false);
    }

    /* renamed from: trySendImpl-Mj0NB7M, reason: not valid java name */
    private final Object m7230trySendImplMj0NB7M(E element, boolean isSendOp) {
        return this.onBufferOverflow == BufferOverflow.DROP_LATEST ? m7228trySendDropLatestMj0NB7M(element, isSendOp) : m7229trySendDropOldestJP2dKIU(element);
    }

    /* renamed from: trySendDropLatest-Mj0NB7M, reason: not valid java name */
    private final Object m7228trySendDropLatestMj0NB7M(E element, boolean isSendOp) {
        Function1<E, Unit> function1;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        Object mo7202trySendJP2dKIU = super.mo7202trySendJP2dKIU(element);
        if (ChannelResult.m7222isSuccessimpl(mo7202trySendJP2dKIU) || ChannelResult.m7220isClosedimpl(mo7202trySendJP2dKIU)) {
            return mo7202trySendJP2dKIU;
        }
        if (isSendOp && (function1 = this.onUndeliveredElement) != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, element, null, 2, null)) != null) {
            throw callUndeliveredElementCatchingException$default;
        }
        return ChannelResult.INSTANCE.m7227successJP2dKIU(Unit.INSTANCE);
    }

    /* renamed from: trySendDropOldest-JP2dKIU, reason: not valid java name */
    private final Object m7229trySendDropOldestJP2dKIU(E element) {
        ChannelSegment channelSegment;
        Object obj = BufferedChannelKt.BUFFERED;
        ConflatedBufferedChannel<E> conflatedBufferedChannel = this;
        ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.sendSegment$FU.get(conflatedBufferedChannel);
        while (true) {
            long andIncrement = BufferedChannel.sendersAndCloseStatus$FU.getAndIncrement(conflatedBufferedChannel);
            long j = andIncrement & 1152921504606846975L;
            boolean isClosedForSend0 = conflatedBufferedChannel.isClosedForSend0(andIncrement);
            long j2 = j / BufferedChannelKt.SEGMENT_SIZE;
            int i = (int) (j % BufferedChannelKt.SEGMENT_SIZE);
            if (channelSegment2.id != j2) {
                ChannelSegment findSegmentSend = conflatedBufferedChannel.findSegmentSend(j2, channelSegment2);
                if (findSegmentSend != null) {
                    channelSegment = findSegmentSend;
                } else if (isClosedForSend0) {
                    return ChannelResult.INSTANCE.m7225closedJP2dKIU(getSendException());
                }
            } else {
                channelSegment = channelSegment2;
            }
            int updateCellSend = conflatedBufferedChannel.updateCellSend(channelSegment, i, element, j, obj, isClosedForSend0);
            if (updateCellSend == 0) {
                channelSegment.cleanPrev();
                return ChannelResult.INSTANCE.m7227successJP2dKIU(Unit.INSTANCE);
            }
            if (updateCellSend == 1) {
                return ChannelResult.INSTANCE.m7227successJP2dKIU(Unit.INSTANCE);
            }
            if (updateCellSend == 2) {
                if (isClosedForSend0) {
                    channelSegment.onSlotCleaned();
                    return ChannelResult.INSTANCE.m7225closedJP2dKIU(getSendException());
                }
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    conflatedBufferedChannel.prepareSenderForSuspension(waiter, channelSegment, i);
                }
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.id * BufferedChannelKt.SEGMENT_SIZE) + i);
                return ChannelResult.INSTANCE.m7227successJP2dKIU(Unit.INSTANCE);
            }
            if (updateCellSend == 3) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (updateCellSend == 4) {
                if (j < conflatedBufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return ChannelResult.INSTANCE.m7225closedJP2dKIU(getSendException());
            }
            if (updateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            channelSegment2 = channelSegment;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BufferedChannel
    public void registerSelectForSend(SelectInstance<?> select, Object element) {
        Object mo7202trySendJP2dKIU = mo7202trySendJP2dKIU(element);
        if (!(mo7202trySendJP2dKIU instanceof ChannelResult.Failed)) {
            select.selectInRegistrationPhase(Unit.INSTANCE);
        } else {
            if (!(mo7202trySendJP2dKIU instanceof ChannelResult.Closed)) {
                throw new IllegalStateException("unreachable".toString());
            }
            ChannelResult.m7216exceptionOrNullimpl(mo7202trySendJP2dKIU);
            select.selectInRegistrationPhase(BufferedChannelKt.getCHANNEL_CLOSED());
        }
    }
}
