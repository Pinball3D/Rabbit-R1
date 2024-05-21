package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnimationState.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u00020\u0004BY\b\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0010\b\u001a\u00028\u0001\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00028\u0000\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0002\u0010\u0012J\u0006\u00103\u001a\u00020\u0011J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105R&\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n8F@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R+\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e8F@@X\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\r\u0010\u0019\"\u0004\b\u001a\u0010\u001bR&\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n8F@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0016\"\u0004\b\u001f\u0010\u0018R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u0013\u0010\u000b\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R+\u0010&\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00028\u00008F@@X\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b*\u0010\u001d\u001a\u0004\b'\u0010\"\"\u0004\b(\u0010)R\u0011\u0010+\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b,\u0010\"R&\u0010-\u001a\u00028\u00012\u0006\u0010\u0013\u001a\u00028\u0001@@X\u0086\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00066"}, d2 = {"Landroidx/compose/animation/core/AnimationScope;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "", "initialValue", "typeConverter", "Landroidx/compose/animation/core/TwoWayConverter;", "initialVelocityVector", "lastFrameTimeNanos", "", "targetValue", "startTimeNanos", "isRunning", "", "onCancel", "Lkotlin/Function0;", "", "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JZLkotlin/jvm/functions/Function0;)V", "<set-?>", "finishedTimeNanos", "getFinishedTimeNanos", "()J", "setFinishedTimeNanos$animation_core_release", "(J)V", "()Z", "setRunning$animation_core_release", "(Z)V", "isRunning$delegate", "Landroidx/compose/runtime/MutableState;", "getLastFrameTimeNanos", "setLastFrameTimeNanos$animation_core_release", "getStartTimeNanos", "getTargetValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getTypeConverter", "()Landroidx/compose/animation/core/TwoWayConverter;", "value", "getValue", "setValue$animation_core_release", "(Ljava/lang/Object;)V", "value$delegate", "velocity", "getVelocity", "velocityVector", "getVelocityVector", "()Landroidx/compose/animation/core/AnimationVector;", "setVelocityVector$animation_core_release", "(Landroidx/compose/animation/core/AnimationVector;)V", "Landroidx/compose/animation/core/AnimationVector;", "cancelAnimation", "toAnimationState", "Landroidx/compose/animation/core/AnimationState;", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AnimationScope<T, V extends AnimationVector> {
    public static final int $stable = 8;
    private long finishedTimeNanos;

    /* renamed from: isRunning$delegate, reason: from kotlin metadata */
    private final MutableState isRunning;
    private long lastFrameTimeNanos;
    private final Function0<Unit> onCancel;
    private final long startTimeNanos;
    private final T targetValue;
    private final TwoWayConverter<T, V> typeConverter;

    /* renamed from: value$delegate, reason: from kotlin metadata */
    private final MutableState value;
    private V velocityVector;

    public final long getFinishedTimeNanos() {
        return this.finishedTimeNanos;
    }

    public final long getLastFrameTimeNanos() {
        return this.lastFrameTimeNanos;
    }

    public final long getStartTimeNanos() {
        return this.startTimeNanos;
    }

    public final T getTargetValue() {
        return this.targetValue;
    }

    public final TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    public final V getVelocityVector() {
        return this.velocityVector;
    }

    public final void setFinishedTimeNanos$animation_core_release(long j) {
        this.finishedTimeNanos = j;
    }

    public final void setLastFrameTimeNanos$animation_core_release(long j) {
        this.lastFrameTimeNanos = j;
    }

    public final void setVelocityVector$animation_core_release(V v) {
        Intrinsics.checkNotNullParameter(v, "<set-?>");
        this.velocityVector = v;
    }

    public AnimationScope(T t, TwoWayConverter<T, V> typeConverter, V initialVelocityVector, long j, T t2, long j2, boolean z, Function0<Unit> onCancel) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(initialVelocityVector, "initialVelocityVector");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        this.typeConverter = typeConverter;
        this.targetValue = t2;
        this.startTimeNanos = j2;
        this.onCancel = onCancel;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        this.value = mutableStateOf$default;
        this.velocityVector = (V) AnimationVectorsKt.copy(initialVelocityVector);
        this.lastFrameTimeNanos = j;
        this.finishedTimeNanos = Long.MIN_VALUE;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
        this.isRunning = mutableStateOf$default2;
    }

    public final T getValue() {
        return this.value.getValue();
    }

    public final boolean isRunning() {
        return ((Boolean) this.isRunning.getValue()).booleanValue();
    }

    public final void setRunning$animation_core_release(boolean z) {
        this.isRunning.setValue(Boolean.valueOf(z));
    }

    public final T getVelocity() {
        return this.typeConverter.getConvertFromVector().invoke(this.velocityVector);
    }

    public final void cancelAnimation() {
        setRunning$animation_core_release(false);
        this.onCancel.invoke();
    }

    public final AnimationState<T, V> toAnimationState() {
        return new AnimationState<>(this.typeConverter, getValue(), this.velocityVector, this.lastFrameTimeNanos, this.finishedTimeNanos, isRunning());
    }

    public final void setValue$animation_core_release(T t) {
        this.value.setValue(t);
    }
}
