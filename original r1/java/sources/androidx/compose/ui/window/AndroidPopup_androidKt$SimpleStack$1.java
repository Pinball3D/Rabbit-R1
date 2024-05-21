package androidx.compose.ui.window;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPopup.android.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n"}, d2 = {"<anonymous>", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$SimpleStack$1 implements MeasurePolicy {
    public static final AndroidPopup_androidKt$SimpleStack$1 INSTANCE = new AndroidPopup_androidKt$SimpleStack$1();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo21measure3p2s80s(MeasureScope Layout, List<? extends Measurable> measurables, long j) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int size = measurables.size();
        if (size == 0) {
            return MeasureScope.layout$default(Layout, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$measure$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable.PlacementScope layout) {
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.INSTANCE;
                }
            }, 4, null);
        }
        int i3 = 0;
        if (size == 1) {
            final Placeable mo3876measureBRTryo0 = measurables.get(0).mo3876measureBRTryo0(j);
            return MeasureScope.layout$default(Layout, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$measure$2
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
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                    Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
                }
            }, 4, null);
        }
        ArrayList arrayList = new ArrayList(measurables.size());
        int size2 = measurables.size();
        for (int i4 = 0; i4 < size2; i4++) {
            arrayList.add(measurables.get(i4).mo3876measureBRTryo0(j));
        }
        final ArrayList arrayList2 = arrayList;
        int lastIndex = CollectionsKt.getLastIndex(arrayList2);
        if (lastIndex >= 0) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                Placeable placeable = (Placeable) arrayList2.get(i3);
                i5 = Math.max(i5, placeable.getWidth());
                i6 = Math.max(i6, placeable.getHeight());
                if (i3 == lastIndex) {
                    break;
                }
                i3++;
            }
            i = i5;
            i2 = i6;
        } else {
            i = 0;
            i2 = 0;
        }
        return MeasureScope.layout$default(Layout, i, i2, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$measure$3
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                int lastIndex2 = CollectionsKt.getLastIndex(arrayList2);
                if (lastIndex2 < 0) {
                    return;
                }
                int i7 = 0;
                while (true) {
                    Placeable.PlacementScope.placeRelative$default(layout, arrayList2.get(i7), 0, 0, 0.0f, 4, null);
                    if (i7 == lastIndex2) {
                        return;
                    } else {
                        i7++;
                    }
                }
            }
        }, 4, null);
    }
}
