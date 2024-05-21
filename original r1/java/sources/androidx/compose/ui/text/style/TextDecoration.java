package androidx.compose.ui.text.style;

import androidx.compose.ui.text.TempListUtilsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextDecoration.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0000H\u0086\u0002J\u0013\u0010\n\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\u0011\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0000H\u0086\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/style/TextDecoration;", "", "mask", "", "(I)V", "getMask", "()I", "contains", "", "other", "equals", "hashCode", "plus", "decoration", "toString", "", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextDecoration {
    public static final int $stable = 0;
    private final int mask;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final TextDecoration None = new TextDecoration(0);
    private static final TextDecoration Underline = new TextDecoration(1);
    private static final TextDecoration LineThrough = new TextDecoration(2);

    public final int getMask() {
        return this.mask;
    }

    public int hashCode() {
        return this.mask;
    }

    public TextDecoration(int i) {
        this.mask = i;
    }

    /* compiled from: TextDecoration.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000e\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u0007¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/style/TextDecoration$Companion;", "", "()V", "LineThrough", "Landroidx/compose/ui/text/style/TextDecoration;", "getLineThrough$annotations", "getLineThrough", "()Landroidx/compose/ui/text/style/TextDecoration;", "None", "getNone$annotations", "getNone", "Underline", "getUnderline$annotations", "getUnderline", "combine", "decorations", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getLineThrough$annotations() {
        }

        public static /* synthetic */ void getNone$annotations() {
        }

        public static /* synthetic */ void getUnderline$annotations() {
        }

        private Companion() {
        }

        public final TextDecoration getNone() {
            return TextDecoration.None;
        }

        public final TextDecoration getUnderline() {
            return TextDecoration.Underline;
        }

        public final TextDecoration getLineThrough() {
            return TextDecoration.LineThrough;
        }

        public final TextDecoration combine(List<TextDecoration> decorations) {
            Intrinsics.checkNotNullParameter(decorations, "decorations");
            int i = 0;
            int size = decorations.size();
            for (int i2 = 0; i2 < size; i2++) {
                i = Integer.valueOf(i.intValue() | decorations.get(i2).getMask());
            }
            return new TextDecoration(i.intValue());
        }
    }

    public final TextDecoration plus(TextDecoration decoration) {
        Intrinsics.checkNotNullParameter(decoration, "decoration");
        return new TextDecoration(this.mask | decoration.mask);
    }

    public final boolean contains(TextDecoration other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int i = this.mask;
        return (other.mask | i) == i;
    }

    public String toString() {
        if (this.mask == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((this.mask & Underline.mask) != 0) {
            arrayList.add("Underline");
        }
        if ((this.mask & LineThrough.mask) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() == 1) {
            return "TextDecoration." + ((String) arrayList.get(0));
        }
        return "TextDecoration[" + TempListUtilsKt.fastJoinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TextDecoration) && this.mask == ((TextDecoration) other).mask;
    }
}
