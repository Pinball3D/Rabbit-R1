package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: SelectionAdjustment.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b`\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eJ?\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "", "adjust", "Landroidx/compose/ui/text/TextRange;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "newRawSelectionRange", "previousHandleOffset", "", "isStartHandle", "", "previousSelectionRange", "adjust-ZXO7KMw", "(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SelectionAdjustment {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* renamed from: adjust-ZXO7KMw, reason: not valid java name */
    long mo895adjustZXO7KMw(TextLayoutResult textLayoutResult, long newRawSelectionRange, int previousHandleOffset, boolean isStartHandle, TextRange previousSelectionRange);

    /* compiled from: SelectionAdjustment.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J9\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00100\u0015H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;", "", "()V", "Character", "Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "getCharacter", "()Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "CharacterWithWordAccelerate", "getCharacterWithWordAccelerate", "None", "getNone", "Paragraph", "getParagraph", "Word", "getWord", "adjustByBoundary", "Landroidx/compose/ui/text/TextRange;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "newRawSelection", "boundaryFun", "Lkotlin/Function1;", "", "adjustByBoundary--Dv-ylE", "(Landroidx/compose/ui/text/TextLayoutResult;JLkotlin/jvm/functions/Function1;)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final SelectionAdjustment None = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$None$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo895adjustZXO7KMw(TextLayoutResult textLayoutResult, long newRawSelectionRange, int previousHandleOffset, boolean isStartHandle, TextRange previousSelectionRange) {
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                return newRawSelectionRange;
            }
        };
        private static final SelectionAdjustment Character = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Character$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo895adjustZXO7KMw(TextLayoutResult textLayoutResult, long newRawSelectionRange, int previousHandleOffset, boolean isStartHandle, TextRange previousSelectionRange) {
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                if (TextRange.m4408getCollapsedimpl(newRawSelectionRange)) {
                    return SelectionAdjustmentKt.ensureAtLeastOneChar(textLayoutResult.getLayoutInput().getText().getText(), TextRange.m4414getStartimpl(newRawSelectionRange), StringsKt.getLastIndex(textLayoutResult.getLayoutInput().getText()), isStartHandle, previousSelectionRange != null ? TextRange.m4413getReversedimpl(previousSelectionRange.getPackedValue()) : false);
                }
                return newRawSelectionRange;
            }
        };
        private static final SelectionAdjustment Word = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Word$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo895adjustZXO7KMw(TextLayoutResult textLayoutResult, long newRawSelectionRange, int previousHandleOffset, boolean isStartHandle, TextRange previousSelectionRange) {
                long m897adjustByBoundaryDvylE;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                m897adjustByBoundaryDvylE = SelectionAdjustment.Companion.$$INSTANCE.m897adjustByBoundaryDvylE(textLayoutResult, newRawSelectionRange, new SelectionAdjustment$Companion$Word$1$adjust$1(textLayoutResult));
                return m897adjustByBoundaryDvylE;
            }
        };
        private static final SelectionAdjustment Paragraph = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Paragraph$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo895adjustZXO7KMw(TextLayoutResult textLayoutResult, long newRawSelectionRange, int previousHandleOffset, boolean isStartHandle, TextRange previousSelectionRange) {
                long m897adjustByBoundaryDvylE;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                m897adjustByBoundaryDvylE = SelectionAdjustment.Companion.$$INSTANCE.m897adjustByBoundaryDvylE(textLayoutResult, newRawSelectionRange, new SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1(textLayoutResult.getLayoutInput().getText()));
                return m897adjustByBoundaryDvylE;
            }
        };
        private static final SelectionAdjustment CharacterWithWordAccelerate = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$CharacterWithWordAccelerate$1
            private final boolean isExpanding(int newRawOffset, int previousRawOffset, boolean isStart, boolean previousReversed) {
                if (previousRawOffset == -1) {
                    return true;
                }
                if (newRawOffset == previousRawOffset) {
                    return false;
                }
                if (isStart ^ previousReversed) {
                    if (newRawOffset < previousRawOffset) {
                        return true;
                    }
                } else if (newRawOffset > previousRawOffset) {
                    return true;
                }
                return false;
            }

            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo895adjustZXO7KMw(TextLayoutResult textLayoutResult, long newRawSelectionRange, int previousHandleOffset, boolean isStartHandle, TextRange previousSelectionRange) {
                int updateSelectionBoundary;
                int i;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                if (previousSelectionRange == null) {
                    return SelectionAdjustment.Companion.$$INSTANCE.getWord().mo895adjustZXO7KMw(textLayoutResult, newRawSelectionRange, previousHandleOffset, isStartHandle, previousSelectionRange);
                }
                if (TextRange.m4408getCollapsedimpl(newRawSelectionRange)) {
                    return SelectionAdjustmentKt.ensureAtLeastOneChar(textLayoutResult.getLayoutInput().getText().getText(), TextRange.m4414getStartimpl(newRawSelectionRange), StringsKt.getLastIndex(textLayoutResult.getLayoutInput().getText()), isStartHandle, TextRange.m4413getReversedimpl(previousSelectionRange.getPackedValue()));
                }
                if (isStartHandle) {
                    i = updateSelectionBoundary(textLayoutResult, TextRange.m4414getStartimpl(newRawSelectionRange), previousHandleOffset, TextRange.m4414getStartimpl(previousSelectionRange.getPackedValue()), TextRange.m4409getEndimpl(newRawSelectionRange), true, TextRange.m4413getReversedimpl(newRawSelectionRange));
                    updateSelectionBoundary = TextRange.m4409getEndimpl(newRawSelectionRange);
                } else {
                    int m4414getStartimpl = TextRange.m4414getStartimpl(newRawSelectionRange);
                    updateSelectionBoundary = updateSelectionBoundary(textLayoutResult, TextRange.m4409getEndimpl(newRawSelectionRange), previousHandleOffset, TextRange.m4409getEndimpl(previousSelectionRange.getPackedValue()), TextRange.m4414getStartimpl(newRawSelectionRange), false, TextRange.m4413getReversedimpl(newRawSelectionRange));
                    i = m4414getStartimpl;
                }
                return TextRangeKt.TextRange(i, updateSelectionBoundary);
            }

            private final int updateSelectionBoundary(TextLayoutResult textLayoutResult, int newRawOffset, int previousRawOffset, int previousAdjustedOffset, int otherBoundaryOffset, boolean isStart, boolean isReversed) {
                if (newRawOffset == previousRawOffset) {
                    return previousAdjustedOffset;
                }
                int lineForOffset = textLayoutResult.getLineForOffset(newRawOffset);
                if (lineForOffset != textLayoutResult.getLineForOffset(previousAdjustedOffset)) {
                    return snapToWordBoundary(textLayoutResult, newRawOffset, lineForOffset, otherBoundaryOffset, isStart, isReversed);
                }
                return (isExpanding(newRawOffset, previousRawOffset, isStart, isReversed) && isAtWordBoundary(textLayoutResult, previousAdjustedOffset)) ? snapToWordBoundary(textLayoutResult, newRawOffset, lineForOffset, otherBoundaryOffset, isStart, isReversed) : newRawOffset;
            }

            private final int snapToWordBoundary(TextLayoutResult textLayoutResult, int newRawOffset, int currentLine, int otherBoundaryOffset, boolean isStart, boolean isReversed) {
                int lineStart;
                int lineEnd$default;
                long m4388getWordBoundaryjx7JFs = textLayoutResult.m4388getWordBoundaryjx7JFs(newRawOffset);
                if (textLayoutResult.getLineForOffset(TextRange.m4414getStartimpl(m4388getWordBoundaryjx7JFs)) == currentLine) {
                    lineStart = TextRange.m4414getStartimpl(m4388getWordBoundaryjx7JFs);
                } else {
                    lineStart = textLayoutResult.getLineStart(currentLine);
                }
                if (textLayoutResult.getLineForOffset(TextRange.m4409getEndimpl(m4388getWordBoundaryjx7JFs)) == currentLine) {
                    lineEnd$default = TextRange.m4409getEndimpl(m4388getWordBoundaryjx7JFs);
                } else {
                    lineEnd$default = TextLayoutResult.getLineEnd$default(textLayoutResult, currentLine, false, 2, null);
                }
                if (lineStart == otherBoundaryOffset) {
                    return lineEnd$default;
                }
                if (lineEnd$default == otherBoundaryOffset) {
                    return lineStart;
                }
                int i = (lineStart + lineEnd$default) / 2;
                if (isStart ^ isReversed) {
                    if (newRawOffset <= i) {
                        return lineStart;
                    }
                } else if (newRawOffset < i) {
                    return lineStart;
                }
                return lineEnd$default;
            }

            private final boolean isAtWordBoundary(TextLayoutResult textLayoutResult, int i) {
                long m4388getWordBoundaryjx7JFs = textLayoutResult.m4388getWordBoundaryjx7JFs(i);
                return i == TextRange.m4414getStartimpl(m4388getWordBoundaryjx7JFs) || i == TextRange.m4409getEndimpl(m4388getWordBoundaryjx7JFs);
            }
        };

        public final SelectionAdjustment getCharacter() {
            return Character;
        }

        public final SelectionAdjustment getCharacterWithWordAccelerate() {
            return CharacterWithWordAccelerate;
        }

        public final SelectionAdjustment getNone() {
            return None;
        }

        public final SelectionAdjustment getParagraph() {
            return Paragraph;
        }

        public final SelectionAdjustment getWord() {
            return Word;
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: adjustByBoundary--Dv-ylE, reason: not valid java name */
        public final long m897adjustByBoundaryDvylE(TextLayoutResult textLayoutResult, long newRawSelection, Function1<? super Integer, TextRange> boundaryFun) {
            if (textLayoutResult.getLayoutInput().getText().length() == 0) {
                return TextRange.INSTANCE.m4419getZerod9O1mEE();
            }
            int lastIndex = StringsKt.getLastIndex(textLayoutResult.getLayoutInput().getText());
            long packedValue = boundaryFun.invoke(Integer.valueOf(RangesKt.coerceIn(TextRange.m4414getStartimpl(newRawSelection), 0, lastIndex))).getPackedValue();
            long packedValue2 = boundaryFun.invoke(Integer.valueOf(RangesKt.coerceIn(TextRange.m4409getEndimpl(newRawSelection), 0, lastIndex))).getPackedValue();
            return TextRangeKt.TextRange(TextRange.m4413getReversedimpl(newRawSelection) ? TextRange.m4409getEndimpl(packedValue) : TextRange.m4414getStartimpl(packedValue), TextRange.m4413getReversedimpl(newRawSelection) ? TextRange.m4414getStartimpl(packedValue2) : TextRange.m4409getEndimpl(packedValue2));
        }
    }
}
