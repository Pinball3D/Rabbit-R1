package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import io.sentry.protocol.Device;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* compiled from: LazyGridState.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0006R\u001f\u0010\u0017\u001a\u00020\u0018X\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0006R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006#"}, d2 = {"Landroidx/compose/foundation/lazy/grid/EmptyLazyGridLayoutInfo;", "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;", "()V", "afterContentPadding", "", "getAfterContentPadding", "()I", "beforeContentPadding", "getBeforeContentPadding", "mainAxisItemSpacing", "getMainAxisItemSpacing", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "reverseLayout", "", "getReverseLayout", "()Z", "totalItemsCount", "getTotalItemsCount", "viewportEndOffset", "getViewportEndOffset", "viewportSize", "Landroidx/compose/ui/unit/IntSize;", "getViewportSize-YbymL2g", "()J", "J", "viewportStartOffset", "getViewportStartOffset", "visibleItemsInfo", "", "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;", "getVisibleItemsInfo", "()Ljava/util/List;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class EmptyLazyGridLayoutInfo implements LazyGridLayoutInfo {
    private static final int afterContentPadding = 0;
    private static final int beforeContentPadding = 0;
    private static final int mainAxisItemSpacing = 0;
    private static final boolean reverseLayout = false;
    private static final int totalItemsCount = 0;
    private static final int viewportEndOffset = 0;
    private static final int viewportStartOffset = 0;
    public static final EmptyLazyGridLayoutInfo INSTANCE = new EmptyLazyGridLayoutInfo();
    private static final List<LazyGridItemInfo> visibleItemsInfo = CollectionsKt.emptyList();
    private static final long viewportSize = IntSize.INSTANCE.m5048getZeroYbymL2g();
    private static final Orientation orientation = Orientation.Vertical;

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getAfterContentPadding() {
        return afterContentPadding;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getBeforeContentPadding() {
        return beforeContentPadding;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getMainAxisItemSpacing() {
        return mainAxisItemSpacing;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public Orientation getOrientation() {
        return orientation;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public boolean getReverseLayout() {
        return reverseLayout;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getTotalItemsCount() {
        return totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getViewportEndOffset() {
        return viewportEndOffset;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* renamed from: getViewportSize-YbymL2g, reason: not valid java name */
    public long mo604getViewportSizeYbymL2g() {
        return viewportSize;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int getViewportStartOffset() {
        return viewportStartOffset;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public List<LazyGridItemInfo> getVisibleItemsInfo() {
        return visibleItemsInfo;
    }

    private EmptyLazyGridLayoutInfo() {
    }
}
