package androidx.compose.ui.text.font;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FontStyle.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/text/font/FontStyle;", "", "value", "", "constructor-impl", "(I)I", "getValue", "()I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class FontStyle {
    private final int value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int Normal = m4508constructorimpl(0);
    private static final int Italic = m4508constructorimpl(1);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FontStyle m4507boximpl(int i) {
        return new FontStyle(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m4508constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4509equalsimpl(int i, Object obj) {
        return (obj instanceof FontStyle) && i == ((FontStyle) obj).m4513unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4510equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4511hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m4509equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m4511hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m4513unboximpl() {
        return this.value;
    }

    private /* synthetic */ FontStyle(int i) {
        this.value = i;
    }

    public String toString() {
        return m4512toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4512toStringimpl(int i) {
        return m4510equalsimpl0(i, Normal) ? "Normal" : m4510equalsimpl0(i, Italic) ? "Italic" : "Invalid";
    }

    /* compiled from: FontStyle.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bø\u0001\u0000R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/font/FontStyle$Companion;", "", "()V", "Italic", "Landroidx/compose/ui/text/font/FontStyle;", "getItalic-_-LCdwA", "()I", "I", "Normal", "getNormal-_-LCdwA", "values", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNormal-_-LCdwA, reason: not valid java name */
        public final int m4515getNormal_LCdwA() {
            return FontStyle.Normal;
        }

        /* renamed from: getItalic-_-LCdwA, reason: not valid java name */
        public final int m4514getItalic_LCdwA() {
            return FontStyle.Italic;
        }

        public final List<FontStyle> values() {
            return CollectionsKt.listOf((Object[]) new FontStyle[]{FontStyle.m4507boximpl(m4515getNormal_LCdwA()), FontStyle.m4507boximpl(m4514getItalic_LCdwA())});
        }
    }
}
