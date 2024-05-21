package androidx.work.impl.constraints;

import androidx.work.impl.model.WorkSpec;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;

/* compiled from: WorkConstraintsTracker.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;", "", "onConstraintsStateChanged", "", "workSpec", "Landroidx/work/impl/model/WorkSpec;", SentryThread.JsonKeys.STATE, "Landroidx/work/impl/constraints/ConstraintsState;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface OnConstraintsStateChangedListener {
    void onConstraintsStateChanged(WorkSpec workSpec, ConstraintsState state);
}
