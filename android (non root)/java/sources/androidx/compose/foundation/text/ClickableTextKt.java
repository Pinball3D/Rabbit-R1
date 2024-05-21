package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;

/* compiled from: ClickableText.kt */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u008f\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00062\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014\u001ay\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00062\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016\u001a!\u0010\u0017\u001a\u00020\f*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u001c\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"ClickableText", "", "text", "Landroidx/compose/ui/text/AnnotatedString;", "onHover", "Lkotlin/Function1;", "", "modifier", "Landroidx/compose/ui/Modifier;", "style", "Landroidx/compose/ui/text/TextStyle;", "softWrap", "", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "maxLines", "onTextLayout", "Landroidx/compose/ui/text/TextLayoutResult;", "onClick", "ClickableText-03UYbkw", "(Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "ClickableText-4YKlhWE", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "containsWithinBounds", "Landroidx/compose/ui/text/MultiParagraph;", "positionOffset", "Landroidx/compose/ui/geometry/Offset;", "containsWithinBounds-Uv8p0NA", "(Landroidx/compose/ui/text/MultiParagraph;J)Z", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ClickableTextKt {
    /* JADX WARN: Removed duplicated region for block: B:104:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0098  */
    /* renamed from: ClickableText-4YKlhWE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m755ClickableText4YKlhWE(final androidx.compose.ui.text.AnnotatedString r25, androidx.compose.ui.Modifier r26, androidx.compose.ui.text.TextStyle r27, boolean r28, int r29, int r30, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r31, final kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r32, androidx.compose.runtime.Composer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.ClickableTextKt.m755ClickableText4YKlhWE(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, boolean, int, int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00bb  */
    /* renamed from: ClickableText-03UYbkw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m754ClickableText03UYbkw(final androidx.compose.ui.text.AnnotatedString r25, final kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r26, androidx.compose.ui.Modifier r27, androidx.compose.ui.text.TextStyle r28, boolean r29, int r30, int r31, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r32, final kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r33, androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.ClickableTextKt.m754ClickableText03UYbkw(androidx.compose.ui.text.AnnotatedString, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, boolean, int, int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer ClickableText_03UYbkw$getOffset(MutableState<TextLayoutResult> mutableState, long j) {
        MultiParagraph multiParagraph;
        TextLayoutResult value = mutableState.getValue();
        if (value == null || (multiParagraph = value.getMultiParagraph()) == null) {
            return null;
        }
        if (!m756containsWithinBoundsUv8p0NA(multiParagraph, j)) {
            multiParagraph = null;
        }
        if (multiParagraph != null) {
            return Integer.valueOf(multiParagraph.m4302getOffsetForPositionk4lQ0M(j));
        }
        return null;
    }

    /* renamed from: containsWithinBounds-Uv8p0NA, reason: not valid java name */
    private static final boolean m756containsWithinBoundsUv8p0NA(MultiParagraph multiParagraph, long j) {
        float m2390component1impl = Offset.m2390component1impl(j);
        float m2391component2impl = Offset.m2391component2impl(j);
        return m2390component1impl > 0.0f && m2391component2impl >= 0.0f && m2390component1impl <= multiParagraph.getWidth() && m2391component2impl <= multiParagraph.getHeight();
    }
}
