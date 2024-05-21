package androidx.compose.foundation.layout;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.foundation.layout.AndroidFlingSpline;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WindowInsetsConnection.android.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J \u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;", "Landroidx/compose/animation/core/FloatDecayAnimationSpec;", "density", "Landroidx/compose/ui/unit/Density;", "(Landroidx/compose/ui/unit/Density;)V", "absVelocityThreshold", "", "getAbsVelocityThreshold", "()F", "magicPhysicalCoefficient", "flingDistance", "velocity", "getDurationNanos", "", "initialValue", "initialVelocity", "getSplineDeceleration", "", "getTargetValue", "getValueFromNanos", "playTimeNanos", "getVelocityFromNanos", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {
    private final float magicPhysicalCoefficient;

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getAbsVelocityThreshold() {
        return 0.0f;
    }

    public SplineBasedFloatDecayAnimationSpec(Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.magicPhysicalCoefficient = density.getDensity() * 386.0878f * 160.0f * 0.84f;
    }

    private final double getSplineDeceleration(float velocity) {
        return AndroidFlingSpline.INSTANCE.deceleration(velocity, WindowInsetsConnection_androidKt.access$getPlatformFlingScrollFriction$p() * this.magicPhysicalCoefficient);
    }

    public final float flingDistance(float velocity) {
        return ((float) (WindowInsetsConnection_androidKt.access$getPlatformFlingScrollFriction$p() * this.magicPhysicalCoefficient * Math.exp((WindowInsetsConnection_androidKt.access$getDecelerationRate$p() / WindowInsetsConnection_androidKt.access$getDecelMinusOne$p()) * getSplineDeceleration(velocity)))) * Math.signum(velocity);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getTargetValue(float initialValue, float initialVelocity) {
        return initialValue + flingDistance(initialVelocity);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getValueFromNanos(long playTimeNanos, float initialValue, float initialVelocity) {
        long durationNanos = getDurationNanos(0.0f, initialVelocity);
        return initialValue + (flingDistance(initialVelocity) * AndroidFlingSpline.FlingResult.m396getDistanceCoefficientimpl(AndroidFlingSpline.INSTANCE.m391flingPositionLfoxSSI(durationNanos > 0 ? ((float) playTimeNanos) / ((float) durationNanos) : 1.0f)));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long getDurationNanos(float initialValue, float initialVelocity) {
        return (long) (Math.exp(getSplineDeceleration(initialVelocity) / WindowInsetsConnection_androidKt.access$getDecelMinusOne$p()) * 1.0E9d);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getVelocityFromNanos(long playTimeNanos, float initialValue, float initialVelocity) {
        long durationNanos = getDurationNanos(0.0f, initialVelocity);
        return ((AndroidFlingSpline.FlingResult.m397getVelocityCoefficientimpl(AndroidFlingSpline.INSTANCE.m391flingPositionLfoxSSI(durationNanos > 0 ? ((float) playTimeNanos) / ((float) durationNanos) : 1.0f)) * flingDistance(initialVelocity)) / ((float) durationNanos)) * 1.0E9f;
    }
}
