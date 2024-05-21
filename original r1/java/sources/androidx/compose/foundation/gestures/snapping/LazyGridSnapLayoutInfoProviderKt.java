package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.SplineBasedDecayKt;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridItemInfo;
import androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import io.sentry.protocol.Device;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: LazyGridSnapLayoutInfoProvider.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0007\u001a\u0014\u0010\u000b\u001a\u00020\u0001*\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0014\u0010\u000f\u001a\u00020\u0001*\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0010"}, d2 = {"singleAxisViewportSize", "", "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;", "getSingleAxisViewportSize", "(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)I", "SnapLayoutInfoProvider", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "lazyGridState", "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "positionInLayout", "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;", "offsetOnMainAxis", "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "sizeOnMainAxis", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridSnapLayoutInfoProviderKt {
    public static /* synthetic */ SnapLayoutInfoProvider SnapLayoutInfoProvider$default(LazyGridState lazyGridState, SnapPositionInLayout snapPositionInLayout, int i, Object obj) {
        if ((i & 2) != 0) {
            snapPositionInLayout = SnapPositionInLayout.INSTANCE.getCenterToCenter();
        }
        return SnapLayoutInfoProvider(lazyGridState, snapPositionInLayout);
    }

    public static final SnapLayoutInfoProvider SnapLayoutInfoProvider(final LazyGridState lazyGridState, final SnapPositionInLayout positionInLayout) {
        Intrinsics.checkNotNullParameter(lazyGridState, "lazyGridState");
        Intrinsics.checkNotNullParameter(positionInLayout, "positionInLayout");
        return new SnapLayoutInfoProvider() { // from class: androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1
            private final LazyGridLayoutInfo getLayoutInfo() {
                return LazyGridState.this.getLayoutInfo();
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateApproachOffset(Density density, float f) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                float coerceAtLeast = RangesKt.coerceAtLeast(Math.abs(DecayAnimationSpecKt.calculateTargetValue(SplineBasedDecayKt.splineBasedDecay(density), 0.0f, f)) - calculateSnapStepSize(density), 0.0f);
                return coerceAtLeast == 0.0f ? coerceAtLeast : coerceAtLeast * Math.signum(f);
            }

            private final List<LazyGridItemInfo> getSingleAxisItems() {
                int i;
                List<LazyGridItemInfo> visibleItemsInfo = LazyGridState.this.getLayoutInfo().getVisibleItemsInfo();
                LazyGridState lazyGridState2 = LazyGridState.this;
                ArrayList arrayList = new ArrayList(visibleItemsInfo.size());
                int size = visibleItemsInfo.size();
                while (i < size) {
                    LazyGridItemInfo lazyGridItemInfo = visibleItemsInfo.get(i);
                    LazyGridItemInfo lazyGridItemInfo2 = lazyGridItemInfo;
                    if (lazyGridState2.getLayoutInfo().getOrientation() == Orientation.Horizontal) {
                        i = lazyGridItemInfo2.getRow() != 0 ? i + 1 : 0;
                        arrayList.add(lazyGridItemInfo);
                    } else {
                        if (lazyGridItemInfo2.getColumn() != 0) {
                        }
                        arrayList.add(lazyGridItemInfo);
                    }
                }
                return arrayList;
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateSnappingOffset(Density density, float f) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                List<LazyGridItemInfo> visibleItemsInfo = getLayoutInfo().getVisibleItemsInfo();
                SnapPositionInLayout snapPositionInLayout = positionInLayout;
                int size = visibleItemsInfo.size();
                float f2 = Float.NEGATIVE_INFINITY;
                float f3 = Float.POSITIVE_INFINITY;
                for (int i = 0; i < size; i++) {
                    LazyGridItemInfo lazyGridItemInfo = visibleItemsInfo.get(i);
                    float calculateDistanceToDesiredSnapPosition = SnapPositionInLayoutKt.calculateDistanceToDesiredSnapPosition(density, LazyGridSnapLayoutInfoProviderKt.getSingleAxisViewportSize(getLayoutInfo()), getLayoutInfo().getBeforeContentPadding(), getLayoutInfo().getAfterContentPadding(), LazyGridSnapLayoutInfoProviderKt.sizeOnMainAxis(lazyGridItemInfo, getLayoutInfo().getOrientation()), LazyGridSnapLayoutInfoProviderKt.offsetOnMainAxis(lazyGridItemInfo, getLayoutInfo().getOrientation()), lazyGridItemInfo.getIndex(), snapPositionInLayout);
                    if (calculateDistanceToDesiredSnapPosition <= 0.0f && calculateDistanceToDesiredSnapPosition > f2) {
                        f2 = calculateDistanceToDesiredSnapPosition;
                    }
                    if (calculateDistanceToDesiredSnapPosition >= 0.0f && calculateDistanceToDesiredSnapPosition < f3) {
                        f3 = calculateDistanceToDesiredSnapPosition;
                    }
                }
                return SnapFlingBehaviorKt.calculateFinalOffset(f, f2, f3);
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateSnapStepSize(Density density) {
                int i;
                Intrinsics.checkNotNullParameter(density, "<this>");
                if (!(!getSingleAxisItems().isEmpty())) {
                    return 0.0f;
                }
                int i2 = 0;
                if (getLayoutInfo().getOrientation() == Orientation.Vertical) {
                    List<LazyGridItemInfo> singleAxisItems = getSingleAxisItems();
                    int size = singleAxisItems.size();
                    i = 0;
                    while (i2 < size) {
                        i += IntSize.m5042getHeightimpl(singleAxisItems.get(i2).getSize());
                        i2++;
                    }
                } else {
                    List<LazyGridItemInfo> singleAxisItems2 = getSingleAxisItems();
                    int size2 = singleAxisItems2.size();
                    i = 0;
                    while (i2 < size2) {
                        i += IntSize.m5043getWidthimpl(singleAxisItems2.get(i2).getSize());
                        i2++;
                    }
                }
                return i / getSingleAxisItems().size();
            }
        };
    }

    public static final int getSingleAxisViewportSize(LazyGridLayoutInfo lazyGridLayoutInfo) {
        Intrinsics.checkNotNullParameter(lazyGridLayoutInfo, "<this>");
        if (lazyGridLayoutInfo.getOrientation() == Orientation.Vertical) {
            return IntSize.m5042getHeightimpl(lazyGridLayoutInfo.mo604getViewportSizeYbymL2g());
        }
        return IntSize.m5043getWidthimpl(lazyGridLayoutInfo.mo604getViewportSizeYbymL2g());
    }

    public static final int sizeOnMainAxis(LazyGridItemInfo lazyGridItemInfo, Orientation orientation) {
        Intrinsics.checkNotNullParameter(lazyGridItemInfo, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == Orientation.Vertical) {
            return IntSize.m5042getHeightimpl(lazyGridItemInfo.getSize());
        }
        return IntSize.m5043getWidthimpl(lazyGridItemInfo.getSize());
    }

    public static final int offsetOnMainAxis(LazyGridItemInfo lazyGridItemInfo, Orientation orientation) {
        Intrinsics.checkNotNullParameter(lazyGridItemInfo, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == Orientation.Vertical) {
            return IntOffset.m5002getYimpl(lazyGridItemInfo.getOffset());
        }
        return IntOffset.m5001getXimpl(lazyGridItemInfo.getOffset());
    }
}
