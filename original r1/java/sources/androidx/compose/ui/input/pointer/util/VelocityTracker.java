package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.Metadata;

/* compiled from: VelocityTracker.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J#\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u0015ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0006J\u0006\u0010\u0017\u001a\u00020\u000eR%\u0010\u0003\u001a\u00020\u0004X\u0080\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/input/pointer/util/VelocityTracker;", "", "()V", "currentPointerPositionAccumulator", "Landroidx/compose/ui/geometry/Offset;", "getCurrentPointerPositionAccumulator-F1C5BW0$ui_release", "()J", "setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release", "(J)V", "J", "xVelocityTracker", "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;", "yVelocityTracker", "addPosition", "", "timeMillis", "", "position", "addPosition-Uv8p0NA", "(JJ)V", "calculateVelocity", "Landroidx/compose/ui/unit/Velocity;", "calculateVelocity-9UxMQ8M", "resetTracking", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VelocityTracker {
    public static final int $stable = 8;
    private final VelocityTracker1D xVelocityTracker = new VelocityTracker1D(false, null, 3, null);
    private final VelocityTracker1D yVelocityTracker = new VelocityTracker1D(false, null, 3, null);
    private long currentPointerPositionAccumulator = Offset.INSTANCE.m2416getZeroF1C5BW0();

    /* renamed from: getCurrentPointerPositionAccumulator-F1C5BW0$ui_release, reason: not valid java name and from getter */
    public final long getCurrentPointerPositionAccumulator() {
        return this.currentPointerPositionAccumulator;
    }

    /* renamed from: setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release, reason: not valid java name */
    public final void m3852setCurrentPointerPositionAccumulatork4lQ0M$ui_release(long j) {
        this.currentPointerPositionAccumulator = j;
    }

    /* renamed from: addPosition-Uv8p0NA, reason: not valid java name */
    public final void m3849addPositionUv8p0NA(long timeMillis, long position) {
        this.xVelocityTracker.addDataPoint(timeMillis, Offset.m2400getXimpl(position));
        this.yVelocityTracker.addDataPoint(timeMillis, Offset.m2401getYimpl(position));
    }

    /* renamed from: calculateVelocity-9UxMQ8M, reason: not valid java name */
    public final long m3850calculateVelocity9UxMQ8M() {
        return VelocityKt.Velocity(this.xVelocityTracker.calculateVelocity(), this.yVelocityTracker.calculateVelocity());
    }

    public final void resetTracking() {
        this.xVelocityTracker.resetTracking();
        this.yVelocityTracker.resetTracking();
    }
}
