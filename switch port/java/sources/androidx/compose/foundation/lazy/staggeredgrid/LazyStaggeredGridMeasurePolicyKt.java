package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridMeasurePolicy.kt */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0089\u0001\u0010\u0000\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001¢\u0006\u0002\b\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u001d\u0010\u0014\u001a\u0019\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00160\u0001¢\u0006\u0002\b\u0005H\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001a,\u0010\u0019\u001a\u00020\u0012*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u001c\u001a,\u0010\u001d\u001a\u00020\u0012*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u001c\u001a$\u0010\u001e\u001a\u00020\u0012*\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u001f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006 "}, d2 = {"rememberStaggeredGridMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "Lkotlin/ExtensionFunctionType;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "itemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "mainAxisSpacing", "Landroidx/compose/ui/unit/Dp;", "crossAxisSpacing", "slots", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "rememberStaggeredGridMeasurePolicy-nbWgWpA", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;", "afterPadding", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/LayoutDirection;)F", "beforePadding", "startPadding", "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/unit/LayoutDirection;)F", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasurePolicyKt {

    /* compiled from: LazyStaggeredGridMeasurePolicy.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: rememberStaggeredGridMeasurePolicy-nbWgWpA, reason: not valid java name */
    public static final Function2<LazyLayoutMeasureScope, Constraints, LazyStaggeredGridMeasureResult> m675rememberStaggeredGridMeasurePolicynbWgWpA(final LazyStaggeredGridState state, final Function0<? extends LazyStaggeredGridItemProvider> itemProviderLambda, final PaddingValues contentPadding, final boolean z, final Orientation orientation, final float f, float f2, final Function2<? super Density, ? super Constraints, LazyStaggeredGridSlots> slots, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(itemProviderLambda, "itemProviderLambda");
        Intrinsics.checkNotNullParameter(contentPadding, "contentPadding");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(slots, "slots");
        composer.startReplaceableGroup(-2134671531);
        ComposerKt.sourceInformation(composer, "C(rememberStaggeredGridMeasurePolicy)P(7,2!1,5,4,3:c#ui.unit.Dp,1:c#ui.unit.Dp)47@2059L2713:LazyStaggeredGridMeasurePolicy.kt#fzvcnm");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2134671531, i, -1, "androidx.compose.foundation.lazy.staggeredgrid.rememberStaggeredGridMeasurePolicy (LazyStaggeredGridMeasurePolicy.kt:38)");
        }
        Object[] objArr = {state, itemProviderLambda, contentPadding, Boolean.valueOf(z), orientation, Dp.m4881boximpl(f), Dp.m4881boximpl(f2), slots};
        composer.startReplaceableGroup(-568225417);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean z2 = false;
        for (int i2 = 0; i2 < 8; i2++) {
            z2 |= composer.changed(objArr[i2]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z2 || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function2) new Function2<LazyLayoutMeasureScope, Constraints, LazyStaggeredGridMeasureResult>() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ LazyStaggeredGridMeasureResult invoke(LazyLayoutMeasureScope lazyLayoutMeasureScope, Constraints constraints) {
                    return m676invoke0kLqBqw(lazyLayoutMeasureScope, constraints.getValue());
                }

                /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                public final LazyStaggeredGridMeasureResult m676invoke0kLqBqw(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j) {
                    float beforePadding;
                    float afterPadding;
                    float startPadding;
                    long IntOffset;
                    Intrinsics.checkNotNullParameter(lazyLayoutMeasureScope, "$this$null");
                    CheckScrollableContainerConstraintsKt.m197checkScrollableContainerConstraintsK40F9xA(j, Orientation.this);
                    LazyStaggeredGridSlots invoke = slots.invoke(lazyLayoutMeasureScope, Constraints.m4827boximpl(j));
                    boolean z3 = Orientation.this == Orientation.Vertical;
                    LazyStaggeredGridItemProvider invoke2 = itemProviderLambda.invoke();
                    state.setSlots$foundation_release(invoke);
                    state.setVertical$foundation_release(z3);
                    state.setSpanProvider$foundation_release(invoke2.getSpanProvider());
                    beforePadding = LazyStaggeredGridMeasurePolicyKt.beforePadding(contentPadding, Orientation.this, z, lazyLayoutMeasureScope.getLayoutDirection());
                    int i3 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(beforePadding);
                    afterPadding = LazyStaggeredGridMeasurePolicyKt.afterPadding(contentPadding, Orientation.this, z, lazyLayoutMeasureScope.getLayoutDirection());
                    int i4 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(afterPadding);
                    startPadding = LazyStaggeredGridMeasurePolicyKt.startPadding(contentPadding, Orientation.this, lazyLayoutMeasureScope.getLayoutDirection());
                    int i5 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(startPadding);
                    int m4838getMaxHeightimpl = ((z3 ? Constraints.m4838getMaxHeightimpl(j) : Constraints.m4839getMaxWidthimpl(j)) - i3) - i4;
                    if (z3) {
                        IntOffset = IntOffsetKt.IntOffset(i5, i3);
                    } else {
                        IntOffset = IntOffsetKt.IntOffset(i3, i5);
                    }
                    long j2 = IntOffset;
                    PaddingValues paddingValues = contentPadding;
                    int i6 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(Dp.m4883constructorimpl(PaddingKt.calculateStartPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()) + PaddingKt.calculateEndPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection())));
                    PaddingValues paddingValues2 = contentPadding;
                    LazyStaggeredGridMeasureResult m674measureStaggeredGriddSVRQoE = LazyStaggeredGridMeasureKt.m674measureStaggeredGriddSVRQoE(lazyLayoutMeasureScope, state, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(invoke2, state.getPinnedItems(), state.getBeyondBoundsInfo()), invoke2, invoke, Constraints.m4830copyZbe2FdA$default(j, ConstraintsKt.m4853constrainWidthK40F9xA(j, i6), 0, ConstraintsKt.m4852constrainHeightK40F9xA(j, lazyLayoutMeasureScope.mo329roundToPx0680j_4(Dp.m4883constructorimpl(paddingValues2.getTop() + paddingValues2.getBottom()))), 0, 10, null), z3, z, j2, m4838getMaxHeightimpl, lazyLayoutMeasureScope.mo329roundToPx0680j_4(f), i3, i4);
                    state.applyMeasureResult$foundation_release(m674measureStaggeredGriddSVRQoE);
                    return m674measureStaggeredGriddSVRQoE;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Function2<LazyLayoutMeasureScope, Constraints, LazyStaggeredGridMeasureResult> function2 = (Function2) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float startPadding(PaddingValues paddingValues, Orientation orientation, LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
        }
        if (i == 2) {
            return paddingValues.getTop();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float beforePadding(PaddingValues paddingValues, Orientation orientation, boolean z, LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return z ? paddingValues.getBottom() : paddingValues.getTop();
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        if (z) {
            return PaddingKt.calculateEndPadding(paddingValues, layoutDirection);
        }
        return PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float afterPadding(PaddingValues paddingValues, Orientation orientation, boolean z, LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return z ? paddingValues.getTop() : paddingValues.getBottom();
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        if (z) {
            return PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
        }
        return PaddingKt.calculateEndPadding(paddingValues, layoutDirection);
    }
}
