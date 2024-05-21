package kotlin.ranges;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: UIntRange.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001c2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00020\u00030\u0004:\u0001\u001cB\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0010H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u001d\u0010\b\u001a\u00020\u00038VX\u0097\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00038VX\u0096\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u000e\u0010\f\u0082\u0002\u0004\n\u0002\b!¨\u0006\u001d"}, d2 = {"Lkotlin/ranges/UIntRange;", "Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/UInt;", "Lkotlin/ranges/OpenEndRange;", "start", "endInclusive", "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "endExclusive", "getEndExclusive-pVg5ArA$annotations", "()V", "getEndExclusive-pVg5ArA", "()I", "getEndInclusive-pVg5ArA", "getStart-pVg5ArA", "contains", "", "value", "contains-WZ4Q5Ns", "(I)Z", "equals", "other", "", "hashCode", "", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UIntRange extends UIntProgression implements ClosedRange<UInt>, OpenEndRange<UInt> {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final UIntRange EMPTY;

    public /* synthetic */ UIntRange(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    @Deprecated(message = "Can throw an exception when it's impossible to represent the value with UInt type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    /* renamed from: getEndExclusive-pVg5ArA$annotations, reason: not valid java name */
    public static /* synthetic */ void m6926getEndExclusivepVg5ArA$annotations() {
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(UInt uInt) {
        return m6927containsWZ4Q5Ns(uInt.getData());
    }

    @Override // kotlin.ranges.OpenEndRange
    public /* bridge */ /* synthetic */ UInt getEndExclusive() {
        return UInt.m5787boximpl(m6928getEndExclusivepVg5ArA());
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ UInt getEndInclusive() {
        return UInt.m5787boximpl(m6929getEndInclusivepVg5ArA());
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ UInt getStart() {
        return UInt.m5787boximpl(m6930getStartpVg5ArA());
    }

    private UIntRange(int i, int i2) {
        super(i, i2, 1, null);
    }

    /* renamed from: getStart-pVg5ArA, reason: not valid java name */
    public int m6930getStartpVg5ArA() {
        return getFirst();
    }

    /* renamed from: getEndInclusive-pVg5ArA, reason: not valid java name */
    public int m6929getEndInclusivepVg5ArA() {
        return getLast();
    }

    /* renamed from: getEndExclusive-pVg5ArA, reason: not valid java name */
    public int m6928getEndExclusivepVg5ArA() {
        if (getLast() == -1) {
            throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.".toString());
        }
        return UInt.m5793constructorimpl(getLast() + 1);
    }

    /* renamed from: contains-WZ4Q5Ns, reason: not valid java name */
    public boolean m6927containsWZ4Q5Ns(int value) {
        return Integer.compareUnsigned(getFirst(), value) <= 0 && Integer.compareUnsigned(value, getLast()) <= 0;
    }

    @Override // kotlin.ranges.UIntProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return Integer.compareUnsigned(getFirst(), getLast()) > 0;
    }

    @Override // kotlin.ranges.UIntProgression
    public boolean equals(Object other) {
        if (other instanceof UIntRange) {
            if (!isEmpty() || !((UIntRange) other).isEmpty()) {
                UIntRange uIntRange = (UIntRange) other;
                if (getFirst() != uIntRange.getFirst() || getLast() != uIntRange.getLast()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.UIntProgression
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return getLast() + (getFirst() * 31);
    }

    @Override // kotlin.ranges.UIntProgression
    public String toString() {
        return ((Object) UInt.m5839toStringimpl(getFirst())) + ".." + ((Object) UInt.m5839toStringimpl(getLast()));
    }

    /* compiled from: UIntRange.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/ranges/UIntRange$Companion;", "", "()V", "EMPTY", "Lkotlin/ranges/UIntRange;", "getEMPTY", "()Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UIntRange getEMPTY() {
            return UIntRange.EMPTY;
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        INSTANCE = new Companion(defaultConstructorMarker);
        EMPTY = new UIntRange(-1, 0, defaultConstructorMarker);
    }
}
