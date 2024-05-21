package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import io.sentry.clientreport.DiscardedEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContraintControllers.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/constraints/controllers/BatteryNotLowController;", "Landroidx/work/impl/constraints/controllers/ConstraintController;", "", "tracker", "Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;", "(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V", DiscardedEvent.JsonKeys.REASON, "", "getReason", "()I", "hasConstraint", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "isConstrained", "value", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BatteryNotLowController extends ConstraintController<Boolean> {
    private final int reason;

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public int getReason() {
        return this.reason;
    }

    public boolean isConstrained(boolean value) {
        return !value;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public /* bridge */ /* synthetic */ boolean isConstrained(Boolean bool) {
        return isConstrained(bool.booleanValue());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(BatteryNotLowTracker tracker) {
        super(tracker);
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.reason = 5;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.constraints.getRequiresBatteryNotLow();
    }
}
