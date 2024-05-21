package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: UIntRange.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0016J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u0016H\u0086\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\b\u001a\u00020\u0002ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u0002ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n\u0082\u0002\u0004\n\u0002\b!¨\u0006\u001a"}, d2 = {"Lkotlin/ranges/UIntProgression;", "", "Lkotlin/UInt;", "start", "endInclusive", "step", "", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "getFirst-pVg5ArA", "()I", "I", "last", "getLast-pVg5ArA", "getStep", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public class UIntProgression implements Iterable<UInt>, KMappedMarker {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int first;
    private final int last;
    private final int step;

    public /* synthetic */ UIntProgression(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    /* renamed from: getFirst-pVg5ArA, reason: not valid java name and from getter */
    public final int getFirst() {
        return this.first;
    }

    /* renamed from: getLast-pVg5ArA, reason: not valid java name and from getter */
    public final int getLast() {
        return this.last;
    }

    public final int getStep() {
        return this.step;
    }

    private UIntProgression(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.first = i;
        this.last = UProgressionUtilKt.m6908getProgressionLastElementNkh28Cs(i, i2, i3);
        this.step = i3;
    }

    @Override // java.lang.Iterable
    public final Iterator<UInt> iterator() {
        return new UIntProgressionIterator(this.first, this.last, this.step, null);
    }

    public boolean isEmpty() {
        if (this.step > 0) {
            if (Integer.compareUnsigned(this.first, this.last) > 0) {
                return true;
            }
        } else if (Integer.compareUnsigned(this.first, this.last) < 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object other) {
        if (other instanceof UIntProgression) {
            if (!isEmpty() || !((UIntProgression) other).isEmpty()) {
                UIntProgression uIntProgression = (UIntProgression) other;
                if (this.first != uIntProgression.first || this.last != uIntProgression.last || this.step != uIntProgression.step) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.step + (((this.first * 31) + this.last) * 31);
    }

    public String toString() {
        StringBuilder append;
        int i;
        if (this.step > 0) {
            append = new StringBuilder().append((Object) UInt.m5839toStringimpl(this.first)).append("..").append((Object) UInt.m5839toStringimpl(this.last)).append(" step ");
            i = this.step;
        } else {
            append = new StringBuilder().append((Object) UInt.m5839toStringimpl(this.first)).append(" downTo ").append((Object) UInt.m5839toStringimpl(this.last)).append(" step ");
            i = -this.step;
        }
        return append.append(i).toString();
    }

    /* compiled from: UIntRange.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/ranges/UIntProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/UIntProgression;", "rangeStart", "Lkotlin/UInt;", "rangeEnd", "step", "", "fromClosedRange-Nkh28Cs", "(III)Lkotlin/ranges/UIntProgression;", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: fromClosedRange-Nkh28Cs, reason: not valid java name */
        public final UIntProgression m6924fromClosedRangeNkh28Cs(int rangeStart, int rangeEnd, int step) {
            return new UIntProgression(rangeStart, rangeEnd, step, null);
        }
    }
}
