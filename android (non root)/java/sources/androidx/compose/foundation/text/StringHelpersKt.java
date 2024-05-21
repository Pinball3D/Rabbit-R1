package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextRangeKt;
import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringHelpers.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a\u001c\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"findParagraphEnd", "", "", SpellCheckPlugin.START_INDEX_KEY, "findParagraphStart", "getParagraphBoundary", "Landroidx/compose/ui/text/TextRange;", "index", "(Ljava/lang/CharSequence;I)J", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StringHelpersKt {
    public static final int findParagraphStart(CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        for (int i2 = i - 1; i2 > 0; i2--) {
            if (charSequence.charAt(i2 - 1) == '\n') {
                return i2;
            }
        }
        return 0;
    }

    public static final int findParagraphEnd(CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length();
        for (int i2 = i + 1; i2 < length; i2++) {
            if (charSequence.charAt(i2) == '\n') {
                return i2;
            }
        }
        return charSequence.length();
    }

    public static final long getParagraphBoundary(CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return TextRangeKt.TextRange(findParagraphStart(charSequence, i), findParagraphEnd(charSequence, i));
    }
}
