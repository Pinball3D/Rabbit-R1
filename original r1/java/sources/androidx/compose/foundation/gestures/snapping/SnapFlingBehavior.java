package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: SnapFlingBehavior.kt */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001BL\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\rø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J=\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0&H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(JL\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u0010$\u001a\u00020\u00062!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020'0&H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\u001d\u0010.\u001a\u00020\u0006*\u00020#2\u0006\u0010$\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010/J1\u0010.\u001a\u00020\u0006*\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0&H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010(JT\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u00102\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020'0&H\u0082@ø\u0001\u0000¢\u0006\u0002\u00104J=\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0!*\u00020#2\u0006\u0010\u001f\u001a\u00020\u00062\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0&H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0019\u0010\f\u001a\u00020\rX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00066"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;", "Landroidx/compose/foundation/gestures/FlingBehavior;", "snapLayoutInfoProvider", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "lowVelocityAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "highVelocityAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "snapAnimationSpec", "density", "Landroidx/compose/ui/unit/Density;", "shortSnapVelocityThreshold", "Landroidx/compose/ui/unit/Dp;", "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/ui/unit/Density;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "motionScaleDuration", "Landroidx/compose/ui/MotionDurationScale;", "getMotionScaleDuration$foundation_release", "()Landroidx/compose/ui/MotionDurationScale;", "setMotionScaleDuration$foundation_release", "(Landroidx/compose/ui/MotionDurationScale;)V", "F", "velocityThreshold", "equals", "", "other", "", "hashCode", "", "isDecayApproachPossible", "offset", "velocity", "fling", "Landroidx/compose/foundation/gestures/snapping/AnimationResult;", "Landroidx/compose/animation/core/AnimationVector1D;", "Landroidx/compose/foundation/gestures/ScrollScope;", "initialVelocity", "onRemainingScrollOffsetUpdate", "Lkotlin/Function1;", "", "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "longSnap", "onAnimationStep", "Lkotlin/ParameterName;", "name", "remainingScrollOffset", "performFling", "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSettlingDistanceUpdated", "runApproach", "initialTargetOffset", "delta", "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shortSnap", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapFlingBehavior implements FlingBehavior {
    public static final int $stable = 0;
    private final Density density;
    private final DecayAnimationSpec<Float> highVelocityAnimationSpec;
    private final AnimationSpec<Float> lowVelocityAnimationSpec;
    private MotionDurationScale motionScaleDuration;
    private final float shortSnapVelocityThreshold;
    private final AnimationSpec<Float> snapAnimationSpec;
    private final SnapLayoutInfoProvider snapLayoutInfoProvider;
    private final float velocityThreshold;

    public /* synthetic */ SnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, AnimationSpec animationSpec2, Density density, float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(snapLayoutInfoProvider, animationSpec, decayAnimationSpec, animationSpec2, density, f);
    }

    /* renamed from: getMotionScaleDuration$foundation_release, reason: from getter */
    public final MotionDurationScale getMotionScaleDuration() {
        return this.motionScaleDuration;
    }

    public final void setMotionScaleDuration$foundation_release(MotionDurationScale motionDurationScale) {
        Intrinsics.checkNotNullParameter(motionDurationScale, "<set-?>");
        this.motionScaleDuration = motionDurationScale;
    }

    private SnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, AnimationSpec<Float> lowVelocityAnimationSpec, DecayAnimationSpec<Float> highVelocityAnimationSpec, AnimationSpec<Float> snapAnimationSpec, Density density, float f) {
        Intrinsics.checkNotNullParameter(snapLayoutInfoProvider, "snapLayoutInfoProvider");
        Intrinsics.checkNotNullParameter(lowVelocityAnimationSpec, "lowVelocityAnimationSpec");
        Intrinsics.checkNotNullParameter(highVelocityAnimationSpec, "highVelocityAnimationSpec");
        Intrinsics.checkNotNullParameter(snapAnimationSpec, "snapAnimationSpec");
        Intrinsics.checkNotNullParameter(density, "density");
        this.snapLayoutInfoProvider = snapLayoutInfoProvider;
        this.lowVelocityAnimationSpec = lowVelocityAnimationSpec;
        this.highVelocityAnimationSpec = highVelocityAnimationSpec;
        this.snapAnimationSpec = snapAnimationSpec;
        this.density = density;
        this.shortSnapVelocityThreshold = f;
        this.velocityThreshold = density.mo335toPx0680j_4(f);
        this.motionScaleDuration = ScrollableKt.getDefaultScrollMotionDurationScale();
    }

    public /* synthetic */ SnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, AnimationSpec animationSpec2, Density density, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(snapLayoutInfoProvider, animationSpec, decayAnimationSpec, animationSpec2, density, (i & 32) != 0 ? SnapFlingBehaviorKt.getMinFlingVelocityDp() : f, null);
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public Object performFling(ScrollScope scrollScope, float f, Continuation<? super Float> continuation) {
        return performFling(scrollScope, f, new Function1<Float, Unit>() { // from class: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$2
            public final void invoke(float f2) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f2) {
                invoke(f2.floatValue());
                return Unit.INSTANCE;
            }
        }, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object performFling(androidx.compose.foundation.gestures.ScrollScope r5, float r6, kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super java.lang.Float> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$3
            if (r0 == 0) goto L14
            r0 = r8
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$3 r0 = (androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$3 r0 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$3
            r0.<init>(r4, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3e
        L2a:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.label = r3
            java.lang.Object r8 = r4.fling(r5, r6, r7, r0)
            if (r8 != r1) goto L3e
            return r1
        L3e:
            androidx.compose.foundation.gestures.snapping.AnimationResult r8 = (androidx.compose.foundation.gestures.snapping.AnimationResult) r8
            java.lang.Object r4 = r8.component1()
            java.lang.Number r4 = (java.lang.Number) r4
            float r4 = r4.floatValue()
            androidx.compose.animation.core.AnimationState r5 = r8.component2()
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 != 0) goto L54
            goto L5e
        L54:
            java.lang.Object r4 = r5.getVelocity()
            java.lang.Number r4 = (java.lang.Number) r4
            float r6 = r4.floatValue()
        L5e:
            java.lang.Float r4 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior.performFling(androidx.compose.foundation.gestures.ScrollScope, float, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fling(androidx.compose.foundation.gestures.ScrollScope r11, float r12, kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r13, kotlin.coroutines.Continuation<? super androidx.compose.foundation.gestures.snapping.AnimationResult<java.lang.Float, androidx.compose.animation.core.AnimationVector1D>> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1
            if (r0 == 0) goto L14
            r0 = r14
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1 r0 = (androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1 r0 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1
            r0.<init>(r10, r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r10 = r0.L$0
            r13 = r10
            kotlin.jvm.functions.Function1 r13 = (kotlin.jvm.functions.Function1) r13
            kotlin.ResultKt.throwOnFailure(r14)
            goto L56
        L2f:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L37:
            kotlin.ResultKt.throwOnFailure(r14)
            androidx.compose.ui.MotionDurationScale r14 = r10.motionScaleDuration
            kotlin.coroutines.CoroutineContext r14 = (kotlin.coroutines.CoroutineContext) r14
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1 r2 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1
            r9 = 0
            r4 = r2
            r5 = r12
            r6 = r10
            r7 = r11
            r8 = r13
            r4.<init>(r5, r6, r7, r8, r9)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r0.L$0 = r13
            r0.label = r3
            java.lang.Object r14 = kotlinx.coroutines.BuildersKt.withContext(r14, r2, r0)
            if (r14 != r1) goto L56
            return r1
        L56:
            androidx.compose.foundation.gestures.snapping.AnimationResult r14 = (androidx.compose.foundation.gestures.snapping.AnimationResult) r14
            r10 = 0
            java.lang.Float r10 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r10)
            r13.invoke(r10)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior.fling(androidx.compose.foundation.gestures.ScrollScope, float, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object shortSnap(ScrollScope scrollScope, float f, final Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        float calculateSnappingOffset = this.snapLayoutInfoProvider.calculateSnappingOffset(this.density, 0.0f);
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        floatRef.element = calculateSnappingOffset;
        return SnapFlingBehaviorKt.access$animateSnap(scrollScope, calculateSnappingOffset, calculateSnappingOffset, AnimationStateKt.AnimationState$default(0.0f, f, 0L, 0L, false, 28, null), this.snapAnimationSpec, new Function1<Float, Unit>() { // from class: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$shortSnap$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f2) {
                invoke(f2.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f2) {
                Ref.FloatRef.this.element -= f2;
                function1.invoke(Float.valueOf(Ref.FloatRef.this.element));
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00e0 A[PHI: r0
      0x00e0: PHI (r0v14 java.lang.Object) = (r0v13 java.lang.Object), (r0v1 java.lang.Object) binds: [B:17:0x00dd, B:10:0x0030] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object longSnap(androidx.compose.foundation.gestures.ScrollScope r24, float r25, final kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r26, kotlin.coroutines.Continuation<? super androidx.compose.foundation.gestures.snapping.AnimationResult<java.lang.Float, androidx.compose.animation.core.AnimationVector1D>> r27) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior.longSnap(androidx.compose.foundation.gestures.ScrollScope, float, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runApproach(ScrollScope scrollScope, float f, float f2, Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        LowVelocityApproachAnimation lowVelocityApproachAnimation;
        if (isDecayApproachPossible(f, f2)) {
            lowVelocityApproachAnimation = new HighVelocityApproachAnimation(this.highVelocityAnimationSpec);
        } else {
            lowVelocityApproachAnimation = new LowVelocityApproachAnimation(this.lowVelocityAnimationSpec, this.snapLayoutInfoProvider, this.density);
        }
        return SnapFlingBehaviorKt.access$approach(scrollScope, f, f2, lowVelocityApproachAnimation, this.snapLayoutInfoProvider, this.density, function1, continuation);
    }

    private final boolean isDecayApproachPossible(float offset, float velocity) {
        return Math.abs(DecayAnimationSpecKt.calculateTargetValue(this.highVelocityAnimationSpec, 0.0f, velocity)) >= Math.abs(offset) + this.snapLayoutInfoProvider.calculateSnapStepSize(this.density);
    }

    public boolean equals(Object other) {
        if (!(other instanceof SnapFlingBehavior)) {
            return false;
        }
        SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) other;
        return Intrinsics.areEqual(snapFlingBehavior.snapAnimationSpec, this.snapAnimationSpec) && Intrinsics.areEqual(snapFlingBehavior.highVelocityAnimationSpec, this.highVelocityAnimationSpec) && Intrinsics.areEqual(snapFlingBehavior.lowVelocityAnimationSpec, this.lowVelocityAnimationSpec) && Intrinsics.areEqual(snapFlingBehavior.snapLayoutInfoProvider, this.snapLayoutInfoProvider) && Intrinsics.areEqual(snapFlingBehavior.density, this.density) && Dp.m4888equalsimpl0(snapFlingBehavior.shortSnapVelocityThreshold, this.shortSnapVelocityThreshold);
    }

    public int hashCode() {
        return (((((((((this.snapAnimationSpec.hashCode() * 31) + this.highVelocityAnimationSpec.hashCode()) * 31) + this.lowVelocityAnimationSpec.hashCode()) * 31) + this.snapLayoutInfoProvider.hashCode()) * 31) + this.density.hashCode()) * 31) + Dp.m4889hashCodeimpl(this.shortSnapVelocityThreshold);
    }
}
