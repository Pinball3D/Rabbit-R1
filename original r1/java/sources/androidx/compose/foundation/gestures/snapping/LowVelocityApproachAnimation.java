package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapFlingBehavior.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJX\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u0012H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/LowVelocityApproachAnimation;", "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "lowVelocityAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "layoutInfoProvider", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "density", "Landroidx/compose/ui/unit/Density;", "(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/ui/unit/Density;)V", "approachAnimation", "Landroidx/compose/foundation/gestures/snapping/AnimationResult;", "scope", "Landroidx/compose/foundation/gestures/ScrollScope;", "offset", "velocity", "onAnimationStep", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "delta", "", "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LowVelocityApproachAnimation implements ApproachAnimation<Float, AnimationVector1D> {
    private final Density density;
    private final SnapLayoutInfoProvider layoutInfoProvider;
    private final AnimationSpec<Float> lowVelocityAnimationSpec;

    public LowVelocityApproachAnimation(AnimationSpec<Float> lowVelocityAnimationSpec, SnapLayoutInfoProvider layoutInfoProvider, Density density) {
        Intrinsics.checkNotNullParameter(lowVelocityAnimationSpec, "lowVelocityAnimationSpec");
        Intrinsics.checkNotNullParameter(layoutInfoProvider, "layoutInfoProvider");
        Intrinsics.checkNotNullParameter(density, "density");
        this.lowVelocityAnimationSpec = lowVelocityAnimationSpec;
        this.layoutInfoProvider = layoutInfoProvider;
        this.density = density;
    }

    @Override // androidx.compose.foundation.gestures.snapping.ApproachAnimation
    public /* bridge */ /* synthetic */ Object approachAnimation(ScrollScope scrollScope, Float f, Float f2, Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        return approachAnimation(scrollScope, f.floatValue(), f2.floatValue(), function1, continuation);
    }

    public Object approachAnimation(ScrollScope scrollScope, float f, float f2, Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        Object access$animateSnap = SnapFlingBehaviorKt.access$animateSnap(scrollScope, (Math.abs(f) + this.layoutInfoProvider.calculateSnapStepSize(this.density)) * Math.signum(f2), f, AnimationStateKt.AnimationState$default(0.0f, f2, 0L, 0L, false, 28, null), this.lowVelocityAnimationSpec, function1, continuation);
        return access$animateSnap == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? access$animateSnap : (AnimationResult) access$animateSnap;
    }
}
