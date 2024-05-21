package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Transformable.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/gestures/TransformEvent;", "", "()V", "TransformDelta", "TransformStarted", "TransformStopped", "Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;", "Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;", "Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
abstract class TransformEvent {
    public /* synthetic */ TransformEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: Transformable.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;", "Landroidx/compose/foundation/gestures/TransformEvent;", "()V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class TransformStarted extends TransformEvent {
        public static final int $stable = 0;
        public static final TransformStarted INSTANCE = new TransformStarted();

        private TransformStarted() {
            super(null);
        }
    }

    private TransformEvent() {
    }

    /* compiled from: Transformable.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;", "Landroidx/compose/foundation/gestures/TransformEvent;", "()V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class TransformStopped extends TransformEvent {
        public static final int $stable = 0;
        public static final TransformStopped INSTANCE = new TransformStopped();

        private TransformStopped() {
            super(null);
        }
    }

    /* compiled from: Transformable.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0007R\u001c\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;", "Landroidx/compose/foundation/gestures/TransformEvent;", "zoomChange", "", "panChange", "Landroidx/compose/ui/geometry/Offset;", "rotationChange", "(FJFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getPanChange-F1C5BW0", "()J", "J", "getRotationChange", "()F", "getZoomChange", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class TransformDelta extends TransformEvent {
        public static final int $stable = 0;
        private final long panChange;
        private final float rotationChange;
        private final float zoomChange;

        public /* synthetic */ TransformDelta(float f, long j, float f2, DefaultConstructorMarker defaultConstructorMarker) {
            this(f, j, f2);
        }

        /* renamed from: getPanChange-F1C5BW0, reason: not valid java name and from getter */
        public final long getPanChange() {
            return this.panChange;
        }

        public final float getRotationChange() {
            return this.rotationChange;
        }

        public final float getZoomChange() {
            return this.zoomChange;
        }

        private TransformDelta(float f, long j, float f2) {
            super(null);
            this.zoomChange = f;
            this.panChange = j;
            this.rotationChange = f2;
        }
    }
}
