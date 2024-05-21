package androidx.compose.foundation.pager;

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

/* compiled from: PagerMeasureResult.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0087\u0001\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0002¢\u0006\u0002\u0010\u0019J\t\u0010>\u001a\u00020?H\u0096\u0001R\u0014\u0010\n\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00070\u001dX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u001bR\u0011\u0010\u0017\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010\u0016\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001bR\u0012\u0010,\u001a\u00020\u0007X\u0096\u0005¢\u0006\u0006\u001a\u0004\b-\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0014\u0010\b\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001bR\u0014\u0010\t\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001bR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001bR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010$R\u0014\u0010\u000e\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001bR\u001d\u00105\u001a\u0002068VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b7\u00108R\u0014\u0010\r\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u001bR\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0012\u0010<\u001a\u00020\u0007X\u0096\u0005¢\u0006\u0006\u001a\u0004\b=\u0010\u001b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006@"}, d2 = {"Landroidx/compose/foundation/pager/PagerMeasureResult;", "Landroidx/compose/foundation/pager/PagerLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "visiblePagesInfo", "", "Landroidx/compose/foundation/pager/PageInfo;", "pagesCount", "", "pageSize", "pageSpacing", "afterContentPadding", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "viewportStartOffset", "viewportEndOffset", "reverseLayout", "", "consumedScroll", "", "firstVisiblePage", "Landroidx/compose/foundation/pager/MeasuredPage;", "closestPageToSnapPosition", "firstVisiblePageOffset", "canScrollForward", "measureResult", "(Ljava/util/List;IIIILandroidx/compose/foundation/gestures/Orientation;IIZFLandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/PageInfo;IZLandroidx/compose/ui/layout/MeasureResult;)V", "getAfterContentPadding", "()I", "alignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "getAlignmentLines", "()Ljava/util/Map;", "beforeContentPadding", "getBeforeContentPadding", "getCanScrollForward", "()Z", "getClosestPageToSnapPosition", "()Landroidx/compose/foundation/pager/PageInfo;", "getConsumedScroll", "()F", "getFirstVisiblePage", "()Landroidx/compose/foundation/pager/MeasuredPage;", "getFirstVisiblePageOffset", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "getPageSize", "getPageSpacing", "getPagesCount", "getReverseLayout", "getViewportEndOffset", "viewportSize", "Landroidx/compose/ui/unit/IntSize;", "getViewportSize-YbymL2g", "()J", "getViewportStartOffset", "getVisiblePagesInfo", "()Ljava/util/List;", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth", "placeChildren", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerMeasureResult implements PagerLayoutInfo, MeasureResult {
    private final /* synthetic */ MeasureResult $$delegate_0;
    private final int afterContentPadding;
    private final boolean canScrollForward;
    private final PageInfo closestPageToSnapPosition;
    private final float consumedScroll;
    private final MeasuredPage firstVisiblePage;
    private final int firstVisiblePageOffset;
    private final Orientation orientation;
    private final int pageSize;
    private final int pageSpacing;
    private final int pagesCount;
    private final boolean reverseLayout;
    private final int viewportEndOffset;
    private final int viewportStartOffset;
    private final List<PageInfo> visiblePagesInfo;

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
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

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public PageInfo getClosestPageToSnapPosition() {
        return this.closestPageToSnapPosition;
    }

    public final float getConsumedScroll() {
        return this.consumedScroll;
    }

    public final MeasuredPage getFirstVisiblePage() {
        return this.firstVisiblePage;
    }

    public final int getFirstVisiblePageOffset() {
        return this.firstVisiblePageOffset;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getHeight() {
        return this.$$delegate_0.getHeight();
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public Orientation getOrientation() {
        return this.orientation;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public int getPageSize() {
        return this.pageSize;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public int getPageSpacing() {
        return this.pageSpacing;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public int getPagesCount() {
        return this.pagesCount;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public boolean getReverseLayout() {
        return this.reverseLayout;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public int getViewportEndOffset() {
        return this.viewportEndOffset;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public int getViewportStartOffset() {
        return this.viewportStartOffset;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public List<PageInfo> getVisiblePagesInfo() {
        return this.visiblePagesInfo;
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
    public PagerMeasureResult(List<? extends PageInfo> visiblePagesInfo, int i, int i2, int i3, int i4, Orientation orientation, int i5, int i6, boolean z, float f, MeasuredPage measuredPage, PageInfo pageInfo, int i7, boolean z2, MeasureResult measureResult) {
        Intrinsics.checkNotNullParameter(visiblePagesInfo, "visiblePagesInfo");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        this.visiblePagesInfo = visiblePagesInfo;
        this.pagesCount = i;
        this.pageSize = i2;
        this.pageSpacing = i3;
        this.afterContentPadding = i4;
        this.orientation = orientation;
        this.viewportStartOffset = i5;
        this.viewportEndOffset = i6;
        this.reverseLayout = z;
        this.consumedScroll = f;
        this.firstVisiblePage = measuredPage;
        this.closestPageToSnapPosition = pageInfo;
        this.firstVisiblePageOffset = i7;
        this.canScrollForward = z2;
        this.$$delegate_0 = measureResult;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* renamed from: getViewportSize-YbymL2g */
    public long mo704getViewportSizeYbymL2g() {
        return IntSizeKt.IntSize(getWidth(), getHeight());
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public int getBeforeContentPadding() {
        return -getViewportStartOffset();
    }
}
