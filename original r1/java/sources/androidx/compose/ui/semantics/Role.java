package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/semantics/Role;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Role {
    private final int value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int Button = m4250constructorimpl(0);
    private static final int Checkbox = m4250constructorimpl(1);
    private static final int Switch = m4250constructorimpl(2);
    private static final int RadioButton = m4250constructorimpl(3);
    private static final int Tab = m4250constructorimpl(4);
    private static final int Image = m4250constructorimpl(5);
    private static final int DropdownList = m4250constructorimpl(6);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Role m4249boximpl(int i) {
        return new Role(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m4250constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4251equalsimpl(int i, Object obj) {
        return (obj instanceof Role) && i == ((Role) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4252equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4253hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m4251equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4253hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    /* compiled from: SemanticsProperties.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000f\u0010\u0006R\u001c\u0010\u0010\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0011\u0010\u0006R\u001c\u0010\u0012\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0013\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/semantics/Role$Companion;", "", "()V", "Button", "Landroidx/compose/ui/semantics/Role;", "getButton-o7Vup1c", "()I", "I", "Checkbox", "getCheckbox-o7Vup1c", "DropdownList", "getDropdownList-o7Vup1c", "Image", "getImage-o7Vup1c", "RadioButton", "getRadioButton-o7Vup1c", "Switch", "getSwitch-o7Vup1c", "Tab", "getTab-o7Vup1c", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getButton-o7Vup1c, reason: not valid java name */
        public final int m4256getButtono7Vup1c() {
            return Role.Button;
        }

        /* renamed from: getCheckbox-o7Vup1c, reason: not valid java name */
        public final int m4257getCheckboxo7Vup1c() {
            return Role.Checkbox;
        }

        /* renamed from: getSwitch-o7Vup1c, reason: not valid java name */
        public final int m4261getSwitcho7Vup1c() {
            return Role.Switch;
        }

        /* renamed from: getRadioButton-o7Vup1c, reason: not valid java name */
        public final int m4260getRadioButtono7Vup1c() {
            return Role.RadioButton;
        }

        /* renamed from: getTab-o7Vup1c, reason: not valid java name */
        public final int m4262getTabo7Vup1c() {
            return Role.Tab;
        }

        /* renamed from: getImage-o7Vup1c, reason: not valid java name */
        public final int m4259getImageo7Vup1c() {
            return Role.Image;
        }

        /* renamed from: getDropdownList-o7Vup1c, reason: not valid java name */
        public final int m4258getDropdownListo7Vup1c() {
            return Role.DropdownList;
        }
    }

    private /* synthetic */ Role(int i) {
        this.value = i;
    }

    public String toString() {
        return m4254toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4254toStringimpl(int i) {
        return m4252equalsimpl0(i, Button) ? "Button" : m4252equalsimpl0(i, Checkbox) ? "Checkbox" : m4252equalsimpl0(i, Switch) ? "Switch" : m4252equalsimpl0(i, RadioButton) ? "RadioButton" : m4252equalsimpl0(i, Tab) ? "Tab" : m4252equalsimpl0(i, Image) ? "Image" : m4252equalsimpl0(i, DropdownList) ? "DropdownList" : "Unknown";
    }
}
