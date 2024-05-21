package androidx.compose.animation;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* compiled from: AnimatedVisibility.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u0007\u001a\u00020\b*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\bH\u0016J\"\u0010\u000e\u001a\u00020\b*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\bH\u0016J/\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\"\u0010\u0018\u001a\u00020\b*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\bH\u0016J\"\u0010\u0019\u001a\u00020\b*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "scope", "Landroidx/compose/animation/AnimatedVisibilityScopeImpl;", "(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V", "getScope", "()Landroidx/compose/animation/AnimatedVisibilityScopeImpl;", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AnimatedEnterExitMeasurePolicy implements MeasurePolicy {
    private final AnimatedVisibilityScopeImpl scope;

    public final AnimatedVisibilityScopeImpl getScope() {
        return this.scope;
    }

    public AnimatedEnterExitMeasurePolicy(AnimatedVisibilityScopeImpl scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v22 */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo21measure3p2s80s(MeasureScope measure, List<? extends Measurable> measurables, long j) {
        Object obj;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        List<? extends Measurable> list = measurables;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Measurable) it.next()).mo3876measureBRTryo0(j));
        }
        final ArrayList arrayList2 = arrayList;
        Placeable placeable = null;
        int i = 1;
        if (arrayList2.isEmpty()) {
            obj = null;
        } else {
            obj = arrayList2.get(0);
            int width = ((Placeable) obj).getWidth();
            int lastIndex = CollectionsKt.getLastIndex(arrayList2);
            if (1 <= lastIndex) {
                int i2 = 1;
                while (true) {
                    Object obj2 = arrayList2.get(i2);
                    int width2 = ((Placeable) obj2).getWidth();
                    if (width < width2) {
                        obj = obj2;
                        width = width2;
                    }
                    if (i2 == lastIndex) {
                        break;
                    }
                    i2++;
                }
            }
        }
        Placeable placeable2 = (Placeable) obj;
        int width3 = placeable2 != null ? placeable2.getWidth() : 0;
        if (!arrayList2.isEmpty()) {
            ?? r11 = arrayList2.get(0);
            int height = ((Placeable) r11).getHeight();
            int lastIndex2 = CollectionsKt.getLastIndex(arrayList2);
            boolean z = r11;
            if (1 <= lastIndex2) {
                while (true) {
                    Object obj3 = arrayList2.get(i);
                    int height2 = ((Placeable) obj3).getHeight();
                    r11 = z;
                    if (height < height2) {
                        r11 = obj3;
                        height = height2;
                    }
                    if (i == lastIndex2) {
                        break;
                    }
                    i++;
                    z = r11;
                }
            }
            placeable = r11;
        }
        Placeable placeable3 = placeable;
        int height3 = placeable3 != null ? placeable3.getHeight() : 0;
        this.scope.getTargetSize$animation_release().setValue(IntSize.m5035boximpl(IntSizeKt.IntSize(width3, height3)));
        return MeasureScope.layout$default(measure, width3, height3, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                List<Placeable> list2 = arrayList2;
                int size = list2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Placeable.PlacementScope.place$default(layout, list2.get(i3), 0, 0, 0.0f, 4, null);
                }
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, final int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) SequencesKt.maxOrNull(SequencesKt.map(CollectionsKt.asSequence(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.minIntrinsicWidth(i));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, final int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) SequencesKt.maxOrNull(SequencesKt.map(CollectionsKt.asSequence(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.minIntrinsicHeight(i));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, final int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) SequencesKt.maxOrNull(SequencesKt.map(CollectionsKt.asSequence(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.maxIntrinsicWidth(i));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, final int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) SequencesKt.maxOrNull(SequencesKt.map(CollectionsKt.asSequence(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.maxIntrinsicHeight(i));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }
}
