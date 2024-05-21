package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Path;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.SentryEnvelopeItemHeader;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: MultiParagraph.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0002\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003J\t\u0010%\u001a\u00020\nHÆ\u0003JO\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\nHÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0005HÖ\u0001J\t\u0010+\u001a\u00020,HÖ\u0001J\n\u0010-\u001a\u00020.*\u00020.J\n\u0010-\u001a\u00020/*\u00020/J\u0017\u0010-\u001a\u000200*\u000200ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b1\u00102J\n\u00103\u001a\u00020\u0005*\u00020\u0005J\n\u00104\u001a\u00020\u0005*\u00020\u0005J\n\u00105\u001a\u00020\n*\u00020\nJ\u0017\u00106\u001a\u000207*\u000207ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b8\u00102J\n\u00109\u001a\u00020\u0005*\u00020\u0005J\n\u0010:\u001a\u00020\u0005*\u00020\u0005J\n\u0010;\u001a\u00020\n*\u00020\nR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0012\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0015R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006<"}, d2 = {"Landroidx/compose/ui/text/ParagraphInfo;", "", "paragraph", "Landroidx/compose/ui/text/Paragraph;", SpellCheckPlugin.START_INDEX_KEY, "", SpellCheckPlugin.END_INDEX_KEY, "startLineIndex", "endLineIndex", "top", "", "bottom", "(Landroidx/compose/ui/text/Paragraph;IIIIFF)V", "getBottom", "()F", "setBottom", "(F)V", "getEndIndex", "()I", "getEndLineIndex", "setEndLineIndex", "(I)V", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "getLength", "getParagraph", "()Landroidx/compose/ui/text/Paragraph;", "getStartIndex", "getStartLineIndex", "setStartLineIndex", "getTop", "setTop", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "", "toGlobal", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/graphics/Path;", "Landroidx/compose/ui/text/TextRange;", "toGlobal-GEjPoXI", "(J)J", "toGlobalIndex", "toGlobalLineIndex", "toGlobalYPosition", "toLocal", "Landroidx/compose/ui/geometry/Offset;", "toLocal-MK-Hz9U", "toLocalIndex", "toLocalLineIndex", "toLocalYPosition", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class ParagraphInfo {
    private float bottom;
    private final int endIndex;
    private int endLineIndex;
    private final Paragraph paragraph;
    private final int startIndex;
    private int startLineIndex;
    private float top;

    public static /* synthetic */ ParagraphInfo copy$default(ParagraphInfo paragraphInfo, Paragraph paragraph, int i, int i2, int i3, int i4, float f, float f2, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            paragraph = paragraphInfo.paragraph;
        }
        if ((i5 & 2) != 0) {
            i = paragraphInfo.startIndex;
        }
        int i6 = i;
        if ((i5 & 4) != 0) {
            i2 = paragraphInfo.endIndex;
        }
        int i7 = i2;
        if ((i5 & 8) != 0) {
            i3 = paragraphInfo.startLineIndex;
        }
        int i8 = i3;
        if ((i5 & 16) != 0) {
            i4 = paragraphInfo.endLineIndex;
        }
        int i9 = i4;
        if ((i5 & 32) != 0) {
            f = paragraphInfo.top;
        }
        float f3 = f;
        if ((i5 & 64) != 0) {
            f2 = paragraphInfo.bottom;
        }
        return paragraphInfo.copy(paragraph, i6, i7, i8, i9, f3, f2);
    }

    /* renamed from: component1, reason: from getter */
    public final Paragraph getParagraph() {
        return this.paragraph;
    }

    /* renamed from: component2, reason: from getter */
    public final int getStartIndex() {
        return this.startIndex;
    }

    /* renamed from: component3, reason: from getter */
    public final int getEndIndex() {
        return this.endIndex;
    }

    /* renamed from: component4, reason: from getter */
    public final int getStartLineIndex() {
        return this.startLineIndex;
    }

    /* renamed from: component5, reason: from getter */
    public final int getEndLineIndex() {
        return this.endLineIndex;
    }

    /* renamed from: component6, reason: from getter */
    public final float getTop() {
        return this.top;
    }

    /* renamed from: component7, reason: from getter */
    public final float getBottom() {
        return this.bottom;
    }

    public final ParagraphInfo copy(Paragraph paragraph, int startIndex, int endIndex, int startLineIndex, int endLineIndex, float top, float bottom) {
        Intrinsics.checkNotNullParameter(paragraph, "paragraph");
        return new ParagraphInfo(paragraph, startIndex, endIndex, startLineIndex, endLineIndex, top, bottom);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ParagraphInfo)) {
            return false;
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) other;
        return Intrinsics.areEqual(this.paragraph, paragraphInfo.paragraph) && this.startIndex == paragraphInfo.startIndex && this.endIndex == paragraphInfo.endIndex && this.startLineIndex == paragraphInfo.startLineIndex && this.endLineIndex == paragraphInfo.endLineIndex && Float.compare(this.top, paragraphInfo.top) == 0 && Float.compare(this.bottom, paragraphInfo.bottom) == 0;
    }

    public final float getBottom() {
        return this.bottom;
    }

    public final int getEndIndex() {
        return this.endIndex;
    }

    public final int getEndLineIndex() {
        return this.endLineIndex;
    }

    public final int getLength() {
        return this.endIndex - this.startIndex;
    }

    public final Paragraph getParagraph() {
        return this.paragraph;
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    public final int getStartLineIndex() {
        return this.startLineIndex;
    }

    public final float getTop() {
        return this.top;
    }

    public int hashCode() {
        return (((((((((((this.paragraph.hashCode() * 31) + Integer.hashCode(this.startIndex)) * 31) + Integer.hashCode(this.endIndex)) * 31) + Integer.hashCode(this.startLineIndex)) * 31) + Integer.hashCode(this.endLineIndex)) * 31) + Float.hashCode(this.top)) * 31) + Float.hashCode(this.bottom);
    }

    public final void setBottom(float f) {
        this.bottom = f;
    }

    public final void setEndLineIndex(int i) {
        this.endLineIndex = i;
    }

    public final void setStartLineIndex(int i) {
        this.startLineIndex = i;
    }

    public final void setTop(float f) {
        this.top = f;
    }

    public final int toGlobalIndex(int i) {
        return i + this.startIndex;
    }

    public final int toGlobalLineIndex(int i) {
        return i + this.startLineIndex;
    }

    public final float toGlobalYPosition(float f) {
        return f + this.top;
    }

    public final int toLocalLineIndex(int i) {
        return i - this.startLineIndex;
    }

    public final float toLocalYPosition(float f) {
        return f - this.top;
    }

    public String toString() {
        return "ParagraphInfo(paragraph=" + this.paragraph + ", startIndex=" + this.startIndex + ", endIndex=" + this.endIndex + ", startLineIndex=" + this.startLineIndex + ", endLineIndex=" + this.endLineIndex + ", top=" + this.top + ", bottom=" + this.bottom + ')';
    }

    public ParagraphInfo(Paragraph paragraph, int i, int i2, int i3, int i4, float f, float f2) {
        Intrinsics.checkNotNullParameter(paragraph, "paragraph");
        this.paragraph = paragraph;
        this.startIndex = i;
        this.endIndex = i2;
        this.startLineIndex = i3;
        this.endLineIndex = i4;
        this.top = f;
        this.bottom = f2;
    }

    public /* synthetic */ ParagraphInfo(Paragraph paragraph, int i, int i2, int i3, int i4, float f, float f2, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(paragraph, i, i2, (i5 & 8) != 0 ? -1 : i3, (i5 & 16) != 0 ? -1 : i4, (i5 & 32) != 0 ? -1.0f : f, (i5 & 64) != 0 ? -1.0f : f2);
    }

    public final int toLocalIndex(int i) {
        return RangesKt.coerceIn(i, this.startIndex, this.endIndex) - this.startIndex;
    }

    /* renamed from: toLocal-MK-Hz9U, reason: not valid java name */
    public final long m4311toLocalMKHz9U(long j) {
        return OffsetKt.Offset(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j) - this.top);
    }

    public final Rect toGlobal(Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return rect.m2437translatek4lQ0M(OffsetKt.Offset(0.0f, this.top));
    }

    public final Path toGlobal(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        path.mo2536translatek4lQ0M(OffsetKt.Offset(0.0f, this.top));
        return path;
    }

    /* renamed from: toGlobal-GEjPoXI, reason: not valid java name */
    public final long m4310toGlobalGEjPoXI(long j) {
        return TextRangeKt.TextRange(toGlobalIndex(TextRange.m4414getStartimpl(j)), toGlobalIndex(TextRange.m4409getEndimpl(j)));
    }
}
