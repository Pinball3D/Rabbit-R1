package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGrid.kt */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0098\u0001\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001d\u0010\u0006\u001a\u0019\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0002\b\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0019¢\u0006\u0002\b\u000bH\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u001b\u001a#\u0010\u001c\u001a\u00020\u00012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003¢\u0006\u0002\u0010 \u001a\u008c\u0001\u0010!\u001a\u0019\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020#0\u0007¢\u0006\u0002\b\u000b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u001d\u0010\u0006\u001a\u0019\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0007¢\u0006\u0002\b\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0003ø\u0001\u0000¢\u0006\u0002\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"LazyGrid", "", "modifier", "Landroidx/compose/ui/Modifier;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "slots", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;", "Lkotlin/ExtensionFunctionType;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "isVertical", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "userScrollEnabled", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/grid/LazyGridScope;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "ScrollPositionUpdater", "itemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V", "rememberLazyGridMeasurePolicy", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "Landroidx/compose/ui/layout/MeasureResult;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridKt {
    /* JADX WARN: Removed duplicated region for block: B:104:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyGrid(androidx.compose.ui.Modifier r35, final androidx.compose.foundation.lazy.grid.LazyGridState r36, final kotlin.jvm.functions.Function2<? super androidx.compose.ui.unit.Density, ? super androidx.compose.ui.unit.Constraints, androidx.compose.foundation.lazy.grid.LazyGridSlots> r37, androidx.compose.foundation.layout.PaddingValues r38, boolean r39, final boolean r40, androidx.compose.foundation.gestures.FlingBehavior r41, final boolean r42, final androidx.compose.foundation.layout.Arrangement.Vertical r43, final androidx.compose.foundation.layout.Arrangement.Horizontal r44, final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.grid.LazyGridScope, kotlin.Unit> r45, androidx.compose.runtime.Composer r46, final int r47, final int r48, final int r49) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridKt.LazyGrid(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.grid.LazyGridState, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, boolean, boolean, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ScrollPositionUpdater(final Function0<? extends LazyGridItemProvider> function0, final LazyGridState lazyGridState, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-649335720);
        ComposerKt.sourceInformation(startRestartGroup, "C(ScrollPositionUpdater):LazyGrid.kt#7791vq");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(lazyGridState) ? 32 : 16;
        }
        if ((i2 & 91) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-649335720, i, -1, "androidx.compose.foundation.lazy.grid.ScrollPositionUpdater (LazyGrid.kt:138)");
            }
            LazyGridItemProvider invoke = function0.invoke();
            if (invoke.getItemCount() > 0) {
                LazyGridState.updateScrollPositionIfTheFirstItemWasMoved$foundation_release$default(lazyGridState, invoke, 0, 2, null);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$ScrollPositionUpdater$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                LazyGridKt.ScrollPositionUpdater(function0, lazyGridState, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    private static final Function2<LazyLayoutMeasureScope, Constraints, MeasureResult> rememberLazyGridMeasurePolicy(final Function0<? extends LazyGridItemProvider> function0, final LazyGridState lazyGridState, final Function2<? super Density, ? super Constraints, LazyGridSlots> function2, final PaddingValues paddingValues, final boolean z, final boolean z2, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1292704639);
        ComposerKt.sourceInformation(composer, "C(rememberLazyGridMeasurePolicy)P(3,6,5!1,4,2)173@6918L8458:LazyGrid.kt#7791vq");
        final Arrangement.Horizontal horizontal2 = (i2 & 64) != 0 ? null : horizontal;
        final Arrangement.Vertical vertical2 = (i2 & 128) != 0 ? null : vertical;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1292704639, i, -1, "androidx.compose.foundation.lazy.grid.rememberLazyGridMeasurePolicy (LazyGrid.kt:156)");
        }
        Object[] objArr = {lazyGridState, function2, paddingValues, Boolean.valueOf(z), Boolean.valueOf(z2), horizontal2, vertical2};
        composer.startReplaceableGroup(-568225417);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean z3 = false;
        for (int i3 = 0; i3 < 7; i3++) {
            z3 |= composer.changed(objArr[i3]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z3 || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function2) new Function2<LazyLayoutMeasureScope, Constraints, LazyGridMeasureResult>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ LazyGridMeasureResult invoke(LazyLayoutMeasureScope lazyLayoutMeasureScope, Constraints constraints) {
                    return m624invoke0kLqBqw(lazyLayoutMeasureScope, constraints.getValue());
                }

                /* JADX WARN: Type inference failed for: r18v0, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1] */
                /* JADX WARN: Type inference failed for: r1v13, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1] */
                /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                public final LazyGridMeasureResult m624invoke0kLqBqw(final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j) {
                    int i4;
                    int i5;
                    float spacing;
                    int m4839getMaxWidthimpl;
                    long IntOffset;
                    int firstVisibleItemScrollOffset;
                    int i6;
                    Intrinsics.checkNotNullParameter(lazyLayoutMeasureScope, "$this$null");
                    CheckScrollableContainerConstraintsKt.m197checkScrollableContainerConstraintsK40F9xA(j, z2 ? Orientation.Vertical : Orientation.Horizontal);
                    if (z2) {
                        i4 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(paddingValues.mo441calculateLeftPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection()));
                    } else {
                        i4 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(PaddingKt.calculateStartPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()));
                    }
                    if (z2) {
                        i5 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(paddingValues.mo442calculateRightPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection()));
                    } else {
                        i5 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(PaddingKt.calculateEndPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()));
                    }
                    int i7 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(paddingValues.getTop());
                    int i8 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(paddingValues.getBottom());
                    final int i9 = i7 + i8;
                    final int i10 = i4 + i5;
                    boolean z4 = z2;
                    int i11 = z4 ? i9 : i10;
                    int i12 = (!z4 || z) ? (z4 && z) ? i8 : (z4 || z) ? i5 : i4 : i7;
                    final int i13 = i11 - i12;
                    long m4855offsetNN6EwU = ConstraintsKt.m4855offsetNN6EwU(j, -i10, -i9);
                    final LazyGridItemProvider invoke = function0.invoke();
                    final LazyGridSpanLayoutProvider spanLayoutProvider = invoke.getSpanLayoutProvider();
                    final LazyGridSlots invoke2 = function2.invoke(lazyLayoutMeasureScope, Constraints.m4827boximpl(j));
                    int length = invoke2.getSizes().length;
                    spanLayoutProvider.setSlotsPerLine(length);
                    LazyLayoutMeasureScope lazyLayoutMeasureScope2 = lazyLayoutMeasureScope;
                    lazyGridState.setDensity$foundation_release(lazyLayoutMeasureScope2);
                    lazyGridState.setSlotsPerLine$foundation_release(length);
                    if (z2) {
                        Arrangement.Vertical vertical3 = vertical2;
                        if (vertical3 == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        spacing = vertical3.getSpacing();
                    } else {
                        Arrangement.Horizontal horizontal3 = horizontal2;
                        if (horizontal3 != null) {
                            spacing = horizontal3.getSpacing();
                        } else {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                    }
                    final int i14 = lazyLayoutMeasureScope.mo329roundToPx0680j_4(spacing);
                    final int itemCount = invoke.getItemCount();
                    if (z2) {
                        m4839getMaxWidthimpl = Constraints.m4838getMaxHeightimpl(j) - i9;
                    } else {
                        m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j) - i10;
                    }
                    int i15 = m4839getMaxWidthimpl;
                    if (!z || i15 > 0) {
                        IntOffset = IntOffsetKt.IntOffset(i4, i7);
                    } else {
                        boolean z5 = z2;
                        if (!z5) {
                            i4 += i15;
                        }
                        if (z5) {
                            i7 += i15;
                        }
                        IntOffset = IntOffsetKt.IntOffset(i4, i7);
                    }
                    final long j2 = IntOffset;
                    final boolean z6 = z2;
                    final boolean z7 = z;
                    final int i16 = i12;
                    final ?? r18 = new LazyGridMeasuredItemProvider(invoke, lazyLayoutMeasureScope, i14, z6, z7, i16, i13, j2) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1
                        final /* synthetic */ int $afterContentPadding;
                        final /* synthetic */ int $beforeContentPadding;
                        final /* synthetic */ boolean $isVertical;
                        final /* synthetic */ boolean $reverseLayout;
                        final /* synthetic */ LazyLayoutMeasureScope $this_null;
                        final /* synthetic */ long $visualItemOffset;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.$this_null = lazyLayoutMeasureScope;
                            this.$isVertical = z6;
                            this.$reverseLayout = z7;
                            this.$beforeContentPadding = i16;
                            this.$afterContentPadding = i13;
                            this.$visualItemOffset = j2;
                        }

                        @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider
                        public LazyGridMeasuredItem createItem(int index, Object key, Object contentType, int crossAxisSize, int mainAxisSpacing, List<? extends Placeable> placeables) {
                            Intrinsics.checkNotNullParameter(key, "key");
                            Intrinsics.checkNotNullParameter(placeables, "placeables");
                            return new LazyGridMeasuredItem(index, key, this.$isVertical, crossAxisSize, mainAxisSpacing, this.$reverseLayout, this.$this_null.getLayoutDirection(), this.$beforeContentPadding, this.$afterContentPadding, placeables, this.$visualItemOffset, contentType, null);
                        }
                    };
                    final boolean z8 = z2;
                    final ?? r1 = new LazyGridMeasuredLineProvider(z8, invoke2, itemCount, i14, r18, spanLayoutProvider) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
                        final /* synthetic */ boolean $isVertical;
                        final /* synthetic */ LazyGridSlots $resolvedSlots;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(z8, invoke2, itemCount, i14, r18, spanLayoutProvider);
                            this.$isVertical = z8;
                            this.$resolvedSlots = invoke2;
                        }

                        @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider
                        public LazyGridMeasuredLine createLine(int index, LazyGridMeasuredItem[] items, List<GridItemSpan> spans, int mainAxisSpacing) {
                            Intrinsics.checkNotNullParameter(items, "items");
                            Intrinsics.checkNotNullParameter(spans, "spans");
                            return new LazyGridMeasuredLine(index, items, this.$resolvedSlots, spans, this.$isVertical, mainAxisSpacing);
                        }
                    };
                    lazyGridState.setPrefetchInfoRetriever$foundation_release(new Function1<Integer, ArrayList<Pair<? extends Integer, ? extends Constraints>>>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ ArrayList<Pair<? extends Integer, ? extends Constraints>> invoke(Integer num) {
                            return invoke(num.intValue());
                        }

                        public final ArrayList<Pair<Integer, Constraints>> invoke(int i17) {
                            LazyGridSpanLayoutProvider.LineConfiguration lineConfiguration = LazyGridSpanLayoutProvider.this.getLineConfiguration(i17);
                            int firstItemIndex = lineConfiguration.getFirstItemIndex();
                            ArrayList<Pair<Integer, Constraints>> arrayList = new ArrayList<>(lineConfiguration.getSpans().size());
                            List<GridItemSpan> spans = lineConfiguration.getSpans();
                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = r1;
                            int size = spans.size();
                            int i18 = 0;
                            for (int i19 = 0; i19 < size; i19++) {
                                int m609getCurrentLineSpanimpl = GridItemSpan.m609getCurrentLineSpanimpl(spans.get(i19).getPackedValue());
                                arrayList.add(TuplesKt.to(Integer.valueOf(firstItemIndex), Constraints.m4827boximpl(lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1.m630childConstraintsJhjzzOo$foundation_release(i18, m609getCurrentLineSpanimpl))));
                                firstItemIndex++;
                                i18 += m609getCurrentLineSpanimpl;
                            }
                            return arrayList;
                        }
                    });
                    Snapshot.Companion companion = Snapshot.INSTANCE;
                    LazyGridState lazyGridState2 = lazyGridState;
                    Snapshot createNonObservableSnapshot = companion.createNonObservableSnapshot();
                    try {
                        Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                        try {
                            int updateScrollPositionIfTheFirstItemWasMoved$foundation_release = lazyGridState2.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(invoke, lazyGridState2.getFirstVisibleItemIndex());
                            if (updateScrollPositionIfTheFirstItemWasMoved$foundation_release >= itemCount && itemCount > 0) {
                                i6 = spanLayoutProvider.getLineIndexOfItem(itemCount - 1);
                                firstVisibleItemScrollOffset = 0;
                                Unit unit = Unit.INSTANCE;
                                createNonObservableSnapshot.dispose();
                                LazyGridMeasureResult m625measureLazyGridZRKPzZ8 = LazyGridMeasureKt.m625measureLazyGridZRKPzZ8(itemCount, (LazyGridMeasuredLineProvider) r1, (LazyGridMeasuredItemProvider) r18, i15, i12, i13, i14, i6, firstVisibleItemScrollOffset, lazyGridState.getScrollToBeConsumed(), m4855offsetNN6EwU, z2, vertical2, horizontal2, z, lazyLayoutMeasureScope2, lazyGridState.getPlacementAnimator(), spanLayoutProvider, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(invoke, lazyGridState.getPinnedItems(), lazyGridState.getBeyondBoundsInfo()), new Function3<Integer, Integer, Function1<? super Placeable.PlacementScope, ? extends Unit>, MeasureResult>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1.3
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ MeasureResult invoke(Integer num, Integer num2, Function1<? super Placeable.PlacementScope, ? extends Unit> function1) {
                                        return invoke(num.intValue(), num2.intValue(), (Function1<? super Placeable.PlacementScope, Unit>) function1);
                                    }

                                    public final MeasureResult invoke(int i17, int i18, Function1<? super Placeable.PlacementScope, Unit> placement) {
                                        Intrinsics.checkNotNullParameter(placement, "placement");
                                        return LazyLayoutMeasureScope.this.layout(ConstraintsKt.m4853constrainWidthK40F9xA(j, i17 + i10), ConstraintsKt.m4852constrainHeightK40F9xA(j, i18 + i9), MapsKt.emptyMap(), placement);
                                    }
                                });
                                lazyGridState.applyMeasureResult$foundation_release(m625measureLazyGridZRKPzZ8);
                                return m625measureLazyGridZRKPzZ8;
                            }
                            int lineIndexOfItem = spanLayoutProvider.getLineIndexOfItem(updateScrollPositionIfTheFirstItemWasMoved$foundation_release);
                            firstVisibleItemScrollOffset = lazyGridState2.getFirstVisibleItemScrollOffset();
                            i6 = lineIndexOfItem;
                            Unit unit2 = Unit.INSTANCE;
                            createNonObservableSnapshot.dispose();
                            LazyGridMeasureResult m625measureLazyGridZRKPzZ82 = LazyGridMeasureKt.m625measureLazyGridZRKPzZ8(itemCount, (LazyGridMeasuredLineProvider) r1, (LazyGridMeasuredItemProvider) r18, i15, i12, i13, i14, i6, firstVisibleItemScrollOffset, lazyGridState.getScrollToBeConsumed(), m4855offsetNN6EwU, z2, vertical2, horizontal2, z, lazyLayoutMeasureScope2, lazyGridState.getPlacementAnimator(), spanLayoutProvider, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(invoke, lazyGridState.getPinnedItems(), lazyGridState.getBeyondBoundsInfo()), new Function3<Integer, Integer, Function1<? super Placeable.PlacementScope, ? extends Unit>, MeasureResult>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1.3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ MeasureResult invoke(Integer num, Integer num2, Function1<? super Placeable.PlacementScope, ? extends Unit> function1) {
                                    return invoke(num.intValue(), num2.intValue(), (Function1<? super Placeable.PlacementScope, Unit>) function1);
                                }

                                public final MeasureResult invoke(int i17, int i18, Function1<? super Placeable.PlacementScope, Unit> placement) {
                                    Intrinsics.checkNotNullParameter(placement, "placement");
                                    return LazyLayoutMeasureScope.this.layout(ConstraintsKt.m4853constrainWidthK40F9xA(j, i17 + i10), ConstraintsKt.m4852constrainHeightK40F9xA(j, i18 + i9), MapsKt.emptyMap(), placement);
                                }
                            });
                            lazyGridState.applyMeasureResult$foundation_release(m625measureLazyGridZRKPzZ82);
                            return m625measureLazyGridZRKPzZ82;
                        } finally {
                            createNonObservableSnapshot.restoreCurrent(makeCurrent);
                        }
                    } catch (Throwable th) {
                        createNonObservableSnapshot.dispose();
                        throw th;
                    }
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Function2<LazyLayoutMeasureScope, Constraints, MeasureResult> function22 = (Function2) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return function22;
    }
}
