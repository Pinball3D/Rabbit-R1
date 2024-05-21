package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VectorizedAnimationSpec.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000b\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B'\b\u0016\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\bB\u001f\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010\u0017J&\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010\u0019J.\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010\u001cJ.\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001e"}, d2 = {"Landroidx/compose/animation/core/VectorizedSpringSpec;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;", "dampingRatio", "", "stiffness", "visibilityThreshold", "(FFLandroidx/compose/animation/core/AnimationVector;)V", "anims", "Landroidx/compose/animation/core/Animations;", "(FFLandroidx/compose/animation/core/Animations;)V", "getDampingRatio", "()F", "isInfinite", "", "()Z", "getStiffness", "getDurationNanos", "", "initialValue", "targetValue", "initialVelocity", "(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J", "getEndVelocity", "(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;", "getValueFromNanos", "playTimeNanos", "(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;", "getVelocityFromNanos", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorizedSpringSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public static final int $stable = 8;
    private final /* synthetic */ VectorizedFloatAnimationSpec<V> $$delegate_0;
    private final float dampingRatio;
    private final float stiffness;

    public final float getDampingRatio() {
        return this.dampingRatio;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(V initialValue, V targetValue, V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.$$delegate_0.getDurationNanos(initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getEndVelocity(V initialValue, V targetValue, V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.$$delegate_0.getEndVelocity(initialValue, targetValue, initialVelocity);
    }

    public final float getStiffness() {
        return this.stiffness;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getValueFromNanos(long playTimeNanos, V initialValue, V targetValue, V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.$$delegate_0.getValueFromNanos(playTimeNanos, initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getVelocityFromNanos(long playTimeNanos, V initialValue, V targetValue, V initialVelocity) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return this.$$delegate_0.getVelocityFromNanos(playTimeNanos, initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedFiniteAnimationSpec, androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean isInfinite() {
        return this.$$delegate_0.isInfinite();
    }

    private VectorizedSpringSpec(float f, float f2, Animations animations) {
        this.dampingRatio = f;
        this.stiffness = f2;
        this.$$delegate_0 = new VectorizedFloatAnimationSpec<>(animations);
    }

    public /* synthetic */ VectorizedSpringSpec(float f, float f2, AnimationVector animationVector, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f, (i & 2) != 0 ? 1500.0f : f2, (i & 4) != 0 ? null : animationVector);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VectorizedSpringSpec(float r1, float r2, V r3) {
        /*
            r0 = this;
            androidx.compose.animation.core.Animations r3 = androidx.compose.animation.core.VectorizedAnimationSpecKt.access$createSpringAnimations(r3, r1, r2)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.VectorizedSpringSpec.<init>(float, float, androidx.compose.animation.core.AnimationVector):void");
    }
}
