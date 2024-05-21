package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.SentryStackFrame;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.selects.SelectInstance;

/* compiled from: BroadcastChannel.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u000245B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0017\u0010\u001f\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010!H\u0010¢\u0006\u0002\b\"J\u0012\u0010#\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0016J\u001e\u0010&\u001a\u00020'2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030\u00132\b\u0010)\u001a\u0004\u0018\u00010\rH\u0014J\u0016\u0010*\u001a\u00020'2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0002J\u0019\u0010,\u001a\u00020'2\u0006\u0010)\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010-J\b\u0010.\u001a\u00020/H\u0016J&\u00100\u001a\b\u0012\u0004\u0012\u00020'012\u0006\u0010)\u001a\u00028\u0000H\u0016ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b2\u00103R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0011\u001a*\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012j\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u001c\u001a\u0004\u0018\u00018\u00008F¢\u0006\f\u0012\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00066"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/BufferedChannel;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "capacity", "", "(I)V", "getCapacity", "()I", "isClosedForSend", "", "()Z", "lastConflatedElement", "", SentryStackFrame.JsonKeys.LOCK, "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "onSendInternalResult", "Ljava/util/HashMap;", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlin/collections/HashMap;", "subscribers", "", "value", "getValue$annotations", "()V", "getValue", "()Ljava/lang/Object;", "valueOrNull", "getValueOrNull$annotations", "getValueOrNull", "cancelImpl", "cause", "", "cancelImpl$kotlinx_coroutines_core", "close", "openSubscription", "Lkotlinx/coroutines/channels/ReceiveChannel;", "registerSelectForSend", "", "select", "element", "removeSubscriber", CmcdHeadersFactory.STREAMING_FORMAT_SS, "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toString", "", "trySend", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "SubscriberBuffered", "SubscriberConflated", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BroadcastChannelImpl<E> extends BufferedChannel<E> implements BroadcastChannel<E> {
    private final int capacity;
    private Object lastConflatedElement;
    private final ReentrantLock lock;
    private final HashMap<SelectInstance<?>, Object> onSendInternalResult;
    private List<? extends BufferedChannel<E>> subscribers;

    public static /* synthetic */ void getValue$annotations() {
    }

    public static /* synthetic */ void getValueOrNull$annotations() {
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public BroadcastChannelImpl(int i) {
        super(0, null);
        this.capacity = i;
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException(("BroadcastChannel capacity must be positive or Channel.CONFLATED, but " + i + " was specified").toString());
        }
        this.lock = new ReentrantLock();
        this.subscribers = CollectionsKt.emptyList();
        this.lastConflatedElement = BroadcastChannelKt.access$getNO_ELEMENT$p();
        this.onSendInternalResult = new HashMap<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:10:0x0036). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object send(E r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.BroadcastChannelImpl$send$1
            if (r0 == 0) goto L14
            r0 = r8
            kotlinx.coroutines.channels.BroadcastChannelImpl$send$1 r0 = (kotlinx.coroutines.channels.BroadcastChannelImpl$send$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            kotlinx.coroutines.channels.BroadcastChannelImpl$send$1 r0 = new kotlinx.coroutines.channels.BroadcastChannelImpl$send$1
            r0.<init>(r6, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 != r3) goto L39
            java.lang.Object r6 = r0.L$2
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r7 = r0.L$1
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.channels.BroadcastChannelImpl r2 = (kotlinx.coroutines.channels.BroadcastChannelImpl) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r5 = r0
            r0 = r7
            r7 = r2
        L36:
            r2 = r1
            r1 = r5
            goto L86
        L39:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.locks.ReentrantLock r8 = r6.lock
            java.util.concurrent.locks.Lock r8 = (java.util.concurrent.locks.Lock) r8
            r8.lock()
            boolean r2 = r6.isClosedForSend()     // Catch: java.lang.Throwable -> La6
            if (r2 != 0) goto La1
            int r2 = r6.capacity     // Catch: java.lang.Throwable -> La6
            r4 = -1
            if (r2 != r4) goto L58
            r6.lastConflatedElement = r7     // Catch: java.lang.Throwable -> La6
        L58:
            java.util.List<? extends kotlinx.coroutines.channels.BufferedChannel<E>> r2 = r6.subscribers     // Catch: java.lang.Throwable -> La6
            r8.unlock()
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r8 = r2.iterator()
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r5
        L67:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L9e
            java.lang.Object r2 = r6.next()
            kotlinx.coroutines.channels.BufferedChannel r2 = (kotlinx.coroutines.channels.BufferedChannel) r2
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r2 = r2.sendBroadcast$kotlinx_coroutines_core(r8, r0)
            if (r2 != r1) goto L82
            return r1
        L82:
            r5 = r0
            r0 = r8
            r8 = r2
            goto L36
        L86:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L9a
            boolean r8 = r7.isClosedForSend()
            if (r8 != 0) goto L95
            goto L9a
        L95:
            java.lang.Throwable r6 = r7.getSendException()
            throw r6
        L9a:
            r8 = r0
            r0 = r1
            r1 = r2
            goto L67
        L9e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        La1:
            java.lang.Throwable r6 = r6.getSendException()     // Catch: java.lang.Throwable -> La6
            throw r6     // Catch: java.lang.Throwable -> La6
        La6:
            r6 = move-exception
            r8.unlock()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl.send(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: BroadcastChannel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered;", "Lkotlinx/coroutines/channels/BufferedChannel;", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "cancelImpl", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    private final class SubscriberBuffered extends BufferedChannel<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public SubscriberBuffered() {
            super(BroadcastChannelImpl.this.getCapacity(), null, 2, 0 == true ? 1 : 0);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* renamed from: cancelImpl, reason: merged with bridge method [inline-methods] */
        public boolean cancelImpl$kotlinx_coroutines_core(Throwable cause) {
            ReentrantLock reentrantLock = ((BroadcastChannelImpl) BroadcastChannelImpl.this).lock;
            BroadcastChannelImpl<E> broadcastChannelImpl = BroadcastChannelImpl.this;
            ReentrantLock reentrantLock2 = reentrantLock;
            reentrantLock2.lock();
            try {
                broadcastChannelImpl.removeSubscriber(this);
                return super.cancelImpl$kotlinx_coroutines_core(cause);
            } finally {
                reentrantLock2.unlock();
            }
        }
    }

    /* compiled from: BroadcastChannel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberConflated;", "Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "cancelImpl", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    private final class SubscriberConflated extends ConflatedBufferedChannel<E> {
        public SubscriberConflated() {
            super(1, BufferOverflow.DROP_OLDEST, null, 4, null);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* renamed from: cancelImpl, reason: merged with bridge method [inline-methods] */
        public boolean cancelImpl$kotlinx_coroutines_core(Throwable cause) {
            BroadcastChannelImpl.this.removeSubscriber(this);
            return super.cancelImpl$kotlinx_coroutines_core(cause);
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public String toString() {
        return (this.lastConflatedElement != BroadcastChannelKt.access$getNO_ELEMENT$p() ? "CONFLATED_ELEMENT=" + this.lastConflatedElement + "; " : "") + "BROADCAST=<" + super.toString() + ">; SUBSCRIBERS=" + CollectionsKt.joinToString$default(this.subscribers, ";", "<", ">", 0, null, null, 56, null);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public ReceiveChannel<E> openSubscription() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            BufferedChannel subscriberConflated = this.capacity == -1 ? new SubscriberConflated() : new SubscriberBuffered();
            if (isClosedForSend() && this.lastConflatedElement == BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                subscriberConflated.close(getCloseCause());
                return subscriberConflated;
            }
            if (this.lastConflatedElement != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                subscriberConflated.mo7202trySendJP2dKIU(getValue());
            }
            this.subscribers = CollectionsKt.plus((Collection<? extends BufferedChannel>) this.subscribers, subscriberConflated);
            reentrantLock.unlock();
            return subscriberConflated;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeSubscriber(ReceiveChannel<? extends E> s) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            List<? extends BufferedChannel<E>> list = this.subscribers;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                BufferedChannel bufferedChannel = (Object) it.next();
                if (bufferedChannel != s) {
                    arrayList.add(bufferedChannel);
                }
            }
            this.subscribers = arrayList;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo7202trySendJP2dKIU(E element) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (isClosedForSend()) {
                return super.mo7202trySendJP2dKIU(element);
            }
            List<? extends BufferedChannel<E>> list = this.subscribers;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (((BufferedChannel) it.next()).shouldSendSuspend$kotlinx_coroutines_core()) {
                        return ChannelResult.INSTANCE.m7226failurePtdJZtk();
                    }
                }
            }
            if (this.capacity == -1) {
                this.lastConflatedElement = element;
            }
            Iterator<T> it2 = this.subscribers.iterator();
            while (it2.hasNext()) {
                ((BufferedChannel) it2.next()).mo7202trySendJP2dKIU(element);
            }
            return ChannelResult.INSTANCE.m7227successJP2dKIU(Unit.INSTANCE);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.BufferedChannel
    public void registerSelectForSend(SelectInstance<?> select, Object element) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object remove = this.onSendInternalResult.remove(select);
            if (remove != null) {
                select.selectInRegistrationPhase(remove);
                return;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(select.getContext()), null, CoroutineStart.UNDISPATCHED, new BroadcastChannelImpl$registerSelectForSend$2(this, element, select, null), 1, null);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean close(Throwable cause) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.subscribers.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).close(cause);
            }
            List<? extends BufferedChannel<E>> list = this.subscribers;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                BufferedChannel bufferedChannel = (Object) it2.next();
                if (bufferedChannel.hasElements$kotlinx_coroutines_core()) {
                    arrayList.add(bufferedChannel);
                }
            }
            this.subscribers = arrayList;
            return super.close(cause);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean cancelImpl$kotlinx_coroutines_core(Throwable cause) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.subscribers.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).cancelImpl$kotlinx_coroutines_core(cause);
            }
            this.lastConflatedElement = BroadcastChannelKt.access$getNO_ELEMENT$p();
            return super.cancelImpl$kotlinx_coroutines_core(cause);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.isClosedForSend();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final E getValue() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (isClosedForSend()) {
                Throwable closeCause = getCloseCause();
                if (closeCause == null) {
                    throw new IllegalStateException("This broadcast channel is closed");
                }
                throw closeCause;
            }
            if (this.lastConflatedElement != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                return (E) this.lastConflatedElement;
            }
            throw new IllegalStateException("No value".toString());
        } finally {
            reentrantLock.unlock();
        }
    }

    public final E getValueOrNull() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            E e = null;
            if (!isClosedForReceive() && this.lastConflatedElement != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                e = (E) this.lastConflatedElement;
            }
            return e;
        } finally {
            reentrantLock.unlock();
        }
    }
}
