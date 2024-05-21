package kotlin.time;

import kotlin.Metadata;

/* compiled from: TimeSources.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002¢\u0006\u0004\b\f\u0010\nJ\b\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "()V", "reading", "", "overflow", "", "duration", "Lkotlin/time/Duration;", "overflow-LRDsOJo", "(J)V", "plusAssign", "plusAssign-LRDsOJo", "read", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.time.AbstractLongTimeSource
    /* renamed from: read, reason: from getter */
    public long getReading() {
        return this.reading;
    }

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
        markNow();
    }

    /* renamed from: plusAssign-LRDsOJo, reason: not valid java name */
    public final void m7160plusAssignLRDsOJo(long duration) {
        long m7070toLongimpl = Duration.m7070toLongimpl(duration, getUnit());
        if (((m7070toLongimpl - 1) | 1) != Long.MAX_VALUE) {
            long j = this.reading;
            long j2 = j + m7070toLongimpl;
            if ((m7070toLongimpl ^ j) >= 0 && (j ^ j2) < 0) {
                m7159overflowLRDsOJo(duration);
            }
            this.reading = j2;
            return;
        }
        long m7027divUwyO8pc = Duration.m7027divUwyO8pc(duration, 2);
        if ((1 | (Duration.m7070toLongimpl(m7027divUwyO8pc, getUnit()) - 1)) != Long.MAX_VALUE) {
            long j3 = this.reading;
            try {
                m7160plusAssignLRDsOJo(m7027divUwyO8pc);
                m7160plusAssignLRDsOJo(Duration.m7059minusLRDsOJo(duration, m7027divUwyO8pc));
                return;
            } catch (IllegalStateException e) {
                this.reading = j3;
                throw e;
            }
        }
        m7159overflowLRDsOJo(duration);
    }

    /* renamed from: overflow-LRDsOJo, reason: not valid java name */
    private final void m7159overflowLRDsOJo(long duration) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + DurationUnitKt.shortName(getUnit()) + " is advanced by " + ((Object) Duration.m7073toStringimpl(duration)) + '.');
    }
}
