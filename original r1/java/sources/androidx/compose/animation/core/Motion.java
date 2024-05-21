package androidx.compose.animation.core;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.FloatCompanionObject;

/* compiled from: SpringSimulation.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0081@\u0018\u00002\u00020\u0001B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J*\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\tø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u001bHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u001e"}, d2 = {"Landroidx/compose/animation/core/Motion;", "", "packedValue", "", "constructor-impl", "(J)J", "getPackedValue", "()J", "value", "", "getValue-impl", "(J)F", "velocity", "getVelocity-impl", "copy", "copy-XB9eQnU", "(JFF)J", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(J)I", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Motion {
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Motion m105boximpl(long j) {
        return new Motion(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m106constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m109equalsimpl(long j, Object obj) {
        return (obj instanceof Motion) && j == ((Motion) obj).m115unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m110equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m113hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m114toStringimpl(long j) {
        return "Motion(packedValue=" + j + ')';
    }

    public boolean equals(Object obj) {
        return m109equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m113hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m114toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m115unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ Motion(long j) {
        this.packedValue = j;
    }

    /* renamed from: copy-XB9eQnU, reason: not valid java name */
    public static final long m107copyXB9eQnU(long j, float f, float f2) {
        return SpringSimulationKt.Motion(f, f2);
    }

    /* renamed from: copy-XB9eQnU$default, reason: not valid java name */
    public static /* synthetic */ long m108copyXB9eQnU$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m111getValueimpl(j);
        }
        if ((i & 2) != 0) {
            f2 = m112getVelocityimpl(j);
        }
        return m107copyXB9eQnU(j, f, f2);
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    public static final float m111getValueimpl(long j) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getVelocity-impl, reason: not valid java name */
    public static final float m112getVelocityimpl(long j) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j & KeyboardMap.kValueMask));
    }
}
