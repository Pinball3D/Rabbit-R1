package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: KeyboardType.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/input/KeyboardType;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class KeyboardType {
    private final int value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int Text = m4604constructorimpl(1);
    private static final int Ascii = m4604constructorimpl(2);
    private static final int Number = m4604constructorimpl(3);
    private static final int Phone = m4604constructorimpl(4);
    private static final int Uri = m4604constructorimpl(5);
    private static final int Email = m4604constructorimpl(6);
    private static final int Password = m4604constructorimpl(7);
    private static final int NumberPassword = m4604constructorimpl(8);
    private static final int Decimal = m4604constructorimpl(9);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyboardType m4603boximpl(int i) {
        return new KeyboardType(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m4604constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4605equalsimpl(int i, Object obj) {
        return (obj instanceof KeyboardType) && i == ((KeyboardType) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4606equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4607hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m4605equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4607hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ KeyboardType(int i) {
        this.value = i;
    }

    public String toString() {
        return m4608toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4608toStringimpl(int i) {
        return m4606equalsimpl0(i, Text) ? "Text" : m4606equalsimpl0(i, Ascii) ? "Ascii" : m4606equalsimpl0(i, Number) ? "Number" : m4606equalsimpl0(i, Phone) ? "Phone" : m4606equalsimpl0(i, Uri) ? "Uri" : m4606equalsimpl0(i, Email) ? "Email" : m4606equalsimpl0(i, Password) ? "Password" : m4606equalsimpl0(i, NumberPassword) ? "NumberPassword" : m4606equalsimpl0(i, Decimal) ? "Decimal" : "Invalid";
    }

    /* compiled from: KeyboardType.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R'\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R'\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\u0007R'\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u0007R'\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0007R'\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0007R'\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0007R'\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\u0007R'\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u0007R'\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\u0007\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006!"}, d2 = {"Landroidx/compose/ui/text/input/KeyboardType$Companion;", "", "()V", "Ascii", "Landroidx/compose/ui/text/input/KeyboardType;", "getAscii-PjHm6EE$annotations", "getAscii-PjHm6EE", "()I", "I", "Decimal", "getDecimal-PjHm6EE$annotations", "getDecimal-PjHm6EE", "Email", "getEmail-PjHm6EE$annotations", "getEmail-PjHm6EE", "Number", "getNumber-PjHm6EE$annotations", "getNumber-PjHm6EE", "NumberPassword", "getNumberPassword-PjHm6EE$annotations", "getNumberPassword-PjHm6EE", "Password", "getPassword-PjHm6EE$annotations", "getPassword-PjHm6EE", "Phone", "getPhone-PjHm6EE$annotations", "getPhone-PjHm6EE", "Text", "getText-PjHm6EE$annotations", "getText-PjHm6EE", "Uri", "getUri-PjHm6EE$annotations", "getUri-PjHm6EE", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAscii-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4610getAsciiPjHm6EE$annotations() {
        }

        /* renamed from: getDecimal-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4611getDecimalPjHm6EE$annotations() {
        }

        /* renamed from: getEmail-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4612getEmailPjHm6EE$annotations() {
        }

        /* renamed from: getNumber-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4613getNumberPjHm6EE$annotations() {
        }

        /* renamed from: getNumberPassword-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4614getNumberPasswordPjHm6EE$annotations() {
        }

        /* renamed from: getPassword-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4615getPasswordPjHm6EE$annotations() {
        }

        /* renamed from: getPhone-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4616getPhonePjHm6EE$annotations() {
        }

        /* renamed from: getText-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4617getTextPjHm6EE$annotations() {
        }

        /* renamed from: getUri-PjHm6EE$annotations, reason: not valid java name */
        public static /* synthetic */ void m4618getUriPjHm6EE$annotations() {
        }

        private Companion() {
        }

        /* renamed from: getText-PjHm6EE, reason: not valid java name */
        public final int m4626getTextPjHm6EE() {
            return KeyboardType.Text;
        }

        /* renamed from: getAscii-PjHm6EE, reason: not valid java name */
        public final int m4619getAsciiPjHm6EE() {
            return KeyboardType.Ascii;
        }

        /* renamed from: getNumber-PjHm6EE, reason: not valid java name */
        public final int m4622getNumberPjHm6EE() {
            return KeyboardType.Number;
        }

        /* renamed from: getPhone-PjHm6EE, reason: not valid java name */
        public final int m4625getPhonePjHm6EE() {
            return KeyboardType.Phone;
        }

        /* renamed from: getUri-PjHm6EE, reason: not valid java name */
        public final int m4627getUriPjHm6EE() {
            return KeyboardType.Uri;
        }

        /* renamed from: getEmail-PjHm6EE, reason: not valid java name */
        public final int m4621getEmailPjHm6EE() {
            return KeyboardType.Email;
        }

        /* renamed from: getPassword-PjHm6EE, reason: not valid java name */
        public final int m4624getPasswordPjHm6EE() {
            return KeyboardType.Password;
        }

        /* renamed from: getNumberPassword-PjHm6EE, reason: not valid java name */
        public final int m4623getNumberPasswordPjHm6EE() {
            return KeyboardType.NumberPassword;
        }

        /* renamed from: getDecimal-PjHm6EE, reason: not valid java name */
        public final int m4620getDecimalPjHm6EE() {
            return KeyboardType.Decimal;
        }
    }
}
