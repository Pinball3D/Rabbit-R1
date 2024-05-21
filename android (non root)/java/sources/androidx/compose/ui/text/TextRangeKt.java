package androidx.compose.ui.text;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: TextRange.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\u0010\r\n\u0002\b\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002\u001a'\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001f\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0015"}, d2 = {"TextRange", "Landroidx/compose/ui/text/TextRange;", "index", "", "(I)J", "start", "end", "(II)J", "packWithCheck", "", "coerceIn", "minimumValue", "maximumValue", "coerceIn-8ffj60Q", "(JII)J", "substring", "", "", "range", "substring-FDrldGo", "(Ljava/lang/CharSequence;J)Ljava/lang/String;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextRangeKt {
    /* renamed from: substring-FDrldGo, reason: not valid java name */
    public static final String m4421substringFDrldGo(CharSequence substring, long j) {
        Intrinsics.checkNotNullParameter(substring, "$this$substring");
        return substring.subSequence(TextRange.m4412getMinimpl(j), TextRange.m4411getMaximpl(j)).toString();
    }

    public static final long TextRange(int i, int i2) {
        return TextRange.m4403constructorimpl(packWithCheck(i, i2));
    }

    public static final long TextRange(int i) {
        return TextRange(i, i);
    }

    /* renamed from: coerceIn-8ffj60Q, reason: not valid java name */
    public static final long m4420coerceIn8ffj60Q(long j, int i, int i2) {
        int coerceIn = RangesKt.coerceIn(TextRange.m4414getStartimpl(j), i, i2);
        int coerceIn2 = RangesKt.coerceIn(TextRange.m4409getEndimpl(j), i, i2);
        return (coerceIn == TextRange.m4414getStartimpl(j) && coerceIn2 == TextRange.m4409getEndimpl(j)) ? j : TextRange(coerceIn, coerceIn2);
    }

    private static final long packWithCheck(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException(("start cannot be negative. [start: " + i + ", end: " + i2 + ']').toString());
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(("end cannot be negative. [start: " + i + ", end: " + i2 + ']').toString());
        }
        return (i2 & KeyboardMap.kValueMask) | (i << 32);
    }
}
