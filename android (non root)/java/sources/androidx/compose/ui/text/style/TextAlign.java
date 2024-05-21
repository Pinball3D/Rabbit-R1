package androidx.compose.ui.text.style;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextAlign.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/TextAlign;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class TextAlign {
    private final int value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int Left = m4771constructorimpl(1);
    private static final int Right = m4771constructorimpl(2);
    private static final int Center = m4771constructorimpl(3);
    private static final int Justify = m4771constructorimpl(4);
    private static final int Start = m4771constructorimpl(5);
    private static final int End = m4771constructorimpl(6);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextAlign m4770boximpl(int i) {
        return new TextAlign(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m4771constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4772equalsimpl(int i, Object obj) {
        return (obj instanceof TextAlign) && i == ((TextAlign) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4773equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4774hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m4772equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4774hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ TextAlign(int i) {
        this.value = i;
    }

    public String toString() {
        return m4775toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4775toStringimpl(int i) {
        return m4773equalsimpl0(i, Left) ? "Left" : m4773equalsimpl0(i, Right) ? "Right" : m4773equalsimpl0(i, Center) ? "Center" : m4773equalsimpl0(i, Justify) ? "Justify" : m4773equalsimpl0(i, Start) ? "Start" : m4773equalsimpl0(i, End) ? "End" : "Invalid";
    }

    /* compiled from: TextAlign.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013ø\u0001\u0000R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u001c\u0010\u000e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000f\u0010\u0006R\u001c\u0010\u0010\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0011\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/text/style/TextAlign$Companion;", "", "()V", "Center", "Landroidx/compose/ui/text/style/TextAlign;", "getCenter-e0LSkKk", "()I", "I", "End", "getEnd-e0LSkKk", "Justify", "getJustify-e0LSkKk", "Left", "getLeft-e0LSkKk", "Right", "getRight-e0LSkKk", "Start", "getStart-e0LSkKk", "values", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getLeft-e0LSkKk, reason: not valid java name */
        public final int m4780getLefte0LSkKk() {
            return TextAlign.Left;
        }

        /* renamed from: getRight-e0LSkKk, reason: not valid java name */
        public final int m4781getRighte0LSkKk() {
            return TextAlign.Right;
        }

        /* renamed from: getCenter-e0LSkKk, reason: not valid java name */
        public final int m4777getCentere0LSkKk() {
            return TextAlign.Center;
        }

        /* renamed from: getJustify-e0LSkKk, reason: not valid java name */
        public final int m4779getJustifye0LSkKk() {
            return TextAlign.Justify;
        }

        /* renamed from: getStart-e0LSkKk, reason: not valid java name */
        public final int m4782getStarte0LSkKk() {
            return TextAlign.Start;
        }

        /* renamed from: getEnd-e0LSkKk, reason: not valid java name */
        public final int m4778getEnde0LSkKk() {
            return TextAlign.End;
        }

        public final List<TextAlign> values() {
            return CollectionsKt.listOf((Object[]) new TextAlign[]{TextAlign.m4770boximpl(m4780getLefte0LSkKk()), TextAlign.m4770boximpl(m4781getRighte0LSkKk()), TextAlign.m4770boximpl(m4777getCentere0LSkKk()), TextAlign.m4770boximpl(m4779getJustifye0LSkKk()), TextAlign.m4770boximpl(m4782getStarte0LSkKk()), TextAlign.m4770boximpl(m4778getEnde0LSkKk())});
        }
    }
}
