package androidx.compose.ui.geometry;

import io.flutter.embedding.android.KeyboardMap;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;

/* compiled from: CornerRadius.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087@\u0018\u0000 12\u00020\u0001:\u00011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\tH\u0087\n¢\u0006\u0004\b\u0011\u0010\fJ\u0010\u0010\u0012\u001a\u00020\tH\u0087\n¢\u0006\u0004\b\u0013\u0010\fJ*\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\tø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\tH\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020!HÖ\u0001¢\u0006\u0004\b\"\u0010#J\u001e\u0010$\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0000H\u0087\u0002ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b%\u0010&J\u001e\u0010'\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0000H\u0087\u0002ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b(\u0010&J!\u0010)\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\tH\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b*\u0010\u001aJ\u000f\u0010+\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.J\u0019\u0010/\u001a\u00020\u0000H\u0087\u0002ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0007\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u0007\u001a\u0004\b\u000f\u0010\f\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00062"}, d2 = {"Landroidx/compose/ui/geometry/CornerRadius;", "", "packedValue", "", "constructor-impl", "(J)J", "getPackedValue$annotations", "()V", ViewHierarchyNode.JsonKeys.X, "", "getX$annotations", "getX-impl", "(J)F", ViewHierarchyNode.JsonKeys.Y, "getY$annotations", "getY-impl", "component1", "component1-impl", "component2", "component2-impl", "copy", "copy-OHQCggk", "(JFF)J", "div", "operand", "div-Bz7bX_o", "(JF)J", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(J)I", "minus", "minus-vF7b-mM", "(JJ)J", "plus", "plus-vF7b-mM", "times", "times-Bz7bX_o", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "unaryMinus", "unaryMinus-kKHJgLs", "Companion", "ui-geometry_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class CornerRadius {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long Zero = CornerRadiusKt.CornerRadius$default(0.0f, 0.0f, 2, null);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CornerRadius m2366boximpl(long j) {
        return new CornerRadius(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2369constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2373equalsimpl(long j, Object obj) {
        return (obj instanceof CornerRadius) && j == ((CornerRadius) obj).getPackedValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2374equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    public static /* synthetic */ void getX$annotations() {
    }

    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2377hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public boolean equals(Object obj) {
        return m2373equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2377hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getPackedValue() {
        return this.packedValue;
    }

    private /* synthetic */ CornerRadius(long j) {
        this.packedValue = j;
    }

    /* renamed from: component1-impl, reason: not valid java name */
    public static final float m2367component1impl(long j) {
        return m2375getXimpl(j);
    }

    /* renamed from: component2-impl, reason: not valid java name */
    public static final float m2368component2impl(long j) {
        return m2376getYimpl(j);
    }

    /* renamed from: copy-OHQCggk, reason: not valid java name */
    public static final long m2370copyOHQCggk(long j, float f, float f2) {
        return CornerRadiusKt.CornerRadius(f, f2);
    }

    /* renamed from: copy-OHQCggk$default, reason: not valid java name */
    public static /* synthetic */ long m2371copyOHQCggk$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m2375getXimpl(j);
        }
        if ((i & 2) != 0) {
            f2 = m2376getYimpl(j);
        }
        return m2370copyOHQCggk(j, f, f2);
    }

    /* compiled from: CornerRadius.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R'\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\t"}, d2 = {"Landroidx/compose/ui/geometry/CornerRadius$Companion;", "", "()V", "Zero", "Landroidx/compose/ui/geometry/CornerRadius;", "getZero-kKHJgLs$annotations", "getZero-kKHJgLs", "()J", "J", "ui-geometry_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-kKHJgLs$annotations, reason: not valid java name */
        public static /* synthetic */ void m2384getZerokKHJgLs$annotations() {
        }

        private Companion() {
        }

        /* renamed from: getZero-kKHJgLs, reason: not valid java name */
        public final long m2385getZerokKHJgLs() {
            return CornerRadius.Zero;
        }
    }

    /* renamed from: unaryMinus-kKHJgLs, reason: not valid java name */
    public static final long m2382unaryMinuskKHJgLs(long j) {
        return CornerRadiusKt.CornerRadius(-m2375getXimpl(j), -m2376getYimpl(j));
    }

    /* renamed from: minus-vF7b-mM, reason: not valid java name */
    public static final long m2378minusvF7bmM(long j, long j2) {
        return CornerRadiusKt.CornerRadius(m2375getXimpl(j) - m2375getXimpl(j2), m2376getYimpl(j) - m2376getYimpl(j2));
    }

    /* renamed from: plus-vF7b-mM, reason: not valid java name */
    public static final long m2379plusvF7bmM(long j, long j2) {
        return CornerRadiusKt.CornerRadius(m2375getXimpl(j) + m2375getXimpl(j2), m2376getYimpl(j) + m2376getYimpl(j2));
    }

    /* renamed from: times-Bz7bX_o, reason: not valid java name */
    public static final long m2380timesBz7bX_o(long j, float f) {
        return CornerRadiusKt.CornerRadius(m2375getXimpl(j) * f, m2376getYimpl(j) * f);
    }

    /* renamed from: div-Bz7bX_o, reason: not valid java name */
    public static final long m2372divBz7bX_o(long j, float f) {
        return CornerRadiusKt.CornerRadius(m2375getXimpl(j) / f, m2376getYimpl(j) / f);
    }

    public String toString() {
        return m2381toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2381toStringimpl(long j) {
        if (m2375getXimpl(j) == m2376getYimpl(j)) {
            return "CornerRadius.circular(" + GeometryUtilsKt.toStringAsFixed(m2375getXimpl(j), 1) + ')';
        }
        return "CornerRadius.elliptical(" + GeometryUtilsKt.toStringAsFixed(m2375getXimpl(j), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m2376getYimpl(j), 1) + ')';
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final float m2375getXimpl(long j) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final float m2376getYimpl(long j) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j & KeyboardMap.kValueMask));
    }
}
