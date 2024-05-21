package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* compiled from: PointerInputEventProcessor.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0081@\u0018\u00002\u00020\u0001B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Landroidx/compose/ui/input/pointer/ProcessResult;", "", "value", "", "constructor-impl", "(I)I", "anyMovementConsumed", "", "getAnyMovementConsumed-impl", "(I)Z", "dispatchedToAPointerInputModifier", "getDispatchedToAPointerInputModifier-impl", "equals", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class ProcessResult {
    private final int value;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ProcessResult m3840boximpl(int i) {
        return new ProcessResult(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m3841constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m3842equalsimpl(int i, Object obj) {
        return (obj instanceof ProcessResult) && i == ((ProcessResult) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3843equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: getAnyMovementConsumed-impl, reason: not valid java name */
    public static final boolean m3844getAnyMovementConsumedimpl(int i) {
        return (i & 2) != 0;
    }

    /* renamed from: getDispatchedToAPointerInputModifier-impl, reason: not valid java name */
    public static final boolean m3845getDispatchedToAPointerInputModifierimpl(int i) {
        return (i & 1) != 0;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m3846hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m3847toStringimpl(int i) {
        return "ProcessResult(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m3842equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3846hashCodeimpl(this.value);
    }

    public String toString() {
        return m3847toStringimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ ProcessResult(int i) {
        this.value = i;
    }
}
