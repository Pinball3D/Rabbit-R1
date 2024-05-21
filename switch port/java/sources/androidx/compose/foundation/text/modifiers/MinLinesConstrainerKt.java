package androidx.compose.foundation.text.modifiers;

import kotlin.Metadata;
import kotlin.text.StringsKt;

/* compiled from: MinLinesConstrainer.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"DefaultWidthCharCount", "", "EmptyTextReplacement", "", "TwoLineTextReplacement", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MinLinesConstrainerKt {
    private static final int DefaultWidthCharCount = 10;
    private static final String EmptyTextReplacement;
    private static final String TwoLineTextReplacement;

    static {
        String repeat = StringsKt.repeat("H", 10);
        EmptyTextReplacement = repeat;
        TwoLineTextReplacement = repeat + '\n' + repeat;
    }
}
