package androidx.work.impl.constraints.controllers;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import io.sentry.clientreport.DiscardedEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: ContraintControllers.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0012J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014R\u0018\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/work/impl/constraints/controllers/ConstraintController;", ExifInterface.GPS_DIRECTION_TRUE, "", "tracker", "Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V", DiscardedEvent.JsonKeys.REASON, "", "getReason$annotations", "()V", "getReason", "()I", "hasConstraint", "", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "isConstrained", "value", "(Ljava/lang/Object;)Z", "track", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/work/impl/constraints/ConstraintsState;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class ConstraintController<T> {
    private final ConstraintTracker<T> tracker;

    public static /* synthetic */ void getReason$annotations() {
    }

    public abstract int getReason();

    public abstract boolean hasConstraint(WorkSpec workSpec);

    public abstract boolean isConstrained(T value);

    public ConstraintController(ConstraintTracker<T> tracker) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.tracker = tracker;
    }

    public final Flow<ConstraintsState> track() {
        return FlowKt.callbackFlow(new ConstraintController$track$1(this, null));
    }

    public final boolean isConstrained(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return hasConstraint(workSpec) && isConstrained((ConstraintController<T>) this.tracker.readSystemState());
    }
}
