package androidx.work.impl.model;

import androidx.arch.core.util.Function;
import androidx.core.app.NotificationCompat;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: WorkSpec.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 W2\u00020\u0001:\u0003WXYB\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0000¢\u0006\u0002\u0010\bBç\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0003\u0010\u0016\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f\u0012\b\b\u0002\u0010 \u001a\u00020!\u0012\b\b\u0002\u0010\"\u001a\u00020\u0017\u0012\b\b\u0002\u0010#\u001a\u00020\u0017\u0012\b\b\u0002\u0010$\u001a\u00020\u0011\u0012\b\b\u0002\u0010%\u001a\u00020\u0017\u0012\b\b\u0002\u0010&\u001a\u00020\u0017¢\u0006\u0002\u0010'J\u0006\u00107\u001a\u00020\u0011J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0015HÆ\u0003J\t\u0010:\u001a\u00020\u0017HÆ\u0003J\t\u0010;\u001a\u00020\u0019HÆ\u0003J\t\u0010<\u001a\u00020\u0011HÆ\u0003J\t\u0010=\u001a\u00020\u0011HÆ\u0003J\t\u0010>\u001a\u00020\u0011HÆ\u0003J\t\u0010?\u001a\u00020\u0011HÆ\u0003J\t\u0010@\u001a\u00020\u001fHÆ\u0003J\t\u0010A\u001a\u00020!HÆ\u0003J\t\u0010B\u001a\u00020\u0017HÆ\u0003J\t\u0010C\u001a\u00020\nHÆ\u0003J\t\u0010D\u001a\u00020\u0017HÆ\u0003J\t\u0010E\u001a\u00020\u0011HÆ\u0003J\t\u0010F\u001a\u00020\u0017HÆ\u0003J\t\u0010G\u001a\u00020\u0017HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u000eHÆ\u0003J\t\u0010K\u001a\u00020\u000eHÆ\u0003J\t\u0010L\u001a\u00020\u0011HÆ\u0003J\t\u0010M\u001a\u00020\u0011HÆ\u0003J\t\u0010N\u001a\u00020\u0011HÆ\u0003Jï\u0001\u0010O\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0003\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00112\b\b\u0002\u0010\u001b\u001a\u00020\u00112\b\b\u0002\u0010\u001c\u001a\u00020\u00112\b\b\u0002\u0010\u001d\u001a\u00020\u00112\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u00172\b\b\u0002\u0010#\u001a\u00020\u00172\b\b\u0002\u0010$\u001a\u00020\u00112\b\b\u0002\u0010%\u001a\u00020\u00172\b\b\u0002\u0010&\u001a\u00020\u0017HÆ\u0001J\u0013\u0010P\u001a\u00020\u001f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010Q\u001a\u00020\u001fJ\t\u0010R\u001a\u00020\u0017HÖ\u0001J\u000e\u0010S\u001a\u00020T2\u0006\u0010\u001a\u001a\u00020\u0011J\u000e\u0010U\u001a\u00020T2\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010U\u001a\u00020T2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J\b\u0010V\u001a\u00020\u0003H\u0016R\u0012\u0010\u001a\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010#\u001a\u00020\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0011\u0010*\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0011\u0010,\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b,\u0010+R\u0012\u0010\u001b\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010$\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001e\u0010%\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010)\"\u0004\b2\u00103R\u0012\u0010 \u001a\u00020!8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\"\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010)\"\u0004\b5\u00103R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010&\u001a\u00020\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010)R\u0012\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006Z"}, d2 = {"Landroidx/work/impl/model/WorkSpec;", "", "id", "", "workerClassName_", "(Ljava/lang/String;Ljava/lang/String;)V", "newId", "other", "(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V", SentryThread.JsonKeys.STATE, "Landroidx/work/WorkInfo$State;", "workerClassName", "inputMergerClassName", "input", "Landroidx/work/Data;", "output", "initialDelay", "", "intervalDuration", "flexDuration", "constraints", "Landroidx/work/Constraints;", "runAttemptCount", "", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "backoffDelayDuration", "lastEnqueueTime", "minimumRetentionDuration", "scheduleRequestedAt", "expedited", "", "outOfQuotaPolicy", "Landroidx/work/OutOfQuotaPolicy;", "periodCount", "generation", "nextScheduleTimeOverride", "nextScheduleTimeOverrideGeneration", "stopReason", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V", "getGeneration", "()I", "isBackedOff", "()Z", "isPeriodic", "getNextScheduleTimeOverride", "()J", "setNextScheduleTimeOverride", "(J)V", "getNextScheduleTimeOverrideGeneration", "setNextScheduleTimeOverrideGeneration", "(I)V", "getPeriodCount", "setPeriodCount", "getStopReason", "calculateNextRunTime", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "hasConstraints", "hashCode", "setBackoffDelayDuration", "", "setPeriodic", "toString", "Companion", "IdAndState", "WorkInfoPojo", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final /* data */ class WorkSpec {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG;
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER;
    public long backoffDelayDuration;
    public BackoffPolicy backoffPolicy;
    public Constraints constraints;
    public boolean expedited;
    public long flexDuration;
    private final int generation;
    public final String id;
    public long initialDelay;
    public Data input;
    public String inputMergerClassName;
    public long intervalDuration;
    public long lastEnqueueTime;
    public long minimumRetentionDuration;
    private long nextScheduleTimeOverride;
    private int nextScheduleTimeOverrideGeneration;
    public OutOfQuotaPolicy outOfQuotaPolicy;
    public Data output;
    private int periodCount;
    public int runAttemptCount;
    public long scheduleRequestedAt;
    public WorkInfo.State state;
    private final int stopReason;
    public String workerClassName;

    public static /* synthetic */ WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, int i6, Object obj) {
        String str4 = (i6 & 1) != 0 ? workSpec.id : str;
        WorkInfo.State state2 = (i6 & 2) != 0 ? workSpec.state : state;
        String str5 = (i6 & 4) != 0 ? workSpec.workerClassName : str2;
        String str6 = (i6 & 8) != 0 ? workSpec.inputMergerClassName : str3;
        Data data3 = (i6 & 16) != 0 ? workSpec.input : data;
        Data data4 = (i6 & 32) != 0 ? workSpec.output : data2;
        long j9 = (i6 & 64) != 0 ? workSpec.initialDelay : j;
        long j10 = (i6 & 128) != 0 ? workSpec.intervalDuration : j2;
        long j11 = (i6 & 256) != 0 ? workSpec.flexDuration : j3;
        Constraints constraints2 = (i6 & 512) != 0 ? workSpec.constraints : constraints;
        return workSpec.copy(str4, state2, str5, str6, data3, data4, j9, j10, j11, constraints2, (i6 & 1024) != 0 ? workSpec.runAttemptCount : i, (i6 & 2048) != 0 ? workSpec.backoffPolicy : backoffPolicy, (i6 & 4096) != 0 ? workSpec.backoffDelayDuration : j4, (i6 & 8192) != 0 ? workSpec.lastEnqueueTime : j5, (i6 & 16384) != 0 ? workSpec.minimumRetentionDuration : j6, (i6 & 32768) != 0 ? workSpec.scheduleRequestedAt : j7, (i6 & 65536) != 0 ? workSpec.expedited : z, (131072 & i6) != 0 ? workSpec.outOfQuotaPolicy : outOfQuotaPolicy, (i6 & 262144) != 0 ? workSpec.periodCount : i2, (i6 & 524288) != 0 ? workSpec.generation : i3, (i6 & 1048576) != 0 ? workSpec.nextScheduleTimeOverride : j8, (i6 & 2097152) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i4, (i6 & 4194304) != 0 ? workSpec.stopReason : i5);
    }

    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component10, reason: from getter */
    public final Constraints getConstraints() {
        return this.constraints;
    }

    /* renamed from: component11, reason: from getter */
    public final int getRunAttemptCount() {
        return this.runAttemptCount;
    }

    /* renamed from: component12, reason: from getter */
    public final BackoffPolicy getBackoffPolicy() {
        return this.backoffPolicy;
    }

    /* renamed from: component13, reason: from getter */
    public final long getBackoffDelayDuration() {
        return this.backoffDelayDuration;
    }

    /* renamed from: component14, reason: from getter */
    public final long getLastEnqueueTime() {
        return this.lastEnqueueTime;
    }

    /* renamed from: component15, reason: from getter */
    public final long getMinimumRetentionDuration() {
        return this.minimumRetentionDuration;
    }

    /* renamed from: component16, reason: from getter */
    public final long getScheduleRequestedAt() {
        return this.scheduleRequestedAt;
    }

    /* renamed from: component17, reason: from getter */
    public final boolean getExpedited() {
        return this.expedited;
    }

    /* renamed from: component18, reason: from getter */
    public final OutOfQuotaPolicy getOutOfQuotaPolicy() {
        return this.outOfQuotaPolicy;
    }

    /* renamed from: component19, reason: from getter */
    public final int getPeriodCount() {
        return this.periodCount;
    }

    /* renamed from: component2, reason: from getter */
    public final WorkInfo.State getState() {
        return this.state;
    }

    /* renamed from: component20, reason: from getter */
    public final int getGeneration() {
        return this.generation;
    }

    /* renamed from: component21, reason: from getter */
    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    /* renamed from: component22, reason: from getter */
    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    /* renamed from: component23, reason: from getter */
    public final int getStopReason() {
        return this.stopReason;
    }

    /* renamed from: component3, reason: from getter */
    public final String getWorkerClassName() {
        return this.workerClassName;
    }

    /* renamed from: component4, reason: from getter */
    public final String getInputMergerClassName() {
        return this.inputMergerClassName;
    }

    /* renamed from: component5, reason: from getter */
    public final Data getInput() {
        return this.input;
    }

    /* renamed from: component6, reason: from getter */
    public final Data getOutput() {
        return this.output;
    }

    /* renamed from: component7, reason: from getter */
    public final long getInitialDelay() {
        return this.initialDelay;
    }

    /* renamed from: component8, reason: from getter */
    public final long getIntervalDuration() {
        return this.intervalDuration;
    }

    /* renamed from: component9, reason: from getter */
    public final long getFlexDuration() {
        return this.flexDuration;
    }

    public final WorkSpec copy(String id, WorkInfo.State state, String workerClassName, String inputMergerClassName, Data input, Data output, long initialDelay, long intervalDuration, long flexDuration, Constraints constraints, int runAttemptCount, BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, long minimumRetentionDuration, long scheduleRequestedAt, boolean expedited, OutOfQuotaPolicy outOfQuotaPolicy, int periodCount, int generation, long nextScheduleTimeOverride, int nextScheduleTimeOverrideGeneration, int stopReason) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(inputMergerClassName, "inputMergerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new WorkSpec(id, state, workerClassName, inputMergerClassName, input, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, minimumRetentionDuration, scheduleRequestedAt, expedited, outOfQuotaPolicy, periodCount, generation, nextScheduleTimeOverride, nextScheduleTimeOverrideGeneration, stopReason);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) other;
        return Intrinsics.areEqual(this.id, workSpec.id) && this.state == workSpec.state && Intrinsics.areEqual(this.workerClassName, workSpec.workerClassName) && Intrinsics.areEqual(this.inputMergerClassName, workSpec.inputMergerClassName) && Intrinsics.areEqual(this.input, workSpec.input) && Intrinsics.areEqual(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && Intrinsics.areEqual(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31) + this.inputMergerClassName.hashCode()) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Long.hashCode(this.minimumRetentionDuration)) * 31) + Long.hashCode(this.scheduleRequestedAt)) * 31;
        boolean z = this.expedited;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((((((((hashCode + i) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.nextScheduleTimeOverrideGeneration)) * 31) + Integer.hashCode(this.stopReason);
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final void setNextScheduleTimeOverride(long j) {
        this.nextScheduleTimeOverride = j;
    }

    public final void setNextScheduleTimeOverrideGeneration(int i) {
        this.nextScheduleTimeOverrideGeneration = i;
    }

    public final void setPeriodCount(int i) {
        this.periodCount = i;
    }

    public WorkSpec(String id, WorkInfo.State state, String workerClassName, String inputMergerClassName, Data input, Data output, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(inputMergerClassName, "inputMergerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.id = id;
        this.state = state;
        this.workerClassName = workerClassName;
        this.inputMergerClassName = inputMergerClassName;
        this.input = input;
        this.output = output;
        this.initialDelay = j;
        this.intervalDuration = j2;
        this.flexDuration = j3;
        this.constraints = constraints;
        this.runAttemptCount = i;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j4;
        this.lastEnqueueTime = j5;
        this.minimumRetentionDuration = j6;
        this.scheduleRequestedAt = j7;
        this.expedited = z;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i2;
        this.generation = i3;
        this.nextScheduleTimeOverride = j8;
        this.nextScheduleTimeOverrideGeneration = i4;
        this.stopReason = i5;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ WorkSpec(java.lang.String r35, androidx.work.WorkInfo.State r36, java.lang.String r37, java.lang.String r38, androidx.work.Data r39, androidx.work.Data r40, long r41, long r43, long r45, androidx.work.Constraints r47, int r48, androidx.work.BackoffPolicy r49, long r50, long r52, long r54, long r56, boolean r58, androidx.work.OutOfQuotaPolicy r59, int r60, int r61, long r62, int r64, int r65, int r66, kotlin.jvm.internal.DefaultConstructorMarker r67) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.<init>(java.lang.String, androidx.work.WorkInfo$State, java.lang.String, java.lang.String, androidx.work.Data, androidx.work.Data, long, long, long, androidx.work.Constraints, int, androidx.work.BackoffPolicy, long, long, long, long, boolean, androidx.work.OutOfQuotaPolicy, int, int, long, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String id, String workerClassName_) {
        this(id, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388602, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String newId, WorkSpec other) {
        this(newId, other.state, other.workerClassName, other.inputMergerClassName, new Data(other.input), new Data(other.output), other.initialDelay, other.intervalDuration, other.flexDuration, new Constraints(other.constraints), other.runAttemptCount, other.backoffPolicy, other.backoffDelayDuration, other.lastEnqueueTime, other.minimumRetentionDuration, other.scheduleRequestedAt, other.expedited, other.outOfQuotaPolicy, other.periodCount, 0, other.nextScheduleTimeOverride, other.nextScheduleTimeOverrideGeneration, other.stopReason, 524288, null);
        Intrinsics.checkNotNullParameter(newId, "newId");
        Intrinsics.checkNotNullParameter(other, "other");
    }

    public final void setBackoffDelayDuration(long backoffDelayDuration) {
        if (backoffDelayDuration > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value");
        }
        if (backoffDelayDuration < WorkRequest.MIN_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value");
        }
        this.backoffDelayDuration = RangesKt.coerceIn(backoffDelayDuration, WorkRequest.MIN_BACKOFF_MILLIS, WorkRequest.MAX_BACKOFF_MILLIS);
    }

    public final boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public final void setPeriodic(long intervalDuration) {
        if (intervalDuration < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        setPeriodic(RangesKt.coerceAtLeast(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS), RangesKt.coerceAtLeast(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS));
    }

    public final void setPeriodic(long intervalDuration, long flexDuration) {
        if (intervalDuration < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.intervalDuration = RangesKt.coerceAtLeast(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        if (flexDuration < 300000) {
            Logger.get().warning(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (flexDuration > this.intervalDuration) {
            Logger.get().warning(TAG, "Flex duration greater than interval duration; Changed to " + intervalDuration);
        }
        this.flexDuration = RangesKt.coerceIn(flexDuration, 300000L, this.intervalDuration);
    }

    public final long calculateNextRunTime() {
        return INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
    }

    public final boolean hasConstraints() {
        return !Intrinsics.areEqual(Constraints.NONE, this.constraints);
    }

    public String toString() {
        return "{WorkSpec: " + this.id + '}';
    }

    /* compiled from: WorkSpec.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\t\u0010\b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/work/impl/model/WorkSpec$IdAndState;", "", "id", "", SentryThread.JsonKeys.STATE, "Landroidx/work/WorkInfo$State;", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final /* data */ class IdAndState {
        public String id;
        public WorkInfo.State state;

        public static /* synthetic */ IdAndState copy$default(IdAndState idAndState, String str, WorkInfo.State state, int i, Object obj) {
            if ((i & 1) != 0) {
                str = idAndState.id;
            }
            if ((i & 2) != 0) {
                state = idAndState.state;
            }
            return idAndState.copy(str, state);
        }

        /* renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* renamed from: component2, reason: from getter */
        public final WorkInfo.State getState() {
            return this.state;
        }

        public final IdAndState copy(String id, WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            return new IdAndState(id, state);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) other;
            return Intrinsics.areEqual(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.state.hashCode();
        }

        public String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }

        public IdAndState(String id, WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            this.id = id;
            this.state = state;
        }
    }

    /* compiled from: WorkSpec.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\t\u0012\u0006\u0010\u0017\u001a\u00020\u000f\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0019\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019¢\u0006\u0002\u0010\u001bJ\b\u0010@\u001a\u00020\tH\u0002J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\tHÆ\u0003J\t\u0010C\u001a\u00020\tHÆ\u0003J\t\u0010D\u001a\u00020\u000fHÆ\u0003J\t\u0010E\u001a\u00020\u000fHÆ\u0003J\t\u0010F\u001a\u00020\tHÆ\u0003J\t\u0010G\u001a\u00020\u000fHÆ\u0003J\u000f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00030\u0019HÆ\u0003J\u000f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019HÆ\u0003J\t\u0010J\u001a\u00020\u0005HÆ\u0003J\t\u0010K\u001a\u00020\u0007HÆ\u0003J\t\u0010L\u001a\u00020\tHÆ\u0003J\t\u0010M\u001a\u00020\tHÆ\u0003J\t\u0010N\u001a\u00020\tHÆ\u0003J\t\u0010O\u001a\u00020\rHÆ\u0003J\t\u0010P\u001a\u00020\u000fHÆ\u0003J\t\u0010Q\u001a\u00020\u0011HÆ\u0003J¿\u0001\u0010R\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u000f2\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\u000f2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00192\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019HÆ\u0001J\u0013\u0010S\u001a\u00020.2\b\u0010T\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010U\u001a\u0004\u0018\u00010VH\u0002J\t\u0010W\u001a\u00020\u000fHÖ\u0001J\t\u0010X\u001a\u00020\u0003HÖ\u0001J\u0006\u0010Y\u001a\u00020ZR\u001e\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0016\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u0016\u0010\u0015\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001dR\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001dR\u0011\u0010-\u001a\u00020.8F¢\u0006\u0006\u001a\u0004\b-\u0010/R\u0011\u00100\u001a\u00020.8F¢\u0006\u0006\u001a\u0004\b0\u0010/R\u001e\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001d\"\u0004\b2\u0010\u001fR\u0016\u0010\u0016\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001dR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u001e\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010(\"\u0004\b7\u00108R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010(R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0016\u0010\u0017\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010(R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010:¨\u0006["}, d2 = {"Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "", "id", "", SentryThread.JsonKeys.STATE, "Landroidx/work/WorkInfo$State;", "output", "Landroidx/work/Data;", "initialDelay", "", "intervalDuration", "flexDuration", "constraints", "Landroidx/work/Constraints;", "runAttemptCount", "", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "generation", "nextScheduleTimeOverride", "stopReason", "tags", "", NotificationCompat.CATEGORY_PROGRESS, "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V", "getBackoffDelayDuration", "()J", "setBackoffDelayDuration", "(J)V", "getBackoffPolicy", "()Landroidx/work/BackoffPolicy;", "setBackoffPolicy", "(Landroidx/work/BackoffPolicy;)V", "getConstraints", "()Landroidx/work/Constraints;", "getFlexDuration", "getGeneration", "()I", "getId", "()Ljava/lang/String;", "getInitialDelay", "getIntervalDuration", "isBackedOff", "", "()Z", "isPeriodic", "getLastEnqueueTime", "setLastEnqueueTime", "getNextScheduleTimeOverride", "getOutput", "()Landroidx/work/Data;", "getPeriodCount", "setPeriodCount", "(I)V", "getProgress", "()Ljava/util/List;", "getRunAttemptCount", "getState", "()Landroidx/work/WorkInfo$State;", "getStopReason", "getTags", "calculateNextRunTimeMillis", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "getPeriodicityOrNull", "Landroidx/work/WorkInfo$PeriodicityInfo;", "hashCode", "toString", "toWorkInfo", "Landroidx/work/WorkInfo;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final /* data */ class WorkInfoPojo {
        private long backoffDelayDuration;
        private BackoffPolicy backoffPolicy;
        private final Constraints constraints;
        private final long flexDuration;
        private final int generation;
        private final String id;
        private final long initialDelay;
        private final long intervalDuration;
        private long lastEnqueueTime;
        private final long nextScheduleTimeOverride;
        private final Data output;
        private int periodCount;
        private final List<Data> progress;
        private final int runAttemptCount;
        private final WorkInfo.State state;
        private final int stopReason;
        private final List<String> tags;

        /* renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* renamed from: component10, reason: from getter */
        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        /* renamed from: component11, reason: from getter */
        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        /* renamed from: component12, reason: from getter */
        public final int getPeriodCount() {
            return this.periodCount;
        }

        /* renamed from: component13, reason: from getter */
        public final int getGeneration() {
            return this.generation;
        }

        /* renamed from: component14, reason: from getter */
        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        /* renamed from: component15, reason: from getter */
        public final int getStopReason() {
            return this.stopReason;
        }

        public final List<String> component16() {
            return this.tags;
        }

        public final List<Data> component17() {
            return this.progress;
        }

        /* renamed from: component2, reason: from getter */
        public final WorkInfo.State getState() {
            return this.state;
        }

        /* renamed from: component3, reason: from getter */
        public final Data getOutput() {
            return this.output;
        }

        /* renamed from: component4, reason: from getter */
        public final long getInitialDelay() {
            return this.initialDelay;
        }

        /* renamed from: component5, reason: from getter */
        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        /* renamed from: component6, reason: from getter */
        public final long getFlexDuration() {
            return this.flexDuration;
        }

        /* renamed from: component7, reason: from getter */
        public final Constraints getConstraints() {
            return this.constraints;
        }

        /* renamed from: component8, reason: from getter */
        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        /* renamed from: component9, reason: from getter */
        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        public final WorkInfoPojo copy(String id, WorkInfo.State state, Data output, long initialDelay, long intervalDuration, long flexDuration, Constraints constraints, int runAttemptCount, BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, int generation, long nextScheduleTimeOverride, int stopReason, List<String> tags, List<Data> progress) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(progress, "progress");
            return new WorkInfoPojo(id, state, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, periodCount, generation, nextScheduleTimeOverride, stopReason, tags, progress);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) other;
            return Intrinsics.areEqual(this.id, workInfoPojo.id) && this.state == workInfoPojo.state && Intrinsics.areEqual(this.output, workInfoPojo.output) && this.initialDelay == workInfoPojo.initialDelay && this.intervalDuration == workInfoPojo.intervalDuration && this.flexDuration == workInfoPojo.flexDuration && Intrinsics.areEqual(this.constraints, workInfoPojo.constraints) && this.runAttemptCount == workInfoPojo.runAttemptCount && this.backoffPolicy == workInfoPojo.backoffPolicy && this.backoffDelayDuration == workInfoPojo.backoffDelayDuration && this.lastEnqueueTime == workInfoPojo.lastEnqueueTime && this.periodCount == workInfoPojo.periodCount && this.generation == workInfoPojo.generation && this.nextScheduleTimeOverride == workInfoPojo.nextScheduleTimeOverride && this.stopReason == workInfoPojo.stopReason && Intrinsics.areEqual(this.tags, workInfoPojo.tags) && Intrinsics.areEqual(this.progress, workInfoPojo.progress);
        }

        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        public final Constraints getConstraints() {
            return this.constraints;
        }

        public final long getFlexDuration() {
            return this.flexDuration;
        }

        public final int getGeneration() {
            return this.generation;
        }

        public final String getId() {
            return this.id;
        }

        public final long getInitialDelay() {
            return this.initialDelay;
        }

        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        public final Data getOutput() {
            return this.output;
        }

        public final int getPeriodCount() {
            return this.periodCount;
        }

        public final List<Data> getProgress() {
            return this.progress;
        }

        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        public final WorkInfo.State getState() {
            return this.state;
        }

        public final int getStopReason() {
            return this.stopReason;
        }

        public final List<String> getTags() {
            return this.tags;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.stopReason)) * 31) + this.tags.hashCode()) * 31) + this.progress.hashCode();
        }

        public final boolean isPeriodic() {
            return this.intervalDuration != 0;
        }

        public final void setBackoffDelayDuration(long j) {
            this.backoffDelayDuration = j;
        }

        public final void setBackoffPolicy(BackoffPolicy backoffPolicy) {
            Intrinsics.checkNotNullParameter(backoffPolicy, "<set-?>");
            this.backoffPolicy = backoffPolicy;
        }

        public final void setLastEnqueueTime(long j) {
            this.lastEnqueueTime = j;
        }

        public final void setPeriodCount(int i) {
            this.periodCount = i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("WorkInfoPojo(id=");
            sb.append(this.id).append(", state=").append(this.state).append(", output=").append(this.output).append(", initialDelay=").append(this.initialDelay).append(", intervalDuration=").append(this.intervalDuration).append(", flexDuration=").append(this.flexDuration).append(", constraints=").append(this.constraints).append(", runAttemptCount=").append(this.runAttemptCount).append(", backoffPolicy=").append(this.backoffPolicy).append(", backoffDelayDuration=").append(this.backoffDelayDuration).append(", lastEnqueueTime=").append(this.lastEnqueueTime).append(", periodCount=");
            sb.append(this.periodCount).append(", generation=").append(this.generation).append(", nextScheduleTimeOverride=").append(this.nextScheduleTimeOverride).append(", stopReason=").append(this.stopReason).append(", tags=").append(this.tags).append(", progress=").append(this.progress).append(')');
            return sb.toString();
        }

        public WorkInfoPojo(String id, WorkInfo.State state, Data output, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List<String> tags, List<Data> progress) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(progress, "progress");
            this.id = id;
            this.state = state;
            this.output = output;
            this.initialDelay = j;
            this.intervalDuration = j2;
            this.flexDuration = j3;
            this.constraints = constraints;
            this.runAttemptCount = i;
            this.backoffPolicy = backoffPolicy;
            this.backoffDelayDuration = j4;
            this.lastEnqueueTime = j5;
            this.periodCount = i2;
            this.generation = i3;
            this.nextScheduleTimeOverride = j6;
            this.stopReason = i4;
            this.tags = tags;
            this.progress = progress;
        }

        public /* synthetic */ WorkInfoPojo(String str, WorkInfo.State state, Data data, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List list, List list2, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, state, data, (i5 & 8) != 0 ? 0L : j, (i5 & 16) != 0 ? 0L : j2, (i5 & 32) != 0 ? 0L : j3, constraints, i, (i5 & 256) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i5 & 512) != 0 ? 30000L : j4, (i5 & 1024) != 0 ? 0L : j5, (i5 & 2048) != 0 ? 0 : i2, i3, j6, i4, list, list2);
        }

        public final boolean isBackedOff() {
            return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
        }

        public final WorkInfo toWorkInfo() {
            Data progress = this.progress.isEmpty() ^ true ? this.progress.get(0) : Data.EMPTY;
            UUID fromString = UUID.fromString(this.id);
            Intrinsics.checkNotNullExpressionValue(fromString, "fromString(id)");
            WorkInfo.State state = this.state;
            HashSet hashSet = new HashSet(this.tags);
            Data data = this.output;
            Intrinsics.checkNotNullExpressionValue(progress, "progress");
            return new WorkInfo(fromString, state, hashSet, data, progress, this.runAttemptCount, this.generation, this.constraints, this.initialDelay, getPeriodicityOrNull(), calculateNextRunTimeMillis(), this.stopReason);
        }

        private final WorkInfo.PeriodicityInfo getPeriodicityOrNull() {
            if (this.intervalDuration != 0) {
                return new WorkInfo.PeriodicityInfo(this.intervalDuration, this.flexDuration);
            }
            return null;
        }

        private final long calculateNextRunTimeMillis() {
            if (this.state == WorkInfo.State.ENQUEUED) {
                return WorkSpec.INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
            }
            return Long.MAX_VALUE;
        }
    }

    /* compiled from: WorkSpec.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J^\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/work/impl/model/WorkSpec$Companion;", "", "()V", "SCHEDULE_NOT_REQUESTED_YET", "", "TAG", "", "WORK_INFO_MAPPER", "Landroidx/arch/core/util/Function;", "", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "Landroidx/work/WorkInfo;", "calculateNextRunTime", "isBackedOff", "", "runAttemptCount", "", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "isPeriodic", "initialDelay", "flexDuration", "intervalDuration", "nextScheduleTimeOverride", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final long calculateNextRunTime(boolean isBackedOff, int runAttemptCount, BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, boolean isPeriodic, long initialDelay, long flexDuration, long intervalDuration, long nextScheduleTimeOverride) {
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            if (nextScheduleTimeOverride != Long.MAX_VALUE && isPeriodic) {
                return periodCount == 0 ? nextScheduleTimeOverride : RangesKt.coerceAtLeast(nextScheduleTimeOverride, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS + lastEnqueueTime);
            }
            if (isBackedOff) {
                return lastEnqueueTime + RangesKt.coerceAtMost(backoffPolicy == BackoffPolicy.LINEAR ? runAttemptCount * backoffDelayDuration : Math.scalb((float) backoffDelayDuration, runAttemptCount - 1), WorkRequest.MAX_BACKOFF_MILLIS);
            }
            if (!isPeriodic) {
                if (lastEnqueueTime == -1) {
                    return Long.MAX_VALUE;
                }
                return lastEnqueueTime + initialDelay;
            }
            long j = periodCount == 0 ? lastEnqueueTime + initialDelay : lastEnqueueTime + intervalDuration;
            if (flexDuration != intervalDuration && periodCount == 0) {
                j += intervalDuration - flexDuration;
            }
            return j;
        }
    }

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkSpec");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkSpec\")");
        TAG = tagWithPrefix;
        WORK_INFO_MAPPER = new Function() { // from class: androidx.work.impl.model.WorkSpec$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                List WORK_INFO_MAPPER$lambda$1;
                WORK_INFO_MAPPER$lambda$1 = WorkSpec.WORK_INFO_MAPPER$lambda$1((List) obj);
                return WORK_INFO_MAPPER$lambda$1;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List WORK_INFO_MAPPER$lambda$1(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((WorkInfoPojo) it.next()).toWorkInfo());
        }
        return arrayList;
    }
}
