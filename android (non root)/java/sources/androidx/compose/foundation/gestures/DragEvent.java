package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent;", "", "()V", "DragCancelled", "DragDelta", "DragStarted", "DragStopped", "Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;", "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;", "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;", "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class DragEvent {
    public /* synthetic */ DragEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: Draggable.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragStarted;", "Landroidx/compose/foundation/gestures/DragEvent;", "startPoint", "Landroidx/compose/ui/geometry/Offset;", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getStartPoint-F1C5BW0", "()J", "J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DragStarted extends DragEvent {
        public static final int $stable = 0;
        private final long startPoint;

        public /* synthetic */ DragStarted(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* renamed from: getStartPoint-F1C5BW0, reason: not valid java name and from getter */
        public final long getStartPoint() {
            return this.startPoint;
        }

        private DragStarted(long j) {
            super(null);
            this.startPoint = j;
        }
    }

    private DragEvent() {
    }

    /* compiled from: Draggable.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragStopped;", "Landroidx/compose/foundation/gestures/DragEvent;", "velocity", "Landroidx/compose/ui/unit/Velocity;", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getVelocity-9UxMQ8M", "()J", "J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DragStopped extends DragEvent {
        public static final int $stable = 0;
        private final long velocity;

        public /* synthetic */ DragStopped(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* renamed from: getVelocity-9UxMQ8M, reason: not valid java name and from getter */
        public final long getVelocity() {
            return this.velocity;
        }

        private DragStopped(long j) {
            super(null);
            this.velocity = j;
        }
    }

    /* compiled from: Draggable.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;", "Landroidx/compose/foundation/gestures/DragEvent;", "()V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DragCancelled extends DragEvent {
        public static final int $stable = 0;
        public static final DragCancelled INSTANCE = new DragCancelled();

        private DragCancelled() {
            super(null);
        }
    }

    /* compiled from: Draggable.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/DragEvent$DragDelta;", "Landroidx/compose/foundation/gestures/DragEvent;", "delta", "Landroidx/compose/ui/geometry/Offset;", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getDelta-F1C5BW0", "()J", "J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DragDelta extends DragEvent {
        public static final int $stable = 0;
        private final long delta;

        public /* synthetic */ DragDelta(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* renamed from: getDelta-F1C5BW0, reason: not valid java name and from getter */
        public final long getDelta() {
            return this.delta;
        }

        private DragDelta(long j) {
            super(null);
            this.delta = j;
        }
    }
}
