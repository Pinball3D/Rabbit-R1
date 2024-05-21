package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldSelectionDelegate.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aI\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"getTextFieldSelection", "Landroidx/compose/ui/text/TextRange;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "rawStartOffset", "", "rawEndOffset", "previousSelection", "isStartHandle", "", "adjustment", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "getTextFieldSelection-bb3KNj8", "(Landroidx/compose/ui/text/TextLayoutResult;IILandroidx/compose/ui/text/TextRange;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)J", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldSelectionDelegateKt {
    /* renamed from: getTextFieldSelection-bb3KNj8, reason: not valid java name */
    public static final long m947getTextFieldSelectionbb3KNj8(TextLayoutResult textLayoutResult, int i, int i2, TextRange textRange, boolean z, SelectionAdjustment adjustment) {
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        if (textLayoutResult != null) {
            long TextRange = TextRangeKt.TextRange(i, i2);
            return (textRange == null && Intrinsics.areEqual(adjustment, SelectionAdjustment.INSTANCE.getCharacter())) ? TextRange : adjustment.mo895adjustZXO7KMw(textLayoutResult, TextRange, -1, z, textRange);
        }
        return TextRangeKt.TextRange(0, 0);
    }
}
