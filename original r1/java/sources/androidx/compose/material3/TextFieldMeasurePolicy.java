package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
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
/* compiled from: TextField.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ8\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J<\u0010\u0011\u001a\u00020\n*\u00020\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0013\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\"\u0010\u0014\u001a\u00020\n*\u00020\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u0015\u001a\u00020\n*\u00020\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\nH\u0016J/\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00190\f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\"\u0010\u001e\u001a\u00020\n*\u00020\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u001f\u001a\u00020\n*\u00020\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006 "}, d2 = {"Landroidx/compose/material3/TextFieldMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "singleLine", "", "animationProgress", "", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "(ZFLandroidx/compose/foundation/layout/PaddingValues;)V", "intrinsicWidth", "", "measurables", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.HEIGHT, "intrinsicMeasurer", "Lkotlin/Function2;", "intrinsicHeight", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicHeight", "maxIntrinsicWidth", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    public TextFieldMeasurePolicy(boolean z, float f, PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
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
        Placeable placeable;
        Placeable placeable2;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        final int m1559calculateWidthyeHjK3Y;
        final int m1558calculateHeightmKXJcVc;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int i = measure.mo329roundToPx0680j_4(this.paddingValues.getTop());
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
            placeable = mo3876measureBRTryo0;
            placeable2 = measurable3.mo3876measureBRTryo0(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, -widthOrZero2, 0, 2, null));
        } else {
            placeable = mo3876measureBRTryo0;
            placeable2 = null;
        }
        int widthOrZero3 = widthOrZero2 + TextFieldImplKt.widthOrZero(placeable2);
        int max3 = Math.max(max2, TextFieldImplKt.heightOrZero(placeable2));
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
        final Placeable mo3876measureBRTryo03 = measurable4 != null ? measurable4.mo3876measureBRTryo0(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, -widthOrZero3, 0, 2, null)) : null;
        int widthOrZero4 = widthOrZero3 + TextFieldImplKt.widthOrZero(mo3876measureBRTryo03);
        int max4 = Math.max(max3, TextFieldImplKt.heightOrZero(mo3876measureBRTryo03));
        int i3 = -widthOrZero4;
        long m4855offsetNN6EwU = ConstraintsKt.m4855offsetNN6EwU(m4830copyZbe2FdA$default, i3, -i2);
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
        int heightOrZero = TextFieldImplKt.heightOrZero(mo3876measureBRTryo04) + i;
        int i4 = i;
        long m4855offsetNN6EwU2 = ConstraintsKt.m4855offsetNN6EwU(Constraints.m4830copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null), i3, (-heightOrZero) - i2);
        Iterator it7 = list.iterator();
        while (true) {
            final int i5 = i4;
            if (it7.hasNext()) {
                Measurable measurable6 = (Measurable) it7.next();
                Iterator it8 = it7;
                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable6), TextFieldImplKt.TextFieldId)) {
                    final Placeable mo3876measureBRTryo05 = measurable6.mo3876measureBRTryo0(m4855offsetNN6EwU2);
                    long m4830copyZbe2FdA$default2 = Constraints.m4830copyZbe2FdA$default(m4855offsetNN6EwU2, 0, 0, 0, 0, 14, null);
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
                    Placeable mo3876measureBRTryo06 = measurable7 != null ? measurable7.mo3876measureBRTryo0(m4830copyZbe2FdA$default2) : null;
                    long m4830copyZbe2FdA$default3 = Constraints.m4830copyZbe2FdA$default(ConstraintsKt.m4856offsetNN6EwU$default(m4830copyZbe2FdA$default, 0, -Math.max(max4, Math.max(TextFieldImplKt.heightOrZero(mo3876measureBRTryo05), TextFieldImplKt.heightOrZero(mo3876measureBRTryo06)) + heightOrZero + i2), 1, null), 0, 0, 0, 0, 11, null);
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
                    Placeable mo3876measureBRTryo07 = measurable8 != null ? measurable8.mo3876measureBRTryo0(m4830copyZbe2FdA$default3) : null;
                    int heightOrZero2 = TextFieldImplKt.heightOrZero(mo3876measureBRTryo07);
                    m1559calculateWidthyeHjK3Y = TextFieldKt.m1559calculateWidthyeHjK3Y(TextFieldImplKt.widthOrZero(placeable), TextFieldImplKt.widthOrZero(mo3876measureBRTryo02), TextFieldImplKt.widthOrZero(placeable2), TextFieldImplKt.widthOrZero(mo3876measureBRTryo03), mo3876measureBRTryo05.getWidth(), TextFieldImplKt.widthOrZero(mo3876measureBRTryo04), TextFieldImplKt.widthOrZero(mo3876measureBRTryo06), j);
                    m1558calculateHeightmKXJcVc = TextFieldKt.m1558calculateHeightmKXJcVc(mo3876measureBRTryo05.getHeight(), TextFieldImplKt.heightOrZero(mo3876measureBRTryo04), TextFieldImplKt.heightOrZero(placeable), TextFieldImplKt.heightOrZero(mo3876measureBRTryo02), TextFieldImplKt.heightOrZero(placeable2), TextFieldImplKt.heightOrZero(mo3876measureBRTryo03), TextFieldImplKt.heightOrZero(mo3876measureBRTryo06), TextFieldImplKt.heightOrZero(mo3876measureBRTryo07), this.animationProgress == 1.0f, j, measure.getDensity(), this.paddingValues);
                    int i6 = m1558calculateHeightmKXJcVc - heightOrZero2;
                    for (Measurable measurable9 : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable9), TextFieldImplKt.ContainerId)) {
                            final Placeable mo3876measureBRTryo08 = measurable9.mo3876measureBRTryo0(ConstraintsKt.Constraints(m1559calculateWidthyeHjK3Y != Integer.MAX_VALUE ? m1559calculateWidthyeHjK3Y : 0, m1559calculateWidthyeHjK3Y, i6 != Integer.MAX_VALUE ? i6 : 0, i6));
                            final Placeable placeable3 = mo3876measureBRTryo04;
                            final Placeable placeable4 = mo3876measureBRTryo06;
                            final Placeable placeable5 = placeable;
                            final Placeable placeable6 = mo3876measureBRTryo02;
                            final Placeable placeable7 = placeable2;
                            final Placeable placeable8 = mo3876measureBRTryo07;
                            return MeasureScope.layout$default(measure, m1559calculateWidthyeHjK3Y, m1558calculateHeightmKXJcVc, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.TextFieldMeasurePolicy$measure$1
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
                                    boolean z;
                                    PaddingValues paddingValues;
                                    boolean z2;
                                    float f;
                                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                    Placeable placeable9 = Placeable.this;
                                    if (placeable9 != null) {
                                        int i7 = m1559calculateWidthyeHjK3Y;
                                        int i8 = m1558calculateHeightmKXJcVc;
                                        Placeable placeable10 = mo3876measureBRTryo05;
                                        Placeable placeable11 = placeable4;
                                        Placeable placeable12 = placeable5;
                                        Placeable placeable13 = placeable6;
                                        Placeable placeable14 = placeable7;
                                        Placeable placeable15 = mo3876measureBRTryo03;
                                        Placeable placeable16 = mo3876measureBRTryo08;
                                        Placeable placeable17 = placeable8;
                                        z2 = this.singleLine;
                                        int i9 = i5;
                                        int height = i9 + Placeable.this.getHeight();
                                        f = this.animationProgress;
                                        TextFieldKt.placeWithLabel(layout, i7, i8, placeable10, placeable9, placeable11, placeable12, placeable13, placeable14, placeable15, placeable16, placeable17, z2, i9, height, f, measure.getDensity());
                                        return;
                                    }
                                    int i10 = m1559calculateWidthyeHjK3Y;
                                    int i11 = m1558calculateHeightmKXJcVc;
                                    Placeable placeable18 = mo3876measureBRTryo05;
                                    Placeable placeable19 = placeable4;
                                    Placeable placeable20 = placeable5;
                                    Placeable placeable21 = placeable6;
                                    Placeable placeable22 = placeable7;
                                    Placeable placeable23 = mo3876measureBRTryo03;
                                    Placeable placeable24 = mo3876measureBRTryo08;
                                    Placeable placeable25 = placeable8;
                                    z = this.singleLine;
                                    float density = measure.getDensity();
                                    paddingValues = this.paddingValues;
                                    TextFieldKt.placeWithoutLabel(layout, i10, i11, placeable18, placeable19, placeable20, placeable21, placeable22, placeable23, placeable24, placeable25, z, density, paddingValues);
                                }
                            }, 4, null);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                it7 = it8;
                i4 = i5;
            } else {
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.TextFieldMeasurePolicy$maxIntrinsicHeight$1
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
        return intrinsicHeight(intrinsicMeasureScope, measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.TextFieldMeasurePolicy$minIntrinsicHeight$1
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
        return intrinsicWidth(measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.TextFieldMeasurePolicy$maxIntrinsicWidth$1
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
        return intrinsicWidth(measurables, i, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material3.TextFieldMeasurePolicy$minIntrinsicWidth$1
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
    private final int intrinsicWidth(List<? extends IntrinsicMeasurable> measurables, int height, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> intrinsicMeasurer) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int m1559calculateWidthyeHjK3Y;
        List<? extends IntrinsicMeasurable> list = measurables;
        for (Object obj7 : list) {
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj7), TextFieldImplKt.TextFieldId)) {
                int intValue = intrinsicMeasurer.invoke(obj7, Integer.valueOf(height)).intValue();
                Iterator<T> it = list.iterator();
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
                int intValue2 = intrinsicMeasurable != null ? intrinsicMeasurer.invoke(intrinsicMeasurable, Integer.valueOf(height)).intValue() : 0;
                Iterator<T> it2 = list.iterator();
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
                int intValue3 = intrinsicMeasurable2 != null ? intrinsicMeasurer.invoke(intrinsicMeasurable2, Integer.valueOf(height)).intValue() : 0;
                Iterator<T> it3 = list.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj4 = null;
                        break;
                    }
                    obj4 = it3.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), TextFieldImplKt.PrefixId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                int intValue4 = intrinsicMeasurable3 != null ? intrinsicMeasurer.invoke(intrinsicMeasurable3, Integer.valueOf(height)).intValue() : 0;
                Iterator<T> it4 = list.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        obj5 = null;
                        break;
                    }
                    obj5 = it4.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), TextFieldImplKt.SuffixId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj5;
                int intValue5 = intrinsicMeasurable4 != null ? intrinsicMeasurer.invoke(intrinsicMeasurable4, Integer.valueOf(height)).intValue() : 0;
                Iterator<T> it5 = list.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        obj6 = null;
                        break;
                    }
                    obj6 = it5.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj6), TextFieldImplKt.LeadingId)) {
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) obj6;
                int intValue6 = intrinsicMeasurable5 != null ? intrinsicMeasurer.invoke(intrinsicMeasurable5, Integer.valueOf(height)).intValue() : 0;
                Iterator<T> it6 = list.iterator();
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
                m1559calculateWidthyeHjK3Y = TextFieldKt.m1559calculateWidthyeHjK3Y(intValue6, intValue3, intValue4, intValue5, intValue, intValue2, intrinsicMeasurable6 != null ? intrinsicMeasurer.invoke(intrinsicMeasurable6, Integer.valueOf(height)).intValue() : 0, TextFieldImplKt.getZeroConstraints());
                return m1559calculateWidthyeHjK3Y;
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
        int m1558calculateHeightmKXJcVc;
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
                m1558calculateHeightmKXJcVc = TextFieldKt.m1558calculateHeightmKXJcVc(intValue, intValue2, intValue4, intValue3, intValue5, intValue6, intValue7, intrinsicMeasurable7 != null ? function2.invoke(intrinsicMeasurable7, Integer.valueOf(i)).intValue() : 0, this.animationProgress == 1.0f, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m1558calculateHeightmKXJcVc;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
