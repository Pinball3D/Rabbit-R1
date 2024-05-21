package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Semaphore.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J%\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0086\bJ\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\bJ\u001d\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0086\bJ\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001b\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0086\bJ\b\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tR\u0014\u0010\u000b\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreSegment;", "Lkotlinx/coroutines/internal/Segment;", "id", "", "prev", "pointers", "", "(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V", "acquirers", "Lkotlinx/atomicfu/AtomicArray;", "", "numberOfSlots", "getNumberOfSlots", "()I", "cas", "", "index", "expected", "value", "get", "getAndSet", "onCancellation", "", "cause", "", "context", "Lkotlin/coroutines/CoroutineContext;", "set", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SemaphoreSegment extends Segment<SemaphoreSegment> {
    private final AtomicReferenceArray acquirers;

    public final AtomicReferenceArray getAcquirers() {
        return this.acquirers;
    }

    public SemaphoreSegment(long j, SemaphoreSegment semaphoreSegment, int i) {
        super(j, semaphoreSegment, i);
        int i2;
        i2 = SemaphoreKt.SEGMENT_SIZE;
        this.acquirers = new AtomicReferenceArray(i2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        int i;
        i = SemaphoreKt.SEGMENT_SIZE;
        return i;
    }

    public final Object get(int index) {
        return getAcquirers().get(index);
    }

    public final void set(int index, Object value) {
        getAcquirers().set(index, value);
    }

    public final boolean cas(int index, Object expected, Object value) {
        return getAcquirers().compareAndSet(index, expected, value);
    }

    public final Object getAndSet(int index, Object value) {
        return getAcquirers().getAndSet(index, value);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public void onCancellation(int index, Throwable cause, CoroutineContext context) {
        Symbol symbol;
        symbol = SemaphoreKt.CANCELLED;
        getAcquirers().set(index, symbol);
        onSlotCleaned();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.id + ", hashCode=" + hashCode() + ']';
    }
}
