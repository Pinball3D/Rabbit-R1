package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.IntSizeKt;
import io.sentry.protocol.Device;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGridMeasureResult.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u0006¢\u0006\u0002\u0010\u0017J\t\u00109\u001a\u00020:H\u0096\u0001R\u0014\u0010\u0015\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u001bX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u0019R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0019R\u0012\u0010(\u001a\u00020\u0006X\u0096\u0005¢\u0006\u0006\u001a\u0004\b)\u0010\u0019R\u0014\u0010\u0016\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0019R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0014\u0010\u0012\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\"R\u0014\u0010\u0011\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u0019R\u0014\u0010\u0010\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0019R\u001d\u00100\u001a\u0002018VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b2\u00103R\u0014\u0010\u000f\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u0019R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0012\u00107\u001a\u00020\u0006X\u0096\u0005¢\u0006\u0006\u001a\u0004\b8\u0010\u0019\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006;"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;", "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "firstVisibleLine", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;", "firstVisibleLineScrollOffset", "", "canScrollForward", "", "consumedScroll", "", "measureResult", "visibleItemsInfo", "", "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;", "viewportStartOffset", "viewportEndOffset", "totalItemsCount", "reverseLayout", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "afterContentPadding", "mainAxisItemSpacing", "(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V", "getAfterContentPadding", "()I", "alignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "getAlignmentLines", "()Ljava/util/Map;", "beforeContentPadding", "getBeforeContentPadding", "getCanScrollForward", "()Z", "getConsumedScroll", "()F", "getFirstVisibleLine", "()Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;", "getFirstVisibleLineScrollOffset", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "getMainAxisItemSpacing", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "getReverseLayout", "getTotalItemsCount", "getViewportEndOffset", "viewportSize", "Landroidx/compose/ui/unit/IntSize;", "getViewportSize-YbymL2g", "()J", "getViewportStartOffset", "getVisibleItemsInfo", "()Ljava/util/List;", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "placeChildren", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridMeasureResult implements LazyGridLayoutInfo, MeasureResult {
    private final /* synthetic */ MeasureResult $$delegate_0;
    private final int afterContentPadding;
    private final boolean canScrollForward;
    private final float consumedScroll;
    private final LazyGridMeasuredLine firstVisibleLine;
    private final int firstVisibleLineScrollOffset;
    private final int mainAxisItemSpacing;
    private final Orientation orientation;
    private final boolean reverseLayout;
    private final int totalItemsCount;
    private final int viewportEndOffset;
    private final int viewportStartOffset;
    private final List<LazyGridItemInfo> visibleItemsInfo;

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getAfterContentPadding() {
        return this.afterContentPadding;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public Map<AlignmentLine, Integer> getAlignmentLines() {
        return this.$$delegate_0.getAlignmentLines();
    }

    public final boolean getCanScrollForward() {
        return this.canScrollForward;
    }

    public final float getConsumedScroll() {
        return this.consumedScroll;
    }

    public final LazyGridMeasuredLine getFirstVisibleLine() {
        return this.firstVisibleLine;
    }

    public final int getFirstVisibleLineScrollOffset() {
        return this.firstVisibleLineScrollOffset;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getHeight() {
        return this.$$delegate_0.getHeight();
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getMainAxisItemSpacing() {
        return this.mainAxisItemSpacing;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public Orientation getOrientation() {
        return this.orientation;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public boolean getReverseLayout() {
        return this.reverseLayout;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getTotalItemsCount() {
        return this.totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getViewportEndOffset() {
        return this.viewportEndOffset;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getViewportStartOffset() {
        return this.viewportStartOffset;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public List<LazyGridItemInfo> getVisibleItemsInfo() {
        return this.visibleItemsInfo;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getWidth() {
        return this.$$delegate_0.getWidth();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public void placeChildren() {
        this.$$delegate_0.placeChildren();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridMeasureResult(LazyGridMeasuredLine lazyGridMeasuredLine, int i, boolean z, float f, MeasureResult measureResult, List<? extends LazyGridItemInfo> visibleItemsInfo, int i2, int i3, int i4, boolean z2, Orientation orientation, int i5, int i6) {
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        Intrinsics.checkNotNullParameter(visibleItemsInfo, "visibleItemsInfo");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.firstVisibleLine = lazyGridMeasuredLine;
        this.firstVisibleLineScrollOffset = i;
        this.canScrollForward = z;
        this.consumedScroll = f;
        this.visibleItemsInfo = visibleItemsInfo;
        this.viewportStartOffset = i2;
        this.viewportEndOffset = i3;
        this.totalItemsCount = i4;
        this.reverseLayout = z2;
        this.orientation = orientation;
        this.afterContentPadding = i5;
        this.mainAxisItemSpacing = i6;
        this.$$delegate_0 = measureResult;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* renamed from: getViewportSize-YbymL2g */
    public long mo604getViewportSizeYbymL2g() {
        return IntSizeKt.IntSize(getWidth(), getHeight());
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getBeforeContentPadding() {
        return -getViewportStartOffset();
    }
}
