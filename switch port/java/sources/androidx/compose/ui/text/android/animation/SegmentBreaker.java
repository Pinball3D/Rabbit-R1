package androidx.compose.ui.text.android.animation;

import android.text.Layout;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.android.LayoutCompatKt;
import androidx.compose.ui.text.android.LayoutHelper;
import java.text.Bidi;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SegmentBreaker.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J$\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/text/android/animation/SegmentBreaker;", "", "()V", "breakInWords", "", "", "layoutHelper", "Landroidx/compose/ui/text/android/LayoutHelper;", "breakOffsets", "segmentType", "Landroidx/compose/ui/text/android/animation/SegmentType;", "breakSegmentWithChar", "Landroidx/compose/ui/text/android/animation/Segment;", "dropSpaces", "", "breakSegmentWithDocument", "breakSegmentWithLine", "breakSegmentWithParagraph", "breakSegmentWithWord", "breakSegments", "breakWithBreakIterator", "text", "", "breaker", "Ljava/text/BreakIterator;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SegmentBreaker {
    public static final SegmentBreaker INSTANCE = new SegmentBreaker();

    /* compiled from: SegmentBreaker.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SegmentType.values().length];
            try {
                iArr[SegmentType.Document.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SegmentType.Paragraph.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SegmentType.Line.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SegmentType.Word.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SegmentType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SegmentBreaker() {
    }

    private final List<Integer> breakInWords(LayoutHelper layoutHelper) {
        CharSequence text = layoutHelper.getLayout().getText();
        Intrinsics.checkNotNullExpressionValue(text, "text");
        BreakIterator lineInstance = BreakIterator.getLineInstance(Locale.getDefault());
        Intrinsics.checkNotNullExpressionValue(lineInstance, "getLineInstance(Locale.getDefault())");
        List<Integer> breakWithBreakIterator = breakWithBreakIterator(text, lineInstance);
        TreeSet treeSet = new TreeSet();
        int size = breakWithBreakIterator.size();
        for (int i = 0; i < size; i++) {
            treeSet.add(Integer.valueOf(breakWithBreakIterator.get(i).intValue()));
        }
        int paragraphCount = layoutHelper.getParagraphCount();
        for (int i2 = 0; i2 < paragraphCount; i2++) {
            Bidi analyzeBidi = layoutHelper.analyzeBidi(i2);
            if (analyzeBidi != null) {
                int paragraphStart = layoutHelper.getParagraphStart(i2);
                int runCount = analyzeBidi.getRunCount();
                for (int i3 = 0; i3 < runCount; i3++) {
                    treeSet.add(Integer.valueOf(analyzeBidi.getRunStart(i3) + paragraphStart));
                }
            }
        }
        return CollectionsKt.toList(treeSet);
    }

    private final List<Integer> breakWithBreakIterator(CharSequence text, BreakIterator breaker) {
        CharSequenceCharacterIterator charSequenceCharacterIterator = new CharSequenceCharacterIterator(text, 0, text.length());
        List<Integer> mutableListOf = CollectionsKt.mutableListOf(0);
        breaker.setText(charSequenceCharacterIterator);
        while (breaker.next() != -1) {
            mutableListOf.add(Integer.valueOf(breaker.current()));
        }
        return mutableListOf;
    }

    public final List<Integer> breakOffsets(LayoutHelper layoutHelper, SegmentType segmentType) {
        Intrinsics.checkNotNullParameter(layoutHelper, "layoutHelper");
        Intrinsics.checkNotNullParameter(segmentType, "segmentType");
        Layout layout = layoutHelper.getLayout();
        CharSequence text = layout.getText();
        int i = WhenMappings.$EnumSwitchMapping$0[segmentType.ordinal()];
        int i2 = 0;
        if (i == 1) {
            return CollectionsKt.listOf((Object[]) new Integer[]{0, Integer.valueOf(text.length())});
        }
        if (i == 2) {
            List<Integer> mutableListOf = CollectionsKt.mutableListOf(0);
            int paragraphCount = layoutHelper.getParagraphCount();
            while (i2 < paragraphCount) {
                mutableListOf.add(Integer.valueOf(layoutHelper.getParagraphEnd(i2)));
                i2++;
            }
            return mutableListOf;
        }
        if (i == 3) {
            List<Integer> mutableListOf2 = CollectionsKt.mutableListOf(0);
            int lineCount = layout.getLineCount();
            while (i2 < lineCount) {
                mutableListOf2.add(Integer.valueOf(layout.getLineEnd(i2)));
                i2++;
            }
            return mutableListOf2;
        }
        if (i == 4) {
            return breakInWords(layoutHelper);
        }
        if (i != 5) {
            throw new NoWhenBranchMatchedException();
        }
        Intrinsics.checkNotNullExpressionValue(text, "text");
        BreakIterator characterInstance = BreakIterator.getCharacterInstance(Locale.getDefault());
        Intrinsics.checkNotNullExpressionValue(characterInstance, "getCharacterInstance(Locale.getDefault())");
        return breakWithBreakIterator(text, characterInstance);
    }

    public final List<Segment> breakSegments(LayoutHelper layoutHelper, SegmentType segmentType, boolean dropSpaces) {
        Intrinsics.checkNotNullParameter(layoutHelper, "layoutHelper");
        Intrinsics.checkNotNullParameter(segmentType, "segmentType");
        int i = WhenMappings.$EnumSwitchMapping$0[segmentType.ordinal()];
        if (i == 1) {
            return breakSegmentWithDocument(layoutHelper);
        }
        if (i == 2) {
            return breakSegmentWithParagraph(layoutHelper);
        }
        if (i == 3) {
            return breakSegmentWithLine(layoutHelper, dropSpaces);
        }
        if (i == 4) {
            return breakSegmentWithWord(layoutHelper, dropSpaces);
        }
        if (i == 5) {
            return breakSegmentWithChar(layoutHelper, dropSpaces);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final List<Segment> breakSegmentWithDocument(LayoutHelper layoutHelper) {
        return CollectionsKt.listOf(new Segment(0, layoutHelper.getLayout().getText().length(), 0, 0, layoutHelper.getLayout().getWidth(), layoutHelper.getLayout().getHeight()));
    }

    private final List<Segment> breakSegmentWithParagraph(LayoutHelper layoutHelper) {
        ArrayList arrayList = new ArrayList();
        Layout layout = layoutHelper.getLayout();
        int paragraphCount = layoutHelper.getParagraphCount();
        for (int i = 0; i < paragraphCount; i++) {
            int paragraphStart = layoutHelper.getParagraphStart(i);
            int paragraphEnd = layoutHelper.getParagraphEnd(i);
            arrayList.add(new Segment(paragraphStart, paragraphEnd, 0, layout.getLineTop(LayoutCompatKt.getLineForOffset(layout, paragraphStart, false)), layout.getWidth(), layout.getLineBottom(LayoutCompatKt.getLineForOffset(layout, paragraphEnd, true))));
        }
        return arrayList;
    }

    private final List<Segment> breakSegmentWithLine(LayoutHelper layoutHelper, boolean dropSpaces) {
        ArrayList arrayList = new ArrayList();
        Layout layout = layoutHelper.getLayout();
        int lineCount = layoutHelper.getLayout().getLineCount();
        for (int i = 0; i < lineCount; i++) {
            arrayList.add(new Segment(layout.getLineStart(i), layout.getLineEnd(i), dropSpaces ? (int) Math.ceil(layout.getLineLeft(i)) : 0, layout.getLineTop(i), dropSpaces ? (int) Math.ceil(layout.getLineRight(i)) : layout.getWidth(), layout.getLineBottom(i)));
        }
        return arrayList;
    }

    private final List<Segment> breakSegmentWithWord(LayoutHelper layoutHelper, boolean dropSpaces) {
        int i;
        Layout layout = layoutHelper.getLayout();
        int ceil = (int) Math.ceil(layout.getPaint().measureText(" "));
        List<Integer> breakOffsets = breakOffsets(layoutHelper, SegmentType.Word);
        if (breakOffsets.size() != 0) {
            boolean z = true;
            if (breakOffsets.size() != 1) {
                ArrayList arrayList = new ArrayList();
                boolean z2 = false;
                Integer num = breakOffsets.get(0);
                int lastIndex = CollectionsKt.getLastIndex(breakOffsets);
                int i2 = 0;
                while (i2 < lastIndex) {
                    i2++;
                    Integer num2 = breakOffsets.get(i2);
                    int intValue = num2.intValue();
                    int intValue2 = num.intValue();
                    int lineForOffset = LayoutCompatKt.getLineForOffset(layout, intValue2, z2);
                    boolean z3 = layout.getParagraphDirection(lineForOffset) == -1 ? z : z2;
                    boolean isRtlCharAt = layout.isRtlCharAt(intValue2);
                    int ceil2 = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue2, isRtlCharAt == z3 ? z : z2, z2));
                    int ceil3 = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue, isRtlCharAt == z3 ? z : false, z));
                    int min = Math.min(ceil2, ceil3);
                    int max = Math.max(ceil2, ceil3);
                    if (dropSpaces && intValue != 0 && layout.getText().charAt(intValue - 1) == ' ') {
                        i = lineForOffset;
                        if (layout.getLineEnd(i) != intValue) {
                            if (isRtlCharAt) {
                                min += ceil;
                            } else {
                                max -= ceil;
                            }
                        }
                    } else {
                        i = lineForOffset;
                    }
                    arrayList.add(new Segment(intValue2, intValue, min, layout.getLineTop(i), max, layout.getLineBottom(i)));
                    num = num2;
                    z = true;
                    z2 = false;
                }
                return arrayList;
            }
        }
        return CollectionsKt.emptyList();
    }

    private final List<Segment> breakSegmentWithChar(LayoutHelper layoutHelper, boolean dropSpaces) {
        ArrayList arrayList = new ArrayList();
        List<Integer> breakOffsets = breakOffsets(layoutHelper, SegmentType.Character);
        if (breakOffsets.size() == 0 || breakOffsets.size() == 1) {
            CollectionsKt.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList();
            boolean z = false;
            Integer num = breakOffsets.get(0);
            int lastIndex = CollectionsKt.getLastIndex(breakOffsets);
            int i = 0;
            while (i < lastIndex) {
                i++;
                Integer num2 = breakOffsets.get(i);
                int intValue = num2.intValue();
                int intValue2 = num.intValue();
                Layout layout = layoutHelper.getLayout();
                if (!dropSpaces || intValue != intValue2 + 1 || !layoutHelper.isLineEndSpace(layout.getText().charAt(intValue2))) {
                    int lineForOffset = LayoutCompatKt.getLineForOffset(layout, intValue2, z);
                    boolean z2 = layout.getParagraphDirection(lineForOffset) == -1 ? true : z;
                    boolean isRtlCharAt = layout.isRtlCharAt(intValue2);
                    int ceil = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue2, isRtlCharAt == z2 ? true : z, z));
                    int ceil2 = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue, isRtlCharAt == z2, true));
                    arrayList.add(new Segment(intValue2, intValue, Math.min(ceil, ceil2), layout.getLineTop(lineForOffset), Math.max(ceil, ceil2), layout.getLineBottom(lineForOffset)));
                }
                arrayList2.add(Unit.INSTANCE);
                num = num2;
                z = false;
            }
        }
        return arrayList;
    }
}
