package androidx.compose.ui.unit;

import io.flutter.embedding.android.KeyboardMap;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;

/* compiled from: Velocity.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087@\u0018\u0000 22\u00020\u0001:\u00012B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b\u0012\u0010\u000bJ*\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u0007ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001e\u0010#\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000H\u0087\u0002ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b$\u0010%J\u001e\u0010&\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000H\u0087\u0002ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010%J!\u0010(\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b)\u0010\u0019J!\u0010*\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b+\u0010\u0019J\u000f\u0010,\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\u0000H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000b\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00063"}, d2 = {"Landroidx/compose/ui/unit/Velocity;", "", "packedValue", "", "constructor-impl", "(J)J", ViewHierarchyNode.JsonKeys.X, "", "getX$annotations", "()V", "getX-impl", "(J)F", ViewHierarchyNode.JsonKeys.Y, "getY$annotations", "getY-impl", "component1", "component1-impl", "component2", "component2-impl", "copy", "copy-OhffZ5M", "(JFF)J", "div", "operand", "div-adjELrA", "(JF)J", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(J)I", "minus", "minus-AH228Gc", "(JJ)J", "plus", "plus-AH228Gc", "rem", "rem-adjELrA", "times", "times-adjELrA", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "unaryMinus", "unaryMinus-9UxMQ8M", "Companion", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Velocity {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long Zero = VelocityKt.Velocity(0.0f, 0.0f);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Velocity m5099boximpl(long j) {
        return new Velocity(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m5102constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m5106equalsimpl(long j, Object obj) {
        return (obj instanceof Velocity) && j == ((Velocity) obj).getPackedValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5107equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getX$annotations() {
    }

    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m5110hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public boolean equals(Object obj) {
        return m5106equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m5110hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getPackedValue() {
        return this.packedValue;
    }

    private /* synthetic */ Velocity(long j) {
        this.packedValue = j;
    }

    /* renamed from: component1-impl, reason: not valid java name */
    public static final float m5100component1impl(long j) {
        return m5108getXimpl(j);
    }

    /* renamed from: component2-impl, reason: not valid java name */
    public static final float m5101component2impl(long j) {
        return m5109getYimpl(j);
    }

    /* renamed from: copy-OhffZ5M, reason: not valid java name */
    public static final long m5103copyOhffZ5M(long j, float f, float f2) {
        return VelocityKt.Velocity(f, f2);
    }

    /* renamed from: copy-OhffZ5M$default, reason: not valid java name */
    public static /* synthetic */ long m5104copyOhffZ5M$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m5108getXimpl(j);
        }
        if ((i & 2) != 0) {
            f2 = m5109getYimpl(j);
        }
        return m5103copyOhffZ5M(j, f, f2);
    }

    /* compiled from: Velocity.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R'\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\t"}, d2 = {"Landroidx/compose/ui/unit/Velocity$Companion;", "", "()V", "Zero", "Landroidx/compose/ui/unit/Velocity;", "getZero-9UxMQ8M$annotations", "getZero-9UxMQ8M", "()J", "J", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-9UxMQ8M$annotations, reason: not valid java name */
        public static /* synthetic */ void m5118getZero9UxMQ8M$annotations() {
        }

        private Companion() {
        }

        /* renamed from: getZero-9UxMQ8M, reason: not valid java name */
        public final long m5119getZero9UxMQ8M() {
            return Velocity.Zero;
        }
    }

    /* renamed from: unaryMinus-9UxMQ8M, reason: not valid java name */
    public static final long m5116unaryMinus9UxMQ8M(long j) {
        return VelocityKt.Velocity(-m5108getXimpl(j), -m5109getYimpl(j));
    }

    /* renamed from: minus-AH228Gc, reason: not valid java name */
    public static final long m5111minusAH228Gc(long j, long j2) {
        return VelocityKt.Velocity(m5108getXimpl(j) - m5108getXimpl(j2), m5109getYimpl(j) - m5109getYimpl(j2));
    }

    /* renamed from: plus-AH228Gc, reason: not valid java name */
    public static final long m5112plusAH228Gc(long j, long j2) {
        return VelocityKt.Velocity(m5108getXimpl(j) + m5108getXimpl(j2), m5109getYimpl(j) + m5109getYimpl(j2));
    }

    /* renamed from: times-adjELrA, reason: not valid java name */
    public static final long m5114timesadjELrA(long j, float f) {
        return VelocityKt.Velocity(m5108getXimpl(j) * f, m5109getYimpl(j) * f);
    }

    /* renamed from: div-adjELrA, reason: not valid java name */
    public static final long m5105divadjELrA(long j, float f) {
        return VelocityKt.Velocity(m5108getXimpl(j) / f, m5109getYimpl(j) / f);
    }

    /* renamed from: rem-adjELrA, reason: not valid java name */
    public static final long m5113remadjELrA(long j, float f) {
        return VelocityKt.Velocity(m5108getXimpl(j) % f, m5109getYimpl(j) % f);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m5115toStringimpl(long j) {
        return "(" + m5108getXimpl(j) + ", " + m5109getYimpl(j) + ") px/sec";
    }

    public String toString() {
        return m5115toStringimpl(this.packedValue);
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final float m5108getXimpl(long j) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final float m5109getYimpl(long j) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j & KeyboardMap.kValueMask));
    }
}
