package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import io.sentry.protocol.Device;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridMeasureResult.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0086\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u000eø\u0001\u0000¢\u0006\u0002\u0010\u0019J\t\u0010=\u001a\u00020>H\u0096\u0001R\u0014\u0010\u0017\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000e0\u001dX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010\u0016\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u0012\u0010*\u001a\u00020\u000eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b+\u0010\u001bR\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010#R\u0014\u0010\u0018\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001bR\u0011\u0010\b\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0014\u0010/\u001a\u000200X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001bR\u0014\u0010\u0015\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001bR\u001f\u0010\u0012\u001a\u00020\u0013X\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u00107\u001a\u0004\b5\u00106R\u0014\u0010\u0014\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\u001bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0012\u0010;\u001a\u00020\u000eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b<\u0010\u001b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006?"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "firstVisibleItemIndices", "", "firstVisibleItemScrollOffsets", "consumedScroll", "", "measureResult", "canScrollForward", "", "canScrollBackward", "isVertical", "totalItemsCount", "", "visibleItemsInfo", "", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;", "viewportSize", "Landroidx/compose/ui/unit/IntSize;", "viewportStartOffset", "viewportEndOffset", "beforeContentPadding", "afterContentPadding", "mainAxisItemSpacing", "([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAfterContentPadding", "()I", "alignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "getAlignmentLines", "()Ljava/util/Map;", "getBeforeContentPadding", "getCanScrollBackward", "()Z", "getCanScrollForward", "getConsumedScroll", "()F", "getFirstVisibleItemIndices", "()[I", "getFirstVisibleItemScrollOffsets", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "getMainAxisItemSpacing", "getMeasureResult", "()Landroidx/compose/ui/layout/MeasureResult;", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "getTotalItemsCount", "getViewportEndOffset", "getViewportSize-YbymL2g", "()J", "J", "getViewportStartOffset", "getVisibleItemsInfo", "()Ljava/util/List;", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "placeChildren", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasureResult implements LazyStaggeredGridLayoutInfo, MeasureResult {
    private final int afterContentPadding;
    private final int beforeContentPadding;
    private final boolean canScrollBackward;
    private final boolean canScrollForward;
    private final float consumedScroll;
    private final int[] firstVisibleItemIndices;
    private final int[] firstVisibleItemScrollOffsets;
    private final boolean isVertical;
    private final int mainAxisItemSpacing;
    private final MeasureResult measureResult;
    private final Orientation orientation;
    private final int totalItemsCount;
    private final int viewportEndOffset;
    private final long viewportSize;
    private final int viewportStartOffset;
    private final List<LazyStaggeredGridItemInfo> visibleItemsInfo;

    public /* synthetic */ LazyStaggeredGridMeasureResult(int[] iArr, int[] iArr2, float f, MeasureResult measureResult, boolean z, boolean z2, boolean z3, int i, List list, long j, int i2, int i3, int i4, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr, iArr2, f, measureResult, z, z2, z3, i, list, j, i2, i3, i4, i5, i6);
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public int getAfterContentPadding() {
        return this.afterContentPadding;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public Map<AlignmentLine, Integer> getAlignmentLines() {
        return this.measureResult.getAlignmentLines();
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public int getBeforeContentPadding() {
        return this.beforeContentPadding;
    }

    public final boolean getCanScrollBackward() {
        return this.canScrollBackward;
    }

    public final boolean getCanScrollForward() {
        return this.canScrollForward;
    }

    public final float getConsumedScroll() {
        return this.consumedScroll;
    }

    public final int[] getFirstVisibleItemIndices() {
        return this.firstVisibleItemIndices;
    }

    public final int[] getFirstVisibleItemScrollOffsets() {
        return this.firstVisibleItemScrollOffsets;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getHeight() {
        return this.measureResult.getHeight();
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public int getMainAxisItemSpacing() {
        return this.mainAxisItemSpacing;
    }

    public final MeasureResult getMeasureResult() {
        return this.measureResult;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public Orientation getOrientation() {
        return this.orientation;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public int getTotalItemsCount() {
        return this.totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public int getViewportEndOffset() {
        return this.viewportEndOffset;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* renamed from: getViewportSize-YbymL2g, reason: from getter */
    public long getViewportSize() {
        return this.viewportSize;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public int getViewportStartOffset() {
        return this.viewportStartOffset;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    public List<LazyStaggeredGridItemInfo> getVisibleItemsInfo() {
        return this.visibleItemsInfo;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getWidth() {
        return this.measureResult.getWidth();
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public void placeChildren() {
        this.measureResult.placeChildren();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private LazyStaggeredGridMeasureResult(int[] firstVisibleItemIndices, int[] firstVisibleItemScrollOffsets, float f, MeasureResult measureResult, boolean z, boolean z2, boolean z3, int i, List<? extends LazyStaggeredGridItemInfo> visibleItemsInfo, long j, int i2, int i3, int i4, int i5, int i6) {
        Intrinsics.checkNotNullParameter(firstVisibleItemIndices, "firstVisibleItemIndices");
        Intrinsics.checkNotNullParameter(firstVisibleItemScrollOffsets, "firstVisibleItemScrollOffsets");
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        Intrinsics.checkNotNullParameter(visibleItemsInfo, "visibleItemsInfo");
        this.firstVisibleItemIndices = firstVisibleItemIndices;
        this.firstVisibleItemScrollOffsets = firstVisibleItemScrollOffsets;
        this.consumedScroll = f;
        this.measureResult = measureResult;
        this.canScrollForward = z;
        this.canScrollBackward = z2;
        this.isVertical = z3;
        this.totalItemsCount = i;
        this.visibleItemsInfo = visibleItemsInfo;
        this.viewportSize = j;
        this.viewportStartOffset = i2;
        this.viewportEndOffset = i3;
        this.beforeContentPadding = i4;
        this.afterContentPadding = i5;
        this.mainAxisItemSpacing = i6;
        this.orientation = z3 ? Orientation.Vertical : Orientation.Horizontal;
    }
}
