package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Scaffold.kt */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a´\u0001\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0013\b\u0002\u0010\f\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\u0013\b\u0002\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\u0013\b\u0002\u0010\u0010\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\u0013\b\u0002\u0010\u0011\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\t0\u001a¢\u0006\u0002\b\u000eH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u008a\u0001\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u00132\u0011\u0010\f\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\t0\u001a¢\u0006\u0002\b\u000e2\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000eH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u001c\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006$"}, d2 = {"FabSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "LocalFabPlacement", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/material3/FabPlacement;", "getLocalFabPlacement", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "Scaffold", "", "modifier", "Landroidx/compose/ui/Modifier;", "topBar", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "bottomBar", "snackbarHost", "floatingActionButton", "floatingActionButtonPosition", "Landroidx/compose/material3/FabPosition;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "contentWindowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/PaddingValues;", "Scaffold-TvnljyQ", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "ScaffoldLayout", "fabPosition", "snackbar", "fab", "ScaffoldLayout-FMILGgc", "(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScaffoldKt {
    private static final ProvidableCompositionLocal<FabPlacement> LocalFabPlacement = CompositionLocalKt.staticCompositionLocalOf(new Function0<FabPlacement>() { // from class: androidx.compose.material3.ScaffoldKt$LocalFabPlacement$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FabPlacement invoke() {
            return null;
        }
    });
    private static final float FabSpacing = Dp.m4883constructorimpl(16);

    public static final ProvidableCompositionLocal<FabPlacement> getLocalFabPlacement() {
        return LocalFabPlacement;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01da  */
    /* renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1366ScaffoldTvnljyQ(androidx.compose.ui.Modifier r28, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, int r33, long r34, long r36, androidx.compose.foundation.layout.WindowInsets r38, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.PaddingValues, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ScaffoldKt.m1366ScaffoldTvnljyQ(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, int, long, long, androidx.compose.foundation.layout.WindowInsets, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m1367ScaffoldLayoutFMILGgc(final int i, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final WindowInsets windowInsets, final Function2<? super Composer, ? super Integer, Unit> function24, Composer composer, final int i2) {
        int i3;
        Composer startRestartGroup = composer.startRestartGroup(-975511942);
        ComposerKt.sourceInformation(startRestartGroup, "C(ScaffoldLayout)P(4:c#material3.FabPosition,6,1,5,3,2)121@5603L6544,121@5586L6561:Scaffold.kt#uh7d8r");
        int i4 = (i2 & 14) == 0 ? (startRestartGroup.changed(i) ? 4 : 2) | i2 : i2;
        if ((i2 & 112) == 0) {
            i4 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i4 |= startRestartGroup.changedInstance(function3) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            i4 |= startRestartGroup.changedInstance(function22) ? 2048 : 1024;
        }
        if ((57344 & i2) == 0) {
            i4 |= startRestartGroup.changedInstance(function23) ? 16384 : 8192;
        }
        if ((458752 & i2) == 0) {
            i4 |= startRestartGroup.changed(windowInsets) ? 131072 : 65536;
        }
        if ((3670016 & i2) == 0) {
            i4 |= startRestartGroup.changedInstance(function24) ? 1048576 : 524288;
        }
        if ((2995931 & i4) != 599186 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-975511942, i4, -1, "androidx.compose.material3.ScaffoldLayout (Scaffold.kt:111)");
            }
            Object[] objArr = {function2, function22, windowInsets, function23, FabPosition.m1207boximpl(i), function24, function3};
            startRestartGroup.startReplaceableGroup(-568225417);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean z = false;
            for (int i5 = 0; i5 < 7; i5++) {
                z |= startRestartGroup.changed(objArr[i5]);
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z || rememberedValue == Composer.INSTANCE.getEmpty()) {
                i3 = 0;
                final int i6 = i4;
                rememberedValue = (Function2) new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m1369invoke0kLqBqw(subcomposeMeasureScope, constraints.getValue());
                    }

                    /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m1369invoke0kLqBqw(final SubcomposeMeasureScope SubcomposeLayout, long j) {
                        Intrinsics.checkNotNullParameter(SubcomposeLayout, "$this$SubcomposeLayout");
                        final int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j);
                        final int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j);
                        final long m4830copyZbe2FdA$default = Constraints.m4830copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
                        final Function2<Composer, Integer, Unit> function25 = function2;
                        final Function2<Composer, Integer, Unit> function26 = function22;
                        final Function2<Composer, Integer, Unit> function27 = function23;
                        final int i7 = i;
                        final WindowInsets windowInsets2 = windowInsets;
                        final Function2<Composer, Integer, Unit> function28 = function24;
                        final int i8 = i6;
                        final Function3<PaddingValues, Composer, Integer, Unit> function32 = function3;
                        return MeasureScope.layout$default(SubcomposeLayout, m4839getMaxWidthimpl, m4838getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope layout) {
                                Object next;
                                Object next2;
                                Object next3;
                                final FabPlacement fabPlacement;
                                Object next4;
                                Integer num;
                                float f;
                                int i9;
                                float f2;
                                Object next5;
                                Object next6;
                                int i10;
                                float f3;
                                float f4;
                                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                List<Measurable> subcompose = SubcomposeMeasureScope.this.subcompose(ScaffoldLayoutContent.TopBar, function25);
                                long j2 = m4830copyZbe2FdA$default;
                                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(subcompose, 10));
                                Iterator<T> it = subcompose.iterator();
                                while (it.hasNext()) {
                                    arrayList.add(((Measurable) it.next()).mo3876measureBRTryo0(j2));
                                }
                                final ArrayList arrayList2 = arrayList;
                                ArrayList arrayList3 = arrayList2;
                                Iterator it2 = arrayList3.iterator();
                                if (it2.hasNext()) {
                                    next = it2.next();
                                    if (it2.hasNext()) {
                                        int height = ((Placeable) next).getHeight();
                                        do {
                                            Object next7 = it2.next();
                                            int height2 = ((Placeable) next7).getHeight();
                                            if (height < height2) {
                                                next = next7;
                                                height = height2;
                                            }
                                        } while (it2.hasNext());
                                    }
                                } else {
                                    next = null;
                                }
                                Placeable placeable = (Placeable) next;
                                final int height3 = placeable != null ? placeable.getHeight() : 0;
                                List<Measurable> subcompose2 = SubcomposeMeasureScope.this.subcompose(ScaffoldLayoutContent.Snackbar, function26);
                                WindowInsets windowInsets3 = windowInsets2;
                                SubcomposeMeasureScope subcomposeMeasureScope = SubcomposeMeasureScope.this;
                                long j3 = m4830copyZbe2FdA$default;
                                ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(subcompose2, 10));
                                Iterator<T> it3 = subcompose2.iterator();
                                while (it3.hasNext()) {
                                    SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                                    arrayList4.add(((Measurable) it3.next()).mo3876measureBRTryo0(ConstraintsKt.m4855offsetNN6EwU(j3, (-windowInsets3.getLeft(subcomposeMeasureScope2, subcomposeMeasureScope.getLayoutDirection())) - windowInsets3.getRight(subcomposeMeasureScope2, subcomposeMeasureScope.getLayoutDirection()), -windowInsets3.getBottom(subcomposeMeasureScope2))));
                                    subcomposeMeasureScope = subcomposeMeasureScope;
                                }
                                ArrayList arrayList5 = arrayList4;
                                Iterator it4 = arrayList5.iterator();
                                if (it4.hasNext()) {
                                    next2 = it4.next();
                                    if (it4.hasNext()) {
                                        int height4 = ((Placeable) next2).getHeight();
                                        do {
                                            Object next8 = it4.next();
                                            int height5 = ((Placeable) next8).getHeight();
                                            if (height4 < height5) {
                                                next2 = next8;
                                                height4 = height5;
                                            }
                                        } while (it4.hasNext());
                                    }
                                } else {
                                    next2 = null;
                                }
                                Placeable placeable2 = (Placeable) next2;
                                int height6 = placeable2 != null ? placeable2.getHeight() : 0;
                                Iterator it5 = arrayList5.iterator();
                                if (it5.hasNext()) {
                                    next3 = it5.next();
                                    if (it5.hasNext()) {
                                        int width = ((Placeable) next3).getWidth();
                                        do {
                                            Object next9 = it5.next();
                                            int width2 = ((Placeable) next9).getWidth();
                                            if (width < width2) {
                                                next3 = next9;
                                                width = width2;
                                            }
                                        } while (it5.hasNext());
                                    }
                                } else {
                                    next3 = null;
                                }
                                Placeable placeable3 = (Placeable) next3;
                                int width3 = placeable3 != null ? placeable3.getWidth() : 0;
                                List<Measurable> subcompose3 = SubcomposeMeasureScope.this.subcompose(ScaffoldLayoutContent.Fab, function27);
                                WindowInsets windowInsets4 = windowInsets2;
                                SubcomposeMeasureScope subcomposeMeasureScope3 = SubcomposeMeasureScope.this;
                                long j4 = m4830copyZbe2FdA$default;
                                ArrayList arrayList6 = new ArrayList();
                                Iterator<T> it6 = subcompose3.iterator();
                                while (it6.hasNext()) {
                                    SubcomposeMeasureScope subcomposeMeasureScope4 = subcomposeMeasureScope3;
                                    Placeable mo3876measureBRTryo0 = ((Measurable) it6.next()).mo3876measureBRTryo0(ConstraintsKt.m4855offsetNN6EwU(j4, (-windowInsets4.getLeft(subcomposeMeasureScope4, subcomposeMeasureScope3.getLayoutDirection())) - windowInsets4.getRight(subcomposeMeasureScope4, subcomposeMeasureScope3.getLayoutDirection()), -windowInsets4.getBottom(subcomposeMeasureScope4)));
                                    if (mo3876measureBRTryo0.getHeight() == 0 || mo3876measureBRTryo0.getWidth() == 0) {
                                        mo3876measureBRTryo0 = null;
                                    }
                                    if (mo3876measureBRTryo0 != null) {
                                        arrayList6.add(mo3876measureBRTryo0);
                                    }
                                }
                                ArrayList<Placeable> arrayList7 = arrayList6;
                                if (!arrayList7.isEmpty()) {
                                    ArrayList arrayList8 = arrayList7;
                                    Iterator it7 = arrayList8.iterator();
                                    if (it7.hasNext()) {
                                        next5 = it7.next();
                                        if (it7.hasNext()) {
                                            int width4 = ((Placeable) next5).getWidth();
                                            do {
                                                Object next10 = it7.next();
                                                int width5 = ((Placeable) next10).getWidth();
                                                if (width4 < width5) {
                                                    next5 = next10;
                                                    width4 = width5;
                                                }
                                            } while (it7.hasNext());
                                        }
                                    } else {
                                        next5 = null;
                                    }
                                    Intrinsics.checkNotNull(next5);
                                    int width6 = ((Placeable) next5).getWidth();
                                    Iterator it8 = arrayList8.iterator();
                                    if (it8.hasNext()) {
                                        next6 = it8.next();
                                        if (it8.hasNext()) {
                                            int height7 = ((Placeable) next6).getHeight();
                                            do {
                                                Object next11 = it8.next();
                                                int height8 = ((Placeable) next11).getHeight();
                                                if (height7 < height8) {
                                                    next6 = next11;
                                                    height7 = height8;
                                                }
                                            } while (it8.hasNext());
                                        }
                                    } else {
                                        next6 = null;
                                    }
                                    Intrinsics.checkNotNull(next6);
                                    int height9 = ((Placeable) next6).getHeight();
                                    if (!FabPosition.m1210equalsimpl0(i7, FabPosition.INSTANCE.m1215getEndERTFSPs())) {
                                        i10 = (m4839getMaxWidthimpl - width6) / 2;
                                    } else if (SubcomposeMeasureScope.this.getLayoutDirection() == LayoutDirection.Ltr) {
                                        int i11 = m4839getMaxWidthimpl;
                                        SubcomposeMeasureScope subcomposeMeasureScope5 = SubcomposeMeasureScope.this;
                                        f4 = ScaffoldKt.FabSpacing;
                                        i10 = (i11 - subcomposeMeasureScope5.mo329roundToPx0680j_4(f4)) - width6;
                                    } else {
                                        SubcomposeMeasureScope subcomposeMeasureScope6 = SubcomposeMeasureScope.this;
                                        f3 = ScaffoldKt.FabSpacing;
                                        i10 = subcomposeMeasureScope6.mo329roundToPx0680j_4(f3);
                                    }
                                    fabPlacement = new FabPlacement(i10, width6, height9);
                                } else {
                                    fabPlacement = null;
                                }
                                SubcomposeMeasureScope subcomposeMeasureScope7 = SubcomposeMeasureScope.this;
                                ScaffoldLayoutContent scaffoldLayoutContent = ScaffoldLayoutContent.BottomBar;
                                final Function2<Composer, Integer, Unit> function29 = function28;
                                final int i12 = i8;
                                List<Measurable> subcompose4 = subcomposeMeasureScope7.subcompose(scaffoldLayoutContent, ComposableLambdaKt.composableLambdaInstance(-1455477816, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num2) {
                                        invoke(composer2, num2.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer composer2, int i13) {
                                        ComposerKt.sourceInformation(composer2, "C194@8951L144:Scaffold.kt#uh7d8r");
                                        if ((i13 & 11) != 2 || !composer2.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1455477816, i13, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:193)");
                                            }
                                            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ScaffoldKt.getLocalFabPlacement().provides(FabPlacement.this)}, function29, composer2, ((i12 >> 15) & 112) | 8);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        composer2.skipToGroupEnd();
                                    }
                                }));
                                long j5 = m4830copyZbe2FdA$default;
                                ArrayList arrayList9 = new ArrayList(CollectionsKt.collectionSizeOrDefault(subcompose4, 10));
                                Iterator<T> it9 = subcompose4.iterator();
                                while (it9.hasNext()) {
                                    arrayList9.add(((Measurable) it9.next()).mo3876measureBRTryo0(j5));
                                }
                                final ArrayList arrayList10 = arrayList9;
                                ArrayList arrayList11 = arrayList10;
                                Iterator it10 = arrayList11.iterator();
                                if (it10.hasNext()) {
                                    next4 = it10.next();
                                    if (it10.hasNext()) {
                                        int height10 = ((Placeable) next4).getHeight();
                                        do {
                                            Object next12 = it10.next();
                                            int height11 = ((Placeable) next12).getHeight();
                                            if (height10 < height11) {
                                                next4 = next12;
                                                height10 = height11;
                                            }
                                        } while (it10.hasNext());
                                    }
                                } else {
                                    next4 = null;
                                }
                                Placeable placeable4 = (Placeable) next4;
                                Integer valueOf = placeable4 != null ? Integer.valueOf(placeable4.getHeight()) : null;
                                if (fabPlacement != null) {
                                    SubcomposeMeasureScope subcomposeMeasureScope8 = SubcomposeMeasureScope.this;
                                    WindowInsets windowInsets5 = windowInsets2;
                                    if (valueOf == null) {
                                        int height12 = fabPlacement.getHeight();
                                        f2 = ScaffoldKt.FabSpacing;
                                        i9 = height12 + subcomposeMeasureScope8.mo329roundToPx0680j_4(f2) + windowInsets5.getBottom(subcomposeMeasureScope8);
                                    } else {
                                        int intValue = valueOf.intValue() + fabPlacement.getHeight();
                                        f = ScaffoldKt.FabSpacing;
                                        i9 = intValue + subcomposeMeasureScope8.mo329roundToPx0680j_4(f);
                                    }
                                    num = Integer.valueOf(i9);
                                } else {
                                    num = null;
                                }
                                int intValue2 = height6 != 0 ? height6 + (num != null ? num.intValue() : valueOf != null ? valueOf.intValue() : windowInsets2.getBottom(SubcomposeMeasureScope.this)) : 0;
                                SubcomposeMeasureScope subcomposeMeasureScope9 = SubcomposeMeasureScope.this;
                                ScaffoldLayoutContent scaffoldLayoutContent2 = ScaffoldLayoutContent.MainContent;
                                final WindowInsets windowInsets6 = windowInsets2;
                                final SubcomposeMeasureScope subcomposeMeasureScope10 = SubcomposeMeasureScope.this;
                                final Function3<PaddingValues, Composer, Integer, Unit> function33 = function32;
                                final int i13 = i8;
                                final Integer num2 = valueOf;
                                List<Measurable> subcompose5 = subcomposeMeasureScope9.subcompose(scaffoldLayoutContent2, ComposableLambdaKt.composableLambdaInstance(1643221465, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1$1$bodyContentPlaceables$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num3) {
                                        invoke(composer2, num3.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer composer2, int i14) {
                                        float f5;
                                        float bottom;
                                        Integer num3;
                                        ComposerKt.sourceInformation(composer2, "C238@10996L21:Scaffold.kt#uh7d8r");
                                        if ((i14 & 11) != 2 || !composer2.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1643221465, i14, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:220)");
                                            }
                                            PaddingValues asPaddingValues = WindowInsetsKt.asPaddingValues(WindowInsets.this, subcomposeMeasureScope10);
                                            if (arrayList2.isEmpty()) {
                                                f5 = asPaddingValues.getTop();
                                            } else {
                                                f5 = subcomposeMeasureScope10.mo332toDpu2uoSUM(height3);
                                            }
                                            if (arrayList10.isEmpty() || (num3 = num2) == null) {
                                                bottom = asPaddingValues.getBottom();
                                            } else {
                                                bottom = subcomposeMeasureScope10.mo332toDpu2uoSUM(num3.intValue());
                                            }
                                            function33.invoke(PaddingKt.m486PaddingValuesa9UjIt4(PaddingKt.calculateStartPadding(asPaddingValues, subcomposeMeasureScope10.getLayoutDirection()), f5, PaddingKt.calculateEndPadding(asPaddingValues, subcomposeMeasureScope10.getLayoutDirection()), bottom), composer2, Integer.valueOf((i13 >> 3) & 112));
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        composer2.skipToGroupEnd();
                                    }
                                }));
                                long j6 = m4830copyZbe2FdA$default;
                                ArrayList arrayList12 = new ArrayList(CollectionsKt.collectionSizeOrDefault(subcompose5, 10));
                                Iterator<T> it11 = subcompose5.iterator();
                                while (it11.hasNext()) {
                                    arrayList12.add(((Measurable) it11.next()).mo3876measureBRTryo0(j6));
                                }
                                Iterator it12 = arrayList12.iterator();
                                while (it12.hasNext()) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) it12.next(), 0, 0, 0.0f, 4, null);
                                    fabPlacement = fabPlacement;
                                }
                                FabPlacement fabPlacement2 = fabPlacement;
                                Iterator it13 = arrayList3.iterator();
                                while (it13.hasNext()) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) it13.next(), 0, 0, 0.0f, 4, null);
                                }
                                int i14 = m4839getMaxWidthimpl;
                                WindowInsets windowInsets7 = windowInsets2;
                                SubcomposeMeasureScope subcomposeMeasureScope11 = SubcomposeMeasureScope.this;
                                int i15 = m4838getMaxHeightimpl;
                                Iterator it14 = arrayList5.iterator();
                                while (it14.hasNext()) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) it14.next(), windowInsets7.getLeft(subcomposeMeasureScope11, subcomposeMeasureScope11.getLayoutDirection()) + ((i14 - width3) / 2), i15 - intValue2, 0.0f, 4, null);
                                }
                                int i16 = m4838getMaxHeightimpl;
                                Iterator it15 = arrayList11.iterator();
                                while (it15.hasNext()) {
                                    Placeable.PlacementScope.place$default(layout, (Placeable) it15.next(), 0, i16 - (valueOf != null ? valueOf.intValue() : 0), 0.0f, 4, null);
                                }
                                if (fabPlacement2 != null) {
                                    int i17 = m4838getMaxHeightimpl;
                                    for (Placeable placeable5 : arrayList7) {
                                        int left = fabPlacement2.getLeft();
                                        Intrinsics.checkNotNull(num);
                                        Placeable.PlacementScope.place$default(layout, placeable5, left, i17 - num.intValue(), 0.0f, 4, null);
                                    }
                                    Unit unit = Unit.INSTANCE;
                                    Unit unit2 = Unit.INSTANCE;
                                }
                            }
                        }, 4, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            } else {
                i3 = 0;
            }
            startRestartGroup.endReplaceableGroup();
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) rememberedValue, startRestartGroup, i3, 1);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$2
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

            public final void invoke(Composer composer2, int i7) {
                ScaffoldKt.m1367ScaffoldLayoutFMILGgc(i, function2, function3, function22, function23, windowInsets, function24, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }
}
