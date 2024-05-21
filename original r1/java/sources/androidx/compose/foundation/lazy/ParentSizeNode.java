package androidx.compose.foundation.lazy;

import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyItemScopeImpl.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ)\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroidx/compose/foundation/lazy/ParentSizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "fraction", "", "widthState", "Landroidx/compose/runtime/State;", "", "heightState", "(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V", "getFraction", "()F", "setFraction", "(F)V", "getHeightState", "()Landroidx/compose/runtime/State;", "setHeightState", "(Landroidx/compose/runtime/State;)V", "getWidthState", "setWidthState", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ParentSizeNode extends Modifier.Node implements LayoutModifierNode {
    private float fraction;
    private State<Integer> heightState;
    private State<Integer> widthState;

    public final float getFraction() {
        return this.fraction;
    }

    public final State<Integer> getHeightState() {
        return this.heightState;
    }

    public final State<Integer> getWidthState() {
        return this.widthState;
    }

    public final void setFraction(float f) {
        this.fraction = f;
    }

    public final void setHeightState(State<Integer> state) {
        this.heightState = state;
    }

    public final void setWidthState(State<Integer> state) {
        this.widthState = state;
    }

    public /* synthetic */ ParentSizeNode(float f, State state, State state2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, (i & 2) != 0 ? null : state, (i & 4) != 0 ? null : state2);
    }

    public ParentSizeNode(float f, State<Integer> state, State<Integer> state2) {
        this.fraction = f;
        this.widthState = state;
        this.heightState = state2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        State<Integer> state = this.widthState;
        int roundToInt = (state == null || state.getValue().intValue() == Integer.MAX_VALUE) ? Integer.MAX_VALUE : MathKt.roundToInt(state.getValue().floatValue() * this.fraction);
        State<Integer> state2 = this.heightState;
        int roundToInt2 = (state2 == null || state2.getValue().intValue() == Integer.MAX_VALUE) ? Integer.MAX_VALUE : MathKt.roundToInt(state2.getValue().floatValue() * this.fraction);
        int m4841getMinWidthimpl = roundToInt != Integer.MAX_VALUE ? roundToInt : Constraints.m4841getMinWidthimpl(j);
        int m4840getMinHeightimpl = roundToInt2 != Integer.MAX_VALUE ? roundToInt2 : Constraints.m4840getMinHeightimpl(j);
        if (roundToInt == Integer.MAX_VALUE) {
            roundToInt = Constraints.m4839getMaxWidthimpl(j);
        }
        if (roundToInt2 == Integer.MAX_VALUE) {
            roundToInt2 = Constraints.m4838getMaxHeightimpl(j);
        }
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(ConstraintsKt.Constraints(m4841getMinWidthimpl, roundToInt, m4840getMinHeightimpl, roundToInt2));
        return MeasureScope.layout$default(measure, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.lazy.ParentSizeNode$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                Placeable.PlacementScope.place$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
