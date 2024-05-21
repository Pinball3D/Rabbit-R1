package androidx.compose.ui.hapticfeedback;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: HapticFeedbackType.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class HapticFeedbackType {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int value;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ HapticFeedbackType m3289boximpl(int i) {
        return new HapticFeedbackType(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m3290constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m3291equalsimpl(int i, Object obj) {
        return (obj instanceof HapticFeedbackType) && i == ((HapticFeedbackType) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3292equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m3293hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m3291equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3293hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ HapticFeedbackType(int i) {
        this.value = i;
    }

    public String toString() {
        return m3294toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m3294toStringimpl(int i) {
        Companion companion = INSTANCE;
        return m3292equalsimpl0(i, companion.m3296getLongPress5zf0vsI()) ? "LongPress" : m3292equalsimpl0(i, companion.m3297getTextHandleMove5zf0vsI()) ? "TextHandleMove" : "Invalid";
    }

    /* compiled from: HapticFeedbackType.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nø\u0001\u0000R\u001a\u0010\u0003\u001a\u00020\u00048Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00048Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;", "", "()V", "LongPress", "Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;", "getLongPress-5zf0vsI", "()I", "TextHandleMove", "getTextHandleMove-5zf0vsI", "values", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getLongPress-5zf0vsI, reason: not valid java name */
        public final int m3296getLongPress5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m3298getLongPress5zf0vsI();
        }

        /* renamed from: getTextHandleMove-5zf0vsI, reason: not valid java name */
        public final int m3297getTextHandleMove5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m3299getTextHandleMove5zf0vsI();
        }

        public final List<HapticFeedbackType> values() {
            return CollectionsKt.listOf((Object[]) new HapticFeedbackType[]{HapticFeedbackType.m3289boximpl(m3296getLongPress5zf0vsI()), HapticFeedbackType.m3289boximpl(m3297getTextHandleMove5zf0vsI())});
        }
    }
}
