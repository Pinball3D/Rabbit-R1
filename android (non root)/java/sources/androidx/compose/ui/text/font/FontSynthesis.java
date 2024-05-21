package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FontSynthesis.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u00078@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Landroidx/compose/ui/text/font/FontSynthesis;", "", "value", "", "constructor-impl", "(I)I", "isStyleOn", "", "isStyleOn-impl$ui_text_release", "(I)Z", "isWeightOn", "isWeightOn-impl$ui_text_release", "equals", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class FontSynthesis {
    private final int value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int None = m4517constructorimpl(0);
    private static final int All = m4517constructorimpl(1);
    private static final int Weight = m4517constructorimpl(2);
    private static final int Style = m4517constructorimpl(3);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FontSynthesis m4516boximpl(int i) {
        return new FontSynthesis(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m4517constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4518equalsimpl(int i, Object obj) {
        return (obj instanceof FontSynthesis) && i == ((FontSynthesis) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4519equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4520hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m4518equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4520hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ FontSynthesis(int i) {
        this.value = i;
    }

    public String toString() {
        return m4523toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4523toStringimpl(int i) {
        return m4519equalsimpl0(i, None) ? "None" : m4519equalsimpl0(i, All) ? "All" : m4519equalsimpl0(i, Weight) ? "Weight" : m4519equalsimpl0(i, Style) ? "Style" : "Invalid";
    }

    /* compiled from: FontSynthesis.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/font/FontSynthesis$Companion;", "", "()V", "All", "Landroidx/compose/ui/text/font/FontSynthesis;", "getAll-GVVA2EU", "()I", "I", "None", "getNone-GVVA2EU", "Style", "getStyle-GVVA2EU", "Weight", "getWeight-GVVA2EU", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNone-GVVA2EU, reason: not valid java name */
        public final int m4526getNoneGVVA2EU() {
            return FontSynthesis.None;
        }

        /* renamed from: getAll-GVVA2EU, reason: not valid java name */
        public final int m4525getAllGVVA2EU() {
            return FontSynthesis.All;
        }

        /* renamed from: getWeight-GVVA2EU, reason: not valid java name */
        public final int m4528getWeightGVVA2EU() {
            return FontSynthesis.Weight;
        }

        /* renamed from: getStyle-GVVA2EU, reason: not valid java name */
        public final int m4527getStyleGVVA2EU() {
            return FontSynthesis.Style;
        }
    }

    /* renamed from: isWeightOn-impl$ui_text_release, reason: not valid java name */
    public static final boolean m4522isWeightOnimpl$ui_text_release(int i) {
        return m4519equalsimpl0(i, All) || m4519equalsimpl0(i, Weight);
    }

    /* renamed from: isStyleOn-impl$ui_text_release, reason: not valid java name */
    public static final boolean m4521isStyleOnimpl$ui_text_release(int i) {
        return m4519equalsimpl0(i, All) || m4519equalsimpl0(i, Style);
    }
}
