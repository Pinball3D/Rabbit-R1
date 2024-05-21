package androidx.compose.ui.unit;

import io.flutter.embedding.android.KeyboardMap;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;

/* compiled from: IntOffset.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087@\u0018\u0000 32\u00020\u0001:\u00013B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\tH\u0087\u0002¢\u0006\u0004\b\u0011\u0010\fJ\u0010\u0010\u0012\u001a\u00020\tH\u0087\u0002¢\u0006\u0004\b\u0013\u0010\fJ*\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\tø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\"\u0010\fJ\u001e\u0010#\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0087\nø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b$\u0010%J\u001e\u0010&\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0087\nø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010%J!\u0010(\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\tH\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b)\u0010*J!\u0010+\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b,\u0010\u001bJ\u000f\u0010-\u001a\u00020.H\u0017¢\u0006\u0004\b/\u00100J\u0019\u00101\u001a\u00020\u0000H\u0087\nø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0007\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u0007\u001a\u0004\b\u000f\u0010\f\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00064"}, d2 = {"Landroidx/compose/ui/unit/IntOffset;", "", "packedValue", "", "constructor-impl", "(J)J", "getPackedValue$annotations", "()V", ViewHierarchyNode.JsonKeys.X, "", "getX$annotations", "getX-impl", "(J)I", ViewHierarchyNode.JsonKeys.Y, "getY$annotations", "getY-impl", "component1", "component1-impl", "component2", "component2-impl", "copy", "copy-iSbpLlY", "(JII)J", "div", "operand", "", "div-Bjo55l4", "(JF)J", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "minus", "minus-qkQi6aY", "(JJ)J", "plus", "plus-qkQi6aY", "rem", "rem-Bjo55l4", "(JI)J", "times", "times-Bjo55l4", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "unaryMinus", "unaryMinus-nOcc-ac", "Companion", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class IntOffset {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long Zero = IntOffsetKt.IntOffset(0, 0);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntOffset m4992boximpl(long j) {
        return new IntOffset(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m4995constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4999equalsimpl(long j, Object obj) {
        return (obj instanceof IntOffset) && j == ((IntOffset) obj).getPackedValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5000equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    public static /* synthetic */ void getX$annotations() {
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final int m5001getXimpl(long j) {
        return (int) (j >> 32);
    }

    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final int m5002getYimpl(long j) {
        return (int) (j & KeyboardMap.kValueMask);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m5003hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public boolean equals(Object obj) {
        return m4999equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m5003hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getPackedValue() {
        return this.packedValue;
    }

    private /* synthetic */ IntOffset(long j) {
        this.packedValue = j;
    }

    /* renamed from: component1-impl, reason: not valid java name */
    public static final int m4993component1impl(long j) {
        return m5001getXimpl(j);
    }

    /* renamed from: component2-impl, reason: not valid java name */
    public static final int m4994component2impl(long j) {
        return m5002getYimpl(j);
    }

    /* renamed from: copy-iSbpLlY, reason: not valid java name */
    public static final long m4996copyiSbpLlY(long j, int i, int i2) {
        return IntOffsetKt.IntOffset(i, i2);
    }

    /* renamed from: copy-iSbpLlY$default, reason: not valid java name */
    public static /* synthetic */ long m4997copyiSbpLlY$default(long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = m5001getXimpl(j);
        }
        if ((i3 & 2) != 0) {
            i2 = m5002getYimpl(j);
        }
        return m4996copyiSbpLlY(j, i, i2);
    }

    /* renamed from: minus-qkQi6aY, reason: not valid java name */
    public static final long m5004minusqkQi6aY(long j, long j2) {
        return IntOffsetKt.IntOffset(m5001getXimpl(j) - m5001getXimpl(j2), m5002getYimpl(j) - m5002getYimpl(j2));
    }

    /* renamed from: plus-qkQi6aY, reason: not valid java name */
    public static final long m5005plusqkQi6aY(long j, long j2) {
        return IntOffsetKt.IntOffset(m5001getXimpl(j) + m5001getXimpl(j2), m5002getYimpl(j) + m5002getYimpl(j2));
    }

    /* renamed from: unaryMinus-nOcc-ac, reason: not valid java name */
    public static final long m5009unaryMinusnOccac(long j) {
        return IntOffsetKt.IntOffset(-m5001getXimpl(j), -m5002getYimpl(j));
    }

    /* renamed from: times-Bjo55l4, reason: not valid java name */
    public static final long m5007timesBjo55l4(long j, float f) {
        return IntOffsetKt.IntOffset(MathKt.roundToInt(m5001getXimpl(j) * f), MathKt.roundToInt(m5002getYimpl(j) * f));
    }

    /* renamed from: div-Bjo55l4, reason: not valid java name */
    public static final long m4998divBjo55l4(long j, float f) {
        return IntOffsetKt.IntOffset(MathKt.roundToInt(m5001getXimpl(j) / f), MathKt.roundToInt(m5002getYimpl(j) / f));
    }

    /* renamed from: rem-Bjo55l4, reason: not valid java name */
    public static final long m5006remBjo55l4(long j, int i) {
        return IntOffsetKt.IntOffset(m5001getXimpl(j) % i, m5002getYimpl(j) % i);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m5008toStringimpl(long j) {
        return "(" + m5001getXimpl(j) + ", " + m5002getYimpl(j) + ')';
    }

    public String toString() {
        return m5008toStringimpl(this.packedValue);
    }

    /* compiled from: IntOffset.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\b"}, d2 = {"Landroidx/compose/ui/unit/IntOffset$Companion;", "", "()V", "Zero", "Landroidx/compose/ui/unit/IntOffset;", "getZero-nOcc-ac", "()J", "J", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-nOcc-ac, reason: not valid java name */
        public final long m5011getZeronOccac() {
            return IntOffset.Zero;
        }
    }
}
