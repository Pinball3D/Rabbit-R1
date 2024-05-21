package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Animation.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004BE\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0001¢\u0006\u0002\u0010\fBE\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0001¢\u0006\u0002\u0010\u000eJ\u0015\u0010\"\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010$J\u0015\u0010%\u001a\u00028\u00012\u0006\u0010#\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010&J\b\u0010'\u001a\u00020(H\u0016R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u00028\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0013\u0010\t\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u001a\u001a\u00028\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0010\u0010\u000b\u001a\u00028\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001dR\u0016\u0010\n\u001a\u00028\u0000X\u0096\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001e\u0010\u0018R\u0010\u0010\u001f\u001a\u00028\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006)"}, d2 = {"Landroidx/compose/animation/core/TargetBasedAnimation;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Landroidx/compose/animation/core/Animation;", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "typeConverter", "Landroidx/compose/animation/core/TwoWayConverter;", "initialValue", "targetValue", "initialVelocityVector", "(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V", "Landroidx/compose/animation/core/VectorizedAnimationSpec;", "(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V", "getAnimationSpec$animation_core_release", "()Landroidx/compose/animation/core/VectorizedAnimationSpec;", "durationNanos", "", "getDurationNanos", "()J", "endVelocity", "Landroidx/compose/animation/core/AnimationVector;", "getInitialValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "initialValueVector", "isInfinite", "", "()Z", "getTargetValue", "targetValueVector", "getTypeConverter", "()Landroidx/compose/animation/core/TwoWayConverter;", "getValueFromNanos", "playTimeNanos", "(J)Ljava/lang/Object;", "getVelocityVectorFromNanos", "(J)Landroidx/compose/animation/core/AnimationVector;", "toString", "", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TargetBasedAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public static final int $stable = 0;
    private final VectorizedAnimationSpec<V> animationSpec;
    private final long durationNanos;
    private final V endVelocity;
    private final T initialValue;
    private final V initialValueVector;
    private final V initialVelocityVector;
    private final T targetValue;
    private final V targetValueVector;
    private final TwoWayConverter<T, V> typeConverter;

    public final VectorizedAnimationSpec<V> getAnimationSpec$animation_core_release() {
        return this.animationSpec;
    }

    @Override // androidx.compose.animation.core.Animation
    public long getDurationNanos() {
        return this.durationNanos;
    }

    public final T getInitialValue() {
        return this.initialValue;
    }

    @Override // androidx.compose.animation.core.Animation
    public T getTargetValue() {
        return this.targetValue;
    }

    @Override // androidx.compose.animation.core.Animation
    public TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    public TargetBasedAnimation(VectorizedAnimationSpec<V> animationSpec, TwoWayConverter<T, V> typeConverter, T t, T t2, V v) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        this.animationSpec = animationSpec;
        this.typeConverter = typeConverter;
        this.initialValue = t;
        this.targetValue = t2;
        V invoke = getTypeConverter().getConvertToVector().invoke(t);
        this.initialValueVector = invoke;
        V invoke2 = getTypeConverter().getConvertToVector().invoke(getTargetValue());
        this.targetValueVector = invoke2;
        V v2 = (v == null || (v2 = (V) AnimationVectorsKt.copy(v)) == null) ? (V) AnimationVectorsKt.newInstance(getTypeConverter().getConvertToVector().invoke(t)) : v2;
        this.initialVelocityVector = v2;
        this.durationNanos = animationSpec.getDurationNanos(invoke, invoke2, v2);
        this.endVelocity = animationSpec.getEndVelocity(invoke, invoke2, v2);
    }

    public /* synthetic */ TargetBasedAnimation(VectorizedAnimationSpec vectorizedAnimationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((VectorizedAnimationSpec<AnimationVector>) vectorizedAnimationSpec, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, obj, obj2, (i & 16) != 0 ? null : animationVector);
    }

    public /* synthetic */ TargetBasedAnimation(AnimationSpec animationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((AnimationSpec<Object>) animationSpec, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, obj, obj2, (i & 16) != 0 ? null : animationVector);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TargetBasedAnimation(AnimationSpec<T> animationSpec, TwoWayConverter<T, V> typeConverter, T t, T t2, V v) {
        this(animationSpec.vectorize(typeConverter), typeConverter, t, t2, v);
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
    }

    @Override // androidx.compose.animation.core.Animation
    /* renamed from: isInfinite */
    public boolean getIsInfinite() {
        return this.animationSpec.isInfinite();
    }

    @Override // androidx.compose.animation.core.Animation
    public T getValueFromNanos(long playTimeNanos) {
        if (!isFinishedFromNanos(playTimeNanos)) {
            V valueFromNanos = this.animationSpec.getValueFromNanos(playTimeNanos, this.initialValueVector, this.targetValueVector, this.initialVelocityVector);
            int size = valueFromNanos.getSize();
            for (int i = 0; i < size; i++) {
                if (!(!Float.isNaN(valueFromNanos.get$animation_core_release(i)))) {
                    throw new IllegalStateException(("AnimationVector cannot contain a NaN. " + valueFromNanos + ". Animation: " + this + ", playTimeNanos: " + playTimeNanos).toString());
                }
            }
            return getTypeConverter().getConvertFromVector().invoke(valueFromNanos);
        }
        return getTargetValue();
    }

    @Override // androidx.compose.animation.core.Animation
    public V getVelocityVectorFromNanos(long playTimeNanos) {
        return !isFinishedFromNanos(playTimeNanos) ? this.animationSpec.getVelocityFromNanos(playTimeNanos, this.initialValueVector, this.targetValueVector, this.initialVelocityVector) : this.endVelocity;
    }

    public String toString() {
        return "TargetBasedAnimation: " + this.initialValue + " -> " + getTargetValue() + ",initial velocity: " + this.initialVelocityVector + ", duration: " + AnimationKt.getDurationMillis(this) + " ms,animationSpec: " + this.animationSpec;
    }
}
