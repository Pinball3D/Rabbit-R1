package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OutlinedTextField.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B4\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000bø\u0001\u0000¢\u0006\u0002\u0010\fJ<\u0010\r\u001a\u00020\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000e2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002J<\u0010\u0016\u001a\u00020\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000e2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002J\"\u0010\u0018\u001a\u00020\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010\u0019\u001a\u00020\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0016J/\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00112\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010!J\"\u0010\"\u001a\u00020\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010#\u001a\u00020\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006$"}, d2 = {"Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "onLabelMeasured", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Size;", "", "singleLine", "", "animationProgress", "", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "(Lkotlin/jvm/functions/Function1;ZFLandroidx/compose/foundation/layout/PaddingValues;)V", "intrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "intrinsicMeasurer", "Lkotlin/Function2;", "intrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "maxIntrinsicHeight", "maxIntrinsicWidth", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;
    private final Function1<Size, Unit> onLabelMeasured;
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    /* JADX WARN: Multi-variable type inference failed */
    public OutlinedTextFieldMeasurePolicy(Function1<? super Size, Unit> onLabelMeasured, boolean z, float f, PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(onLabelMeasured, "onLabelMeasured");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        this.onLabelMeasured = onLabelMeasured;
        this.singleLine = z;
        this.animationProgress = f;
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo21measure3p2s80s(final MeasureScope measure, List<? extends Measurable> measurables, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Placeable placeable;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        final int m1336calculateWidthDHJA7U0;
        final int m1335calculateHeightDHJA7U0;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int i2 = measure.mo329roundToPx0680j_4(this.paddingValues.getBottom());
        long m4830copyZbe2FdA$default = Constraints.m4830copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        List<? extends Measurable> list = measurables;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj), TextFieldImplKt.LeadingId)) {
                break;
            }
        }
        Measurable measurable = (Measurable) obj;
        Placeable mo3876measureBRTryo0 = measurable != null ? measurable.mo3876measureBRTryo0(m4830copyZbe2FdA$default) : null;
        int widthOrZero = TextFieldImplKt.widthOrZero(mo3876measureBRTryo0);
        int max = Math.max(0, TextFieldImplKt.heightOrZero(mo3876measureBRTryo0));
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it2.next();
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj2), TextFieldImplKt.TrailingId)) {
                break;
            }
        }
        Measurable measurable2 = (Measurable) obj2;
        Placeable mo3876measureBRTryo02 = measurable2 != null ? measurable2.mo3876measureBRTryo0(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, -widthOrZero, 0, 2, null)) : null;
        int widthOrZero2 = widthOrZero + TextFieldImplKt.widthOrZero(mo3876measureBRTryo02);
        int max2 = Math.max(max, TextFieldImplKt.heightOrZero(mo3876measureBRTryo02));
        Iterator<T> it3 = list.iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj3 = null;
                break;
            }
            obj3 = it3.next();
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj3), TextFieldImplKt.PrefixId)) {
                break;
            }
        }
        Measurable measurable3 = (Measurable) obj3;
        if (measurable3 != null) {
            i = max2;
            placeable = measurable3.mo3876measureBRTryo0(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, -widthOrZero2, 0, 2, null));
        } else {
            i = max2;
            placeable = null;
        }
        int widthOrZero3 = widthOrZero2 + TextFieldImplKt.widthOrZero(placeable);
        int max3 = Math.max(i, TextFieldImplKt.heightOrZero(placeable));
        Iterator<T> it4 = list.iterator();
        while (true) {
            if (!it4.hasNext()) {
                obj4 = null;
                break;
            }
            obj4 = it4.next();
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj4), TextFieldImplKt.SuffixId)) {
                break;
            }
        }
        Measurable measurable4 = (Measurable) obj4;
        Placeable mo3876measureBRTryo03 = measurable4 != null ? measurable4.mo3876measureBRTryo0(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, -widthOrZero3, 0, 2, null)) : null;
        int widthOrZero4 = widthOrZero3 + TextFieldImplKt.widthOrZero(mo3876measureBRTryo03);
        int max4 = Math.max(max3, TextFieldImplKt.heightOrZero(mo3876measureBRTryo03));
        boolean z = this.animationProgress < 1.0f;
        int i3 = measure.mo329roundToPx0680j_4(this.paddingValues.mo441calculateLeftPaddingu2uoSUM(measure.getLayoutDirection())) + measure.mo329roundToPx0680j_4(this.paddingValues.mo442calculateRightPaddingu2uoSUM(measure.getLayoutDirection()));
        int i4 = z ? (-widthOrZero4) - i3 : -i3;
        int i5 = -i2;
        long m4855offsetNN6EwU = ConstraintsKt.m4855offsetNN6EwU(m4830copyZbe2FdA$default, i4, i5);
        Iterator it5 = list.iterator();
        while (true) {
            if (!it5.hasNext()) {
                obj5 = null;
                break;
            }
            Object next = it5.next();
            Iterator it6 = it5;
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) next), TextFieldImplKt.LabelId)) {
                obj5 = next;
                break;
            }
            it5 = it6;
        }
        Measurable measurable5 = (Measurable) obj5;
        Placeable mo3876measureBRTryo04 = measurable5 != null ? measurable5.mo3876measureBRTryo0(m4855offsetNN6EwU) : null;
        if (mo3876measureBRTryo04 != null) {
            this.onLabelMeasured.invoke(Size.m2457boximpl(SizeKt.Size(mo3876measureBRTryo04.getWidth(), mo3876measureBRTryo04.getHeight())));
        }
        int max5 = Math.max(TextFieldImplKt.heightOrZero(mo3876measureBRTryo04) / 2, measure.mo329roundToPx0680j_4(this.paddingValues.getTop()));
        Placeable placeable2 = mo3876measureBRTryo04;
        long m4830copyZbe2FdA$default2 = Constraints.m4830copyZbe2FdA$default(ConstraintsKt.m4855offsetNN6EwU(j, -widthOrZero4, i5 - max5), 0, 0, 0, 0, 11, null);
        Iterator it7 = list.iterator();
        while (true) {
            final Placeable placeable3 = placeable2;
            if (it7.hasNext()) {
                Measurable measurable6 = (Measurable) it7.next();
                Iterator it8 = it7;
                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable6), TextFieldImplKt.TextFieldId)) {
                    final Placeable mo3876measureBRTryo05 = measurable6.mo3876measureBRTryo0(m4830copyZbe2FdA$default2);
                    long m4830copyZbe2FdA$default3 = Constraints.m4830copyZbe2FdA$default(m4830copyZbe2FdA$default2, 0, 0, 0, 0, 14, null);
                    Iterator it9 = list.iterator();
                    while (true) {
                        if (!it9.hasNext()) {
                            obj6 = null;
                            break;
                        }
                        Object next2 = it9.next();
                        Iterator it10 = it9;
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) next2), TextFieldImplKt.PlaceholderId)) {
                            obj6 = next2;
                            break;
                        }
                        it9 = it10;
                    }
                    Measurable measurable7 = (Measurable) obj6;
                    Placeable mo3876measureBRTryo06 = measurable7 != null ? measurable7.mo3876measureBRTryo0(m4830copyZbe2FdA$default3) : null;
                    long m4830copyZbe2FdA$default4 = Constraints.m4830copyZbe2FdA$default(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, 0, -Math.max(max4, Math.max(TextFieldImplKt.heightOrZero(mo3876measureBRTryo05), TextFieldImplKt.heightOrZero(mo3876measureBRTryo06)) + max5 + i2), 1, null), 0, 0, 0, 0, 11, null);
                    Iterator<T> it11 = list.iterator();
                    while (true) {
                        if (!it11.hasNext()) {
                            obj7 = null;
                            break;
                        }
                        obj7 = it11.next();
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj7), TextFieldImplKt.SupportingId)) {
                            break;
                        }
                    }
                    Measurable measurable8 = (Measurable) obj7;
                    final Placeable mo3876measureBRTryo07 = measurable8 != null ? measurable8.mo3876measureBRTryo0(m4830copyZbe2FdA$default4) : null;
                    int heightOrZero = TextFieldImplKt.heightOrZero(mo3876measureBRTryo07);
                    m1336calculateWidthDHJA7U0 = OutlinedTextFieldKt.m1336calculateWidthDHJA7U0(TextFieldImplKt.widthOrZero(mo3876measureBRTryo0), TextFieldImplKt.widthOrZero(mo3876measureBRTryo02), TextFieldImplKt.widthOrZero(placeable), TextFieldImplKt.widthOrZero(mo3876measureBRTryo03), mo3876measureBRTryo05.getWidth(), TextFieldImplKt.widthOrZero(placeable3), TextFieldImplKt.widthOrZero(mo3876measureBRTryo06), z, j, measure.getDensity(), this.paddingValues);
                    m1335calculateHeightDHJA7U0 = OutlinedTextFieldKt.m1335calculateHeightDHJA7U0(TextFieldImplKt.heightOrZero(mo3876measureBRTryo0), TextFieldImplKt.heightOrZero(mo3876measureBRTryo02), TextFieldImplKt.heightOrZero(placeable), TextFieldImplKt.heightOrZero(mo3876measureBRTryo03), mo3876measureBRTryo05.getHeight(), TextFieldImplKt.heightOrZero(placeable3), TextFieldImplKt.heightOrZero(mo3876measureBRTryo06), TextFieldImplKt.heightOrZero(mo3876measureBRTryo07), j, measure.getDensity(), this.paddingValues);
                    int i6 = m1335calculateHeightDHJA7U0 - heightOrZero;
                    for (Measurable measurable9 : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable9), TextFieldImplKt.ContainerId)) {
                            final Placeable mo3876measureBRTryo08 = measurable9.mo3876measureBRTryo0(ConstraintsKt.Constraints(m1336calculateWidthDHJA7U0 != Integer.MAX_VALUE ? m1336calculateWidthDHJA7U0 : 0, m1336calculateWidthDHJA7U0, i6 != Integer.MAX_VALUE ? i6 : 0, i6));
                            final Placeable placeable4 = mo3876measureBRTryo0;
                            final Placeable placeable5 = mo3876measureBRTryo02;
                            final Placeable placeable6 = placeable;
                            final Placeable placeable7 = mo3876measureBRTryo03;
                            final Placeable placeable8 = mo3876measureBRTryo06;
                            return MeasureScope.layout$default(measure, m1336calculateWidthDHJA7U0, m1335calculateHeightDHJA7U0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$measure$2
                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                                    float f;
                                    boolean z2;
                                    PaddingValues paddingValues;
                                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                    int i7 = m1335calculateHeightDHJA7U0;
                                    int i8 = m1336calculateWidthDHJA7U0;
                                    Placeable placeable9 = placeable4;
                                    Placeable placeable10 = placeable5;
                                    Placeable placeable11 = placeable6;
                                    Placeable placeable12 = placeable7;
                                    Placeable placeable13 = mo3876measureBRTryo05;
                                    Placeable placeable14 = placeable3;
                                    Placeable placeable15 = placeable8;
                                    Placeable placeable16 = mo3876measureBRTryo08;
                                    Placeable placeable17 = mo3876measureBRTryo07;
                                    f = this.animationProgress;
                                    z2 = this.singleLine;
                                    float density = measure.getDensity();
                                    LayoutDirection layoutDirection = measure.getLayoutDirection();
                                    paddingValues = this.paddingValues;
                                    OutlinedTextFieldKt.place(layout, i7, i8, placeable9, placeable10, placeable11, placeable12, placeable13, placeable14, placeable15, placeable16, placeable17, f, z2, density, layoutDirection, paddingValues);
                                }
                            }, 4, null);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                it7 = it8;
                placeable2 = placeable3;
            } else {
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.maxIntrinsicHeight(i2));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.minIntrinsicHeight(i2));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicWidth(intrinsicMeasureScope, measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.maxIntrinsicWidth(i2));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicWidth(intrinsicMeasureScope, measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.minIntrinsicWidth(i2));
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int intrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int m1336calculateWidthDHJA7U0;
        List<? extends IntrinsicMeasurable> list2 = list;
        for (Object obj7 : list2) {
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj7), TextFieldImplKt.TextFieldId)) {
                int intValue = function2.invoke(obj7, Integer.valueOf(i)).intValue();
                Iterator<T> it = list2.iterator();
                while (true) {
                    obj = null;
                    if (!it.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj2), TextFieldImplKt.LabelId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                int intValue2 = intrinsicMeasurable != null ? function2.invoke(intrinsicMeasurable, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it2 = list2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj3 = null;
                        break;
                    }
                    obj3 = it2.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj3), TextFieldImplKt.TrailingId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                int intValue3 = intrinsicMeasurable2 != null ? function2.invoke(intrinsicMeasurable2, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it3 = list2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj4 = null;
                        break;
                    }
                    obj4 = it3.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), TextFieldImplKt.LeadingId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                int intValue4 = intrinsicMeasurable3 != null ? function2.invoke(intrinsicMeasurable3, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it4 = list2.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        obj5 = null;
                        break;
                    }
                    obj5 = it4.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), TextFieldImplKt.PrefixId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
                int intValue5 = intrinsicMeasurable4 != null ? function2.invoke(intrinsicMeasurable4, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it5 = list2.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        obj6 = null;
                        break;
                    }
                    obj6 = it5.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj6), TextFieldImplKt.SuffixId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) obj6;
                int intValue6 = intrinsicMeasurable5 != null ? function2.invoke(intrinsicMeasurable5, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it6 = list2.iterator();
                while (true) {
                    if (!it6.hasNext()) {
                        break;
                    }
                    Object next = it6.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) next), TextFieldImplKt.PlaceholderId)) {
                        obj = next;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable6 = (IntrinsicMeasurable) obj;
                m1336calculateWidthDHJA7U0 = OutlinedTextFieldKt.m1336calculateWidthDHJA7U0(intValue4, intValue3, intValue5, intValue6, intValue, intValue2, intrinsicMeasurable6 != null ? function2.invoke(intrinsicMeasurable6, Integer.valueOf(i)).intValue() : 0, this.animationProgress < 1.0f, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m1336calculateWidthDHJA7U0;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int intrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        int m1335calculateHeightDHJA7U0;
        List<? extends IntrinsicMeasurable> list2 = list;
        for (Object obj8 : list2) {
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj8), TextFieldImplKt.TextFieldId)) {
                int intValue = function2.invoke(obj8, Integer.valueOf(i)).intValue();
                Iterator<T> it = list2.iterator();
                while (true) {
                    obj = null;
                    if (!it.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj2), TextFieldImplKt.LabelId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                int intValue2 = intrinsicMeasurable != null ? function2.invoke(intrinsicMeasurable, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it2 = list2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj3 = null;
                        break;
                    }
                    obj3 = it2.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj3), TextFieldImplKt.TrailingId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                int intValue3 = intrinsicMeasurable2 != null ? function2.invoke(intrinsicMeasurable2, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it3 = list2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj4 = null;
                        break;
                    }
                    obj4 = it3.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), TextFieldImplKt.LeadingId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                int intValue4 = intrinsicMeasurable3 != null ? function2.invoke(intrinsicMeasurable3, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it4 = list2.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        obj5 = null;
                        break;
                    }
                    obj5 = it4.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), TextFieldImplKt.PrefixId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
                int intValue5 = intrinsicMeasurable4 != null ? function2.invoke(intrinsicMeasurable4, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it5 = list2.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        obj6 = null;
                        break;
                    }
                    obj6 = it5.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj6), TextFieldImplKt.SuffixId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) obj6;
                int intValue6 = intrinsicMeasurable5 != null ? function2.invoke(intrinsicMeasurable5, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it6 = list2.iterator();
                while (true) {
                    if (!it6.hasNext()) {
                        obj7 = null;
                        break;
                    }
                    obj7 = it6.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj7), TextFieldImplKt.PlaceholderId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable6 = (IntrinsicMeasurable) obj7;
                int intValue7 = intrinsicMeasurable6 != null ? function2.invoke(intrinsicMeasurable6, Integer.valueOf(i)).intValue() : 0;
                Iterator<T> it7 = list2.iterator();
                while (true) {
                    if (!it7.hasNext()) {
                        break;
                    }
                    Object next = it7.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) next), TextFieldImplKt.SupportingId)) {
                        obj = next;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable7 = (IntrinsicMeasurable) obj;
                m1335calculateHeightDHJA7U0 = OutlinedTextFieldKt.m1335calculateHeightDHJA7U0(intValue4, intValue3, intValue5, intValue6, intValue, intValue2, intValue7, intrinsicMeasurable7 != null ? function2.invoke(intrinsicMeasurable7, Integer.valueOf(i)).intValue() : 0, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m1335calculateHeightDHJA7U0;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
