package androidx.work;

import androidx.work.WorkRequest;
import androidx.work.impl.utils.DurationApi26Impl;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PeriodicWorkRequest.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0002\u0005\u0006B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/work/PeriodicWorkRequest;", "Landroidx/work/WorkRequest;", "builder", "Landroidx/work/PeriodicWorkRequest$Builder;", "(Landroidx/work/PeriodicWorkRequest$Builder;)V", "Builder", "Companion", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class PeriodicWorkRequest extends WorkRequest {
    public static final long MIN_PERIODIC_FLEX_MILLIS = 300000;
    public static final long MIN_PERIODIC_INTERVAL_MILLIS = 900000;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeriodicWorkRequest(Builder builder) {
        super(builder.getId(), builder.getWorkSpec(), builder.getTags$work_runtime_release());
        Intrinsics.checkNotNullParameter(builder, "builder");
    }

    /* compiled from: PeriodicWorkRequest.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001B)\b\u0016\u0012\u0010\u0010\u0003\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB\u001f\b\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u000b¢\u0006\u0002\u0010\fB9\b\u0016\u0012\u0010\u0010\u0003\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0002\u0010\u000fB)\b\u0017\u0012\u0010\u0010\u0003\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0002\u0010\u0010J\r\u0010\u0014\u001a\u00020\u0002H\u0010¢\u0006\u0002\b\u0015J\u0006\u0010\u0016\u001a\u00020\u0000J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007R\u0014\u0010\u0011\u001a\u00020\u00008PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"Landroidx/work/PeriodicWorkRequest$Builder;", "Landroidx/work/WorkRequest$Builder;", "Landroidx/work/PeriodicWorkRequest;", "workerClass", "Ljava/lang/Class;", "Landroidx/work/ListenableWorker;", "repeatInterval", "", "repeatIntervalTimeUnit", "Ljava/util/concurrent/TimeUnit;", "(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V", "Ljava/time/Duration;", "(Ljava/lang/Class;Ljava/time/Duration;)V", "flexInterval", "flexIntervalTimeUnit", "(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V", "(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V", "thisObject", "getThisObject$work_runtime_release", "()Landroidx/work/PeriodicWorkRequest$Builder;", "buildInternal", "buildInternal$work_runtime_release", "clearNextScheduleTimeOverride", "setNextScheduleTimeOverride", "nextScheduleTimeOverrideMillis", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Builder extends WorkRequest.Builder<Builder, PeriodicWorkRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.work.WorkRequest.Builder
        public Builder getThisObject$work_runtime_release() {
            return this;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Class<? extends ListenableWorker> workerClass, long j, TimeUnit repeatIntervalTimeUnit) {
            super(workerClass);
            Intrinsics.checkNotNullParameter(workerClass, "workerClass");
            Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            getWorkSpec().setPeriodic(repeatIntervalTimeUnit.toMillis(j));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Class<? extends ListenableWorker> workerClass, Duration repeatInterval) {
            super(workerClass);
            Intrinsics.checkNotNullParameter(workerClass, "workerClass");
            Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
            getWorkSpec().setPeriodic(DurationApi26Impl.toMillisCompat(repeatInterval));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Class<? extends ListenableWorker> workerClass, long j, TimeUnit repeatIntervalTimeUnit, long j2, TimeUnit flexIntervalTimeUnit) {
            super(workerClass);
            Intrinsics.checkNotNullParameter(workerClass, "workerClass");
            Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            Intrinsics.checkNotNullParameter(flexIntervalTimeUnit, "flexIntervalTimeUnit");
            getWorkSpec().setPeriodic(repeatIntervalTimeUnit.toMillis(j), flexIntervalTimeUnit.toMillis(j2));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Class<? extends ListenableWorker> workerClass, Duration repeatInterval, Duration flexInterval) {
            super(workerClass);
            Intrinsics.checkNotNullParameter(workerClass, "workerClass");
            Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
            Intrinsics.checkNotNullParameter(flexInterval, "flexInterval");
            getWorkSpec().setPeriodic(DurationApi26Impl.toMillisCompat(repeatInterval), DurationApi26Impl.toMillisCompat(flexInterval));
        }

        public final Builder setNextScheduleTimeOverride(long nextScheduleTimeOverrideMillis) {
            if (nextScheduleTimeOverrideMillis == Long.MAX_VALUE) {
                throw new IllegalArgumentException("Cannot set Long.MAX_VALUE as the schedule override time".toString());
            }
            getWorkSpec().setNextScheduleTimeOverride(nextScheduleTimeOverrideMillis);
            getWorkSpec().setNextScheduleTimeOverrideGeneration(1);
            return this;
        }

        public final Builder clearNextScheduleTimeOverride() {
            getWorkSpec().setNextScheduleTimeOverride(Long.MAX_VALUE);
            getWorkSpec().setNextScheduleTimeOverrideGeneration(1);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.work.WorkRequest.Builder
        public PeriodicWorkRequest buildInternal$work_runtime_release() {
            if (getBackoffCriteriaSet() && getWorkSpec().constraints.getRequiresDeviceIdle()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job".toString());
            }
            if (!(!getWorkSpec().expedited)) {
                throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited".toString());
            }
            return new PeriodicWorkRequest(this);
        }
    }
}
