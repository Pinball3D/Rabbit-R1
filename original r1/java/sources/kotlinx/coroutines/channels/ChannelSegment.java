package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Segment;

/* compiled from: BufferedChannel.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00000\u0002B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ)\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0000¢\u0006\u0002\b\u0019J\u0015\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\tH\u0000¢\u0006\u0002\b\u001cJ!\u0010\u001d\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0010H\u0000¢\u0006\u0002\b\u001fJ\u0017\u0010 \u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\tH\u0000¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\tH\u0000¢\u0006\u0002\b$J\"\u0010%\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\t2\b\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010(\u001a\u00020)H\u0016J\u0016\u0010*\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0015J\u0017\u0010,\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\tH\u0000¢\u0006\u0004\b-\u0010\"J\u001a\u0010.\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\t2\b\u0010/\u001a\u0004\u0018\u00010\u0010H\u0002J\u001f\u00100\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\t2\b\u0010/\u001a\u0004\u0018\u00010\u0010H\u0000¢\u0006\u0002\b1J\u001f\u00102\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u00103\u001a\u00028\u0000H\u0000¢\u0006\u0004\b4\u00105R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004R\u0014\u0010\u0011\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u00066"}, d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/Segment;", "id", "", "prev", "channel", "Lkotlinx/coroutines/channels/BufferedChannel;", "pointers", "", "(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V", "_channel", "getChannel", "()Lkotlinx/coroutines/channels/BufferedChannel;", "data", "Lkotlinx/atomicfu/AtomicArray;", "", "numberOfSlots", "getNumberOfSlots", "()I", "casState", "", "index", "from", "to", "casState$kotlinx_coroutines_core", "cleanElement", "", "cleanElement$kotlinx_coroutines_core", "getAndSetState", "update", "getAndSetState$kotlinx_coroutines_core", "getElement", "getElement$kotlinx_coroutines_core", "(I)Ljava/lang/Object;", "getState", "getState$kotlinx_coroutines_core", "onCancellation", "cause", "", "context", "Lkotlin/coroutines/CoroutineContext;", "onCancelledRequest", "receiver", "retrieveElement", "retrieveElement$kotlinx_coroutines_core", "setElementLazy", "value", "setState", "setState$kotlinx_coroutines_core", "storeElement", "element", "storeElement$kotlinx_coroutines_core", "(ILjava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {
    private final BufferedChannel<E> _channel;
    private final AtomicReferenceArray data;

    public ChannelSegment(long j, ChannelSegment<E> channelSegment, BufferedChannel<E> bufferedChannel, int i) {
        super(j, channelSegment, i);
        this._channel = bufferedChannel;
        this.data = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final BufferedChannel<E> getChannel() {
        BufferedChannel<E> bufferedChannel = this._channel;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    public final void storeElement$kotlinx_coroutines_core(int index, E element) {
        setElementLazy(index, element);
    }

    public final E getElement$kotlinx_coroutines_core(int index) {
        return (E) this.data.get(index * 2);
    }

    public final E retrieveElement$kotlinx_coroutines_core(int index) {
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        cleanElement$kotlinx_coroutines_core(index);
        return element$kotlinx_coroutines_core;
    }

    public final void cleanElement$kotlinx_coroutines_core(int index) {
        setElementLazy(index, null);
    }

    private final void setElementLazy(int index, Object value) {
        this.data.lazySet(index * 2, value);
    }

    public final Object getState$kotlinx_coroutines_core(int index) {
        return this.data.get((index * 2) + 1);
    }

    public final void setState$kotlinx_coroutines_core(int index, Object value) {
        this.data.set((index * 2) + 1, value);
    }

    public final boolean casState$kotlinx_coroutines_core(int index, Object from, Object to) {
        return this.data.compareAndSet((index * 2) + 1, from, to);
    }

    public final Object getAndSetState$kotlinx_coroutines_core(int index, Object update) {
        return this.data.getAndSet((index * 2) + 1, update);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0063, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0066, code lost:
    
        if (r5 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0068, code lost:
    
        r3 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006e, code lost:
    
        if (r3 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0070, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0073, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCancellation(int r4, java.lang.Throwable r5, kotlin.coroutines.CoroutineContext r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            if (r4 < r5) goto L6
            r5 = 1
            goto L7
        L6:
            r5 = 0
        L7:
            if (r5 == 0) goto Lc
            int r0 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            int r4 = r4 - r0
        Lc:
            java.lang.Object r0 = r3.getElement$kotlinx_coroutines_core(r4)
        L10:
            java.lang.Object r1 = r3.getState$kotlinx_coroutines_core(r4)
            boolean r2 = r1 instanceof kotlinx.coroutines.Waiter
            if (r2 != 0) goto L74
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r2 == 0) goto L1d
            goto L74
        L1d:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            if (r1 == r2) goto L63
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            if (r1 != r2) goto L2a
            goto L63
        L2a:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r1 == r2) goto L10
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r1 != r2) goto L37
            goto L10
        L37:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r1 == r3) goto L62
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r1 != r3) goto L42
            goto L62
        L42:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            if (r1 != r3) goto L49
            return
        L49:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "unexpected state: "
            r4.<init>(r5)
            java.lang.StringBuilder r4 = r4.append(r1)
            java.lang.String r4 = r4.toString()
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L62:
            return
        L63:
            r3.cleanElement$kotlinx_coroutines_core(r4)
            if (r5 == 0) goto L73
            kotlinx.coroutines.channels.BufferedChannel r3 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r3 = r3.onUndeliveredElement
            if (r3 == 0) goto L73
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r0, r6)
        L73:
            return
        L74:
            if (r5 == 0) goto L7b
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            goto L7f
        L7b:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
        L7f:
            boolean r1 = r3.casState$kotlinx_coroutines_core(r4, r1, r2)
            if (r1 == 0) goto L10
            r3.cleanElement$kotlinx_coroutines_core(r4)
            r1 = r5 ^ 1
            r3.onCancelledRequest(r4, r1)
            if (r5 == 0) goto L9a
            kotlinx.coroutines.channels.BufferedChannel r3 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r3 = r3.onUndeliveredElement
            if (r3 == 0) goto L9a
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r0, r6)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelSegment.onCancellation(int, java.lang.Throwable, kotlin.coroutines.CoroutineContext):void");
    }

    public final void onCancelledRequest(int index, boolean receiver) {
        if (receiver) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.id * BufferedChannelKt.SEGMENT_SIZE) + index);
        }
        onSlotCleaned();
    }
}
