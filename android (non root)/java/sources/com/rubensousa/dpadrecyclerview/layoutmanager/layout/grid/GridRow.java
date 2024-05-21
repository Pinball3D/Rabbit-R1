package com.rubensousa.dpadrecyclerview.layoutmanager.layout.grid;

import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GridRow.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0000¢\u0006\u0002\u0010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J&\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u0000J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010$\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005J\u001e\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010'\u001a\u00020 J\u000e\u0010(\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005J\u0006\u0010)\u001a\u00020\u0005J\u0006\u0010*\u001a\u00020\u0005J\u0006\u0010+\u001a\u00020\u0005J\u0006\u0010,\u001a\u00020\u0005J\b\u0010-\u001a\u00020\u0005H\u0016J\u0006\u0010.\u001a\u00020 J\u000e\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u00020\u0005J&\u00101\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0005J\b\u00104\u001a\u00020\u0019H\u0002J\u000e\u00105\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u0005J\b\u00107\u001a\u000208H\u0016J(\u00109\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0002R\u001e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000bR\u001e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000bR\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridRow;", "", "row", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridRow;)V", "numberOfSpans", "", ViewHierarchyNode.JsonKeys.WIDTH, "(II)V", "<set-?>", SpellCheckPlugin.END_INDEX_KEY, "getEndIndex", "()I", "endOffset", "getEndOffset", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "getNumberOfSpans", "positions", "", "spanBorders", SpellCheckPlugin.START_INDEX_KEY, "getStartIndex", "startOffset", "getStartOffset", "append", "", "viewSize", "viewPosition", "spanIndex", "spanSize", "copy", "equals", "", "other", "getFirstPosition", "getLastPosition", "getPositionAt", "getSpaceForSpanRange", "startSpan", "reverseLayout", "getSpanBorder", "getSpanEndOffset", "getSpanSpace", "getSpanStartOffset", "getWidth", "hashCode", "isEmpty", "offsetBy", "dy", "prepend", "reset", "keyline", "resetSpans", "setWidth", "newWidth", "toString", "", "updateSpans", "position", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GridRow {
    private int endIndex;
    private int endOffset;
    private int height;
    private final int numberOfSpans;
    private final int[] positions;
    private final int[] spanBorders;
    private int startIndex;
    private int startOffset;
    private int width;

    public final int getEndIndex() {
        return this.endIndex;
    }

    public final int getEndOffset() {
        return this.endOffset;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getNumberOfSpans() {
        return this.numberOfSpans;
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    public final int getStartOffset() {
        return this.startOffset;
    }

    public final int getWidth() {
        return this.width;
    }

    public final boolean isEmpty() {
        return this.startIndex == -1 && this.endIndex == -1;
    }

    public final void offsetBy(int dy) {
        this.startOffset += dy;
        this.endOffset += dy;
    }

    public GridRow(int i, int i2) {
        this.numberOfSpans = i;
        this.width = i2;
        this.startIndex = -1;
        this.endIndex = -1;
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = -1;
        }
        this.positions = iArr;
        int i4 = this.numberOfSpans + 1;
        int[] iArr2 = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            iArr2[i5] = 0;
        }
        this.spanBorders = iArr2;
        setWidth(this.width);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GridRow(GridRow row) {
        this(row.numberOfSpans, row.width);
        Intrinsics.checkNotNullParameter(row, "row");
        copy(row);
    }

    public final void copy(GridRow row) {
        Intrinsics.checkNotNullParameter(row, "row");
        this.startIndex = row.startIndex;
        this.endIndex = row.endIndex;
        this.height = row.height;
        this.startOffset = row.startOffset;
        this.endOffset = row.endOffset;
        int i = this.numberOfSpans;
        for (int i2 = 0; i2 < i; i2++) {
            this.positions[i2] = row.getPositionAt(i2);
            this.spanBorders[i2] = row.getSpanBorder(i2);
        }
        int[] iArr = this.spanBorders;
        int i3 = this.numberOfSpans;
        iArr[i3] = row.getSpanBorder(i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[LOOP:0: B:4:0x0011->B:11:0x0026, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setWidth(int r8) {
        /*
            r7 = this;
            r7.width = r8
            int[] r0 = r7.spanBorders
            r1 = 0
            r0[r1] = r1
            int r0 = r7.numberOfSpans
            int r2 = r8 / r0
            int r8 = r8 % r0
            r3 = 1
            if (r3 > r0) goto L29
            r4 = r3
            r3 = r1
        L11:
            int r1 = r1 + r8
            if (r1 <= 0) goto L1e
            int r5 = r7.numberOfSpans
            int r6 = r5 - r1
            if (r6 >= r8) goto L1e
            int r6 = r2 + 1
            int r1 = r1 - r5
            goto L1f
        L1e:
            r6 = r2
        L1f:
            int r3 = r3 + r6
            int[] r5 = r7.spanBorders
            r5[r4] = r3
            if (r4 == r0) goto L29
            int r4 = r4 + 1
            goto L11
        L29:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rubensousa.dpadrecyclerview.layoutmanager.layout.grid.GridRow.setWidth(int):void");
    }

    public final int getSpanBorder(int spanIndex) {
        return this.spanBorders[spanIndex];
    }

    public final int getSpaceForSpanRange(int startSpan, int spanSize, boolean reverseLayout) {
        if (!reverseLayout) {
            int[] iArr = this.spanBorders;
            return iArr[spanSize + startSpan] - iArr[startSpan];
        }
        int[] iArr2 = this.spanBorders;
        int i = this.numberOfSpans;
        return iArr2[i - startSpan] - iArr2[(i - startSpan) - spanSize];
    }

    public final int getSpanSpace() {
        return this.width / this.numberOfSpans;
    }

    public final int getPositionAt(int spanIndex) {
        return this.positions[spanIndex];
    }

    public final int getFirstPosition() {
        int i = this.startIndex;
        if (i == -1) {
            return -1;
        }
        return this.positions[i];
    }

    public final int getLastPosition() {
        int i = this.endIndex;
        if (i == -1) {
            return -1;
        }
        return this.positions[i];
    }

    public final int getSpanStartOffset() {
        int i = this.startIndex;
        if (i == -1) {
            return 0;
        }
        return getSpanBorder(i);
    }

    public final int getSpanEndOffset() {
        int i = this.endIndex;
        if (i == -1) {
            return 0;
        }
        return getSpanBorder(i + 1);
    }

    public final void append(int viewSize, int viewPosition, int spanIndex, int spanSize) {
        this.endIndex = (spanIndex + spanSize) - 1;
        updateSpans(viewSize, viewPosition, spanIndex, spanSize);
        this.endOffset = this.startOffset + this.height;
        if (this.startIndex == -1) {
            this.startIndex = spanIndex;
        }
    }

    public final void prepend(int viewSize, int viewPosition, int spanIndex, int spanSize) {
        this.startIndex = spanIndex;
        updateSpans(viewSize, viewPosition, spanIndex, spanSize);
        this.startOffset = this.endOffset - this.height;
        if (this.endIndex == -1) {
            this.endIndex = (spanIndex + spanSize) - 1;
        }
    }

    public final void reset(int keyline) {
        this.startOffset = keyline;
        this.endOffset = keyline;
        resetSpans();
    }

    private final void resetSpans() {
        int i = this.numberOfSpans;
        for (int i2 = 0; i2 < i; i2++) {
            this.positions[i2] = -1;
        }
        this.height = 0;
        this.startIndex = -1;
        this.endIndex = -1;
    }

    private final void updateSpans(int viewSize, int position, int spanIndex, int spanSize) {
        this.height = Math.max(viewSize, this.height);
        int i = spanSize + spanIndex;
        while (spanIndex < i) {
            this.positions[spanIndex] = position;
            spanIndex++;
        }
    }

    public boolean equals(Object other) {
        if (!(other instanceof GridRow)) {
            return false;
        }
        int i = this.numberOfSpans;
        GridRow gridRow = (GridRow) other;
        if (i != gridRow.numberOfSpans || this.width != gridRow.width) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (getPositionAt(i2) != gridRow.getPositionAt(i2)) {
                return false;
            }
        }
        return this.startIndex == gridRow.startIndex && this.endIndex == gridRow.endIndex && this.startOffset == gridRow.startOffset && this.height == gridRow.height;
    }

    public int hashCode() {
        return (((((((((((this.numberOfSpans * 31) + this.width) * 31) + this.startIndex) * 31) + this.endIndex) * 31) + this.height) * 31) + this.startOffset) * 31) + Arrays.hashCode(this.positions);
    }

    public String toString() {
        StringBuilder append = new StringBuilder("GridRow(startIndex=").append(this.startIndex).append(", endIndex=").append(this.endIndex).append(", height=").append(this.height).append(", startOffset=").append(this.startOffset).append(", endOffset=").append(this.endOffset).append(", positions=");
        String arrays = Arrays.toString(this.positions);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
        return append.append(arrays).append(')').toString();
    }
}
