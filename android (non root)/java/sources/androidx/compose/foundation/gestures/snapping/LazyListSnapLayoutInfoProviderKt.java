package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.SplineBasedDecayKt;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: LazyListSnapLayoutInfoProvider.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0007\u001a\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\r\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u000e"}, d2 = {"singleAxisViewportSize", "", "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;", "getSingleAxisViewportSize", "(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I", "SnapLayoutInfoProvider", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "lazyListState", "Landroidx/compose/foundation/lazy/LazyListState;", "positionInLayout", "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;", "rememberSnapFlingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListSnapLayoutInfoProviderKt {
    public static /* synthetic */ SnapLayoutInfoProvider SnapLayoutInfoProvider$default(LazyListState lazyListState, SnapPositionInLayout snapPositionInLayout, int i, Object obj) {
        if ((i & 2) != 0) {
            snapPositionInLayout = SnapPositionInLayout.INSTANCE.getCenterToCenter();
        }
        return SnapLayoutInfoProvider(lazyListState, snapPositionInLayout);
    }

    public static final SnapLayoutInfoProvider SnapLayoutInfoProvider(final LazyListState lazyListState, final SnapPositionInLayout positionInLayout) {
        Intrinsics.checkNotNullParameter(lazyListState, "lazyListState");
        Intrinsics.checkNotNullParameter(positionInLayout, "positionInLayout");
        return new SnapLayoutInfoProvider() { // from class: androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1
            private final LazyListLayoutInfo getLayoutInfo() {
                return LazyListState.this.getLayoutInfo();
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateApproachOffset(Density density, float f) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                float coerceAtLeast = RangesKt.coerceAtLeast(Math.abs(DecayAnimationSpecKt.calculateTargetValue(SplineBasedDecayKt.splineBasedDecay(density), 0.0f, f)) - calculateSnapStepSize(density), 0.0f);
                return coerceAtLeast == 0.0f ? coerceAtLeast : coerceAtLeast * Math.signum(f);
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateSnappingOffset(Density density, float f) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                List<LazyListItemInfo> visibleItemsInfo = getLayoutInfo().getVisibleItemsInfo();
                SnapPositionInLayout snapPositionInLayout = positionInLayout;
                int size = visibleItemsInfo.size();
                float f2 = Float.NEGATIVE_INFINITY;
                float f3 = Float.POSITIVE_INFINITY;
                for (int i = 0; i < size; i++) {
                    LazyListItemInfo lazyListItemInfo = visibleItemsInfo.get(i);
                    float calculateDistanceToDesiredSnapPosition = SnapPositionInLayoutKt.calculateDistanceToDesiredSnapPosition(density, LazyListSnapLayoutInfoProviderKt.getSingleAxisViewportSize(getLayoutInfo()), getLayoutInfo().getBeforeContentPadding(), getLayoutInfo().getAfterContentPadding(), lazyListItemInfo.getSize(), lazyListItemInfo.getOffset(), lazyListItemInfo.getIndex(), snapPositionInLayout);
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
                Intrinsics.checkNotNullParameter(density, "<this>");
                LazyListLayoutInfo layoutInfo = getLayoutInfo();
                if (!(!layoutInfo.getVisibleItemsInfo().isEmpty())) {
                    return 0.0f;
                }
                List<LazyListItemInfo> visibleItemsInfo = layoutInfo.getVisibleItemsInfo();
                int size = visibleItemsInfo.size();
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    i += visibleItemsInfo.get(i2).getSize();
                }
                return i / layoutInfo.getVisibleItemsInfo().size();
            }
        };
    }

    public static final FlingBehavior rememberSnapFlingBehavior(LazyListState lazyListState, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(lazyListState, "lazyListState");
        composer.startReplaceableGroup(1148456277);
        ComposerKt.sourceInformation(composer, "C(rememberSnapFlingBehavior)115@4630L65,116@4707L41:LazyListSnapLayoutInfoProvider.kt#ppz6w6");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1148456277, i, -1, "androidx.compose.foundation.gestures.snapping.rememberSnapFlingBehavior (LazyListSnapLayoutInfoProvider.kt:114)");
        }
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(lazyListState);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = SnapLayoutInfoProvider$default(lazyListState, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        SnapFlingBehavior rememberSnapFlingBehavior = SnapFlingBehaviorKt.rememberSnapFlingBehavior((SnapLayoutInfoProvider) rememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberSnapFlingBehavior;
    }

    public static final int getSingleAxisViewportSize(LazyListLayoutInfo lazyListLayoutInfo) {
        Intrinsics.checkNotNullParameter(lazyListLayoutInfo, "<this>");
        return lazyListLayoutInfo.getOrientation() == Orientation.Vertical ? IntSize.m5042getHeightimpl(lazyListLayoutInfo.mo593getViewportSizeYbymL2g()) : IntSize.m5043getWidthimpl(lazyListLayoutInfo.mo593getViewportSizeYbymL2g());
    }
}
