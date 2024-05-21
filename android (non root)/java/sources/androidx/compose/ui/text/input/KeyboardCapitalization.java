package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: KeyboardCapitalization.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/input/KeyboardCapitalization;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class KeyboardCapitalization {
    private final int value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int None = m4589constructorimpl(0);
    private static final int Characters = m4589constructorimpl(1);
    private static final int Words = m4589constructorimpl(2);
    private static final int Sentences = m4589constructorimpl(3);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyboardCapitalization m4588boximpl(int i) {
        return new KeyboardCapitalization(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m4589constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4590equalsimpl(int i, Object obj) {
        return (obj instanceof KeyboardCapitalization) && i == ((KeyboardCapitalization) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4591equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4592hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m4590equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4592hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ KeyboardCapitalization(int i) {
        this.value = i;
    }

    public String toString() {
        return m4593toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4593toStringimpl(int i) {
        return m4591equalsimpl0(i, None) ? "None" : m4591equalsimpl0(i, Characters) ? "Characters" : m4591equalsimpl0(i, Words) ? "Words" : m4591equalsimpl0(i, Sentences) ? "Sentences" : "Invalid";
    }

    /* compiled from: KeyboardCapitalization.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R'\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R'\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\u0007R'\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u0007R'\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0007\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;", "", "()V", "Characters", "Landroidx/compose/ui/text/input/KeyboardCapitalization;", "getCharacters-IUNYP9k$annotations", "getCharacters-IUNYP9k", "()I", "I", "None", "getNone-IUNYP9k$annotations", "getNone-IUNYP9k", "Sentences", "getSentences-IUNYP9k$annotations", "getSentences-IUNYP9k", "Words", "getWords-IUNYP9k$annotations", "getWords-IUNYP9k", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCharacters-IUNYP9k$annotations, reason: not valid java name */
        public static /* synthetic */ void m4595getCharactersIUNYP9k$annotations() {
        }

        /* renamed from: getNone-IUNYP9k$annotations, reason: not valid java name */
        public static /* synthetic */ void m4596getNoneIUNYP9k$annotations() {
        }

        /* renamed from: getSentences-IUNYP9k$annotations, reason: not valid java name */
        public static /* synthetic */ void m4597getSentencesIUNYP9k$annotations() {
        }

        /* renamed from: getWords-IUNYP9k$annotations, reason: not valid java name */
        public static /* synthetic */ void m4598getWordsIUNYP9k$annotations() {
        }

        private Companion() {
        }

        /* renamed from: getNone-IUNYP9k, reason: not valid java name */
        public final int m4600getNoneIUNYP9k() {
            return KeyboardCapitalization.None;
        }

        /* renamed from: getCharacters-IUNYP9k, reason: not valid java name */
        public final int m4599getCharactersIUNYP9k() {
            return KeyboardCapitalization.Characters;
        }

        /* renamed from: getWords-IUNYP9k, reason: not valid java name */
        public final int m4602getWordsIUNYP9k() {
            return KeyboardCapitalization.Words;
        }

        /* renamed from: getSentences-IUNYP9k, reason: not valid java name */
        public final int m4601getSentencesIUNYP9k() {
            return KeyboardCapitalization.Sentences;
        }
    }
}
