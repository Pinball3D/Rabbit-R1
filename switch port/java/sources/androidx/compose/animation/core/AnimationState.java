package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnimationState.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004BK\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u0001\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\b\u0010*\u001a\u00020+H\u0016R&\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n8F@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R$\u0010\f\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0014\"\u0004\b\u0015\u0010\u0016R&\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n8F@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0011\"\u0004\b\u0018\u0010\u0013R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR+\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00028\u00008V@PX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0011\u0010\"\u001a\u00028\u00008F¢\u0006\u0006\u001a\u0004\b#\u0010\u001dR&\u0010$\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00028\u0001@@X\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006,"}, d2 = {"Landroidx/compose/animation/core/AnimationState;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Landroidx/compose/runtime/State;", "typeConverter", "Landroidx/compose/animation/core/TwoWayConverter;", "initialValue", "initialVelocityVector", "lastFrameTimeNanos", "", "finishedTimeNanos", "isRunning", "", "(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V", "<set-?>", "getFinishedTimeNanos", "()J", "setFinishedTimeNanos$animation_core_release", "(J)V", "()Z", "setRunning$animation_core_release", "(Z)V", "getLastFrameTimeNanos", "setLastFrameTimeNanos$animation_core_release", "getTypeConverter", "()Landroidx/compose/animation/core/TwoWayConverter;", "value", "getValue", "()Ljava/lang/Object;", "setValue$animation_core_release", "(Ljava/lang/Object;)V", "value$delegate", "Landroidx/compose/runtime/MutableState;", "velocity", "getVelocity", "velocityVector", "getVelocityVector", "()Landroidx/compose/animation/core/AnimationVector;", "setVelocityVector$animation_core_release", "(Landroidx/compose/animation/core/AnimationVector;)V", "Landroidx/compose/animation/core/AnimationVector;", "toString", "", "animation-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AnimationState<T, V extends AnimationVector> implements State<T> {
    public static final int $stable = 0;
    private long finishedTimeNanos;
    private boolean isRunning;
    private long lastFrameTimeNanos;
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

    public final TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    public final V getVelocityVector() {
        return this.velocityVector;
    }

    /* renamed from: isRunning, reason: from getter */
    public final boolean getIsRunning() {
        return this.isRunning;
    }

    public final void setFinishedTimeNanos$animation_core_release(long j) {
        this.finishedTimeNanos = j;
    }

    public final void setLastFrameTimeNanos$animation_core_release(long j) {
        this.lastFrameTimeNanos = j;
    }

    public final void setRunning$animation_core_release(boolean z) {
        this.isRunning = z;
    }

    public final void setVelocityVector$animation_core_release(V v) {
        Intrinsics.checkNotNullParameter(v, "<set-?>");
        this.velocityVector = v;
    }

    public AnimationState(TwoWayConverter<T, V> typeConverter, T t, V v, long j, long j2, boolean z) {
        MutableState mutableStateOf$default;
        V v2;
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        this.typeConverter = typeConverter;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        this.value = mutableStateOf$default;
        this.velocityVector = (v == null || (v2 = (V) AnimationVectorsKt.copy(v)) == null) ? (V) AnimationStateKt.createZeroVectorFrom(typeConverter, t) : v2;
        this.lastFrameTimeNanos = j;
        this.finishedTimeNanos = j2;
        this.isRunning = z;
    }

    public /* synthetic */ AnimationState(TwoWayConverter twoWayConverter, Object obj, AnimationVector animationVector, long j, long j2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(twoWayConverter, obj, (i & 4) != 0 ? null : animationVector, (i & 8) != 0 ? Long.MIN_VALUE : j, (i & 16) != 0 ? Long.MIN_VALUE : j2, (i & 32) != 0 ? false : z);
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        return this.value.getValue();
    }

    public final T getVelocity() {
        return this.typeConverter.getConvertFromVector().invoke(this.velocityVector);
    }

    public String toString() {
        return "AnimationState(value=" + getValue() + ", velocity=" + getVelocity() + ", isRunning=" + this.isRunning + ", lastFrameTimeNanos=" + this.lastFrameTimeNanos + ", finishedTimeNanos=" + this.finishedTimeNanos + ')';
    }

    public void setValue$animation_core_release(T t) {
        this.value.setValue(t);
    }
}
