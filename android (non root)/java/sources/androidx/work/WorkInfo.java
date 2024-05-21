package androidx.work;

import androidx.core.app.NotificationCompat;
import io.sentry.protocol.SentryThread;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import okio.Utf8;

/* compiled from: WorkInfo.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 12\u00020\u0001:\u0003123B\u0081\u0001\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0016\u001a\u00020\r¢\u0006\u0002\u0010\u0017J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010/\u001a\u00020\rH\u0016J\b\u00100\u001a\u00020\bH\u0016R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000e\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0015\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\"R\u0013\u0010\f\u001a\u00020\r8\u0007¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\u0016\u001a\u00020\r8\u0007¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u00064"}, d2 = {"Landroidx/work/WorkInfo;", "", "id", "Ljava/util/UUID;", SentryThread.JsonKeys.STATE, "Landroidx/work/WorkInfo$State;", "tags", "", "", "outputData", "Landroidx/work/Data;", NotificationCompat.CATEGORY_PROGRESS, "runAttemptCount", "", "generation", "constraints", "Landroidx/work/Constraints;", "initialDelayMillis", "", "periodicityInfo", "Landroidx/work/WorkInfo$PeriodicityInfo;", "nextScheduleTimeMillis", "stopReason", "(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/Set;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V", "getConstraints", "()Landroidx/work/Constraints;", "getGeneration", "()I", "getId", "()Ljava/util/UUID;", "getInitialDelayMillis", "()J", "getNextScheduleTimeMillis", "getOutputData", "()Landroidx/work/Data;", "getPeriodicityInfo", "()Landroidx/work/WorkInfo$PeriodicityInfo;", "getProgress", "getRunAttemptCount", "getState", "()Landroidx/work/WorkInfo$State;", "getStopReason", "getTags", "()Ljava/util/Set;", "equals", "", "other", "hashCode", "toString", "Companion", "PeriodicityInfo", "State", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkInfo {
    public static final int STOP_REASON_APP_STANDBY = 12;
    public static final int STOP_REASON_BACKGROUND_RESTRICTION = 11;
    public static final int STOP_REASON_CANCELLED_BY_APP = 1;
    public static final int STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW = 5;
    public static final int STOP_REASON_CONSTRAINT_CHARGING = 6;
    public static final int STOP_REASON_CONSTRAINT_CONNECTIVITY = 7;
    public static final int STOP_REASON_CONSTRAINT_DEVICE_IDLE = 8;
    public static final int STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW = 9;
    public static final int STOP_REASON_DEVICE_STATE = 4;
    public static final int STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED = 15;
    public static final int STOP_REASON_NOT_STOPPED = -256;
    public static final int STOP_REASON_PREEMPT = 2;
    public static final int STOP_REASON_QUOTA = 10;
    public static final int STOP_REASON_SYSTEM_PROCESSING = 14;
    public static final int STOP_REASON_TIMEOUT = 3;
    public static final int STOP_REASON_UNKNOWN = -512;
    public static final int STOP_REASON_USER = 13;
    private final Constraints constraints;
    private final int generation;
    private final UUID id;
    private final long initialDelayMillis;
    private final long nextScheduleTimeMillis;
    private final Data outputData;
    private final PeriodicityInfo periodicityInfo;
    private final Data progress;
    private final int runAttemptCount;
    private final State state;
    private final int stopReason;
    private final Set<String> tags;

    /* compiled from: WorkInfo.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/work/WorkInfo$State;", "", "(Ljava/lang/String;I)V", "isFinished", "", "()Z", "ENQUEUED", DebugCoroutineInfoImplKt.RUNNING, "SUCCEEDED", "FAILED", "BLOCKED", "CANCELLED", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public final boolean isFinished() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags) {
        this(id, state, tags, null, null, 0, 0, null, 0L, null, 0L, 0, 4088, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData) {
        this(id, state, tags, outputData, null, 0, 0, null, 0L, null, 0L, 0, 4080, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress) {
        this(id, state, tags, outputData, progress, 0, 0, null, 0L, null, 0L, 0, 4064, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i) {
        this(id, state, tags, outputData, progress, i, 0, null, 0L, null, 0L, 0, 4032, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i, int i2) {
        this(id, state, tags, outputData, progress, i, i2, null, 0L, null, 0L, 0, Utf8.MASK_2BYTES, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i, int i2, Constraints constraints) {
        this(id, state, tags, outputData, progress, i, i2, constraints, 0L, null, 0L, 0, 3840, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i, int i2, Constraints constraints, long j) {
        this(id, state, tags, outputData, progress, i, i2, constraints, j, null, 0L, 0, 3584, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i, int i2, Constraints constraints, long j, PeriodicityInfo periodicityInfo) {
        this(id, state, tags, outputData, progress, i, i2, constraints, j, periodicityInfo, 0L, 0, 3072, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i, int i2, Constraints constraints, long j, PeriodicityInfo periodicityInfo, long j2) {
        this(id, state, tags, outputData, progress, i, i2, constraints, j, periodicityInfo, j2, 0, 2048, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    public final Constraints getConstraints() {
        return this.constraints;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final UUID getId() {
        return this.id;
    }

    public final long getInitialDelayMillis() {
        return this.initialDelayMillis;
    }

    public final long getNextScheduleTimeMillis() {
        return this.nextScheduleTimeMillis;
    }

    public final Data getOutputData() {
        return this.outputData;
    }

    public final PeriodicityInfo getPeriodicityInfo() {
        return this.periodicityInfo;
    }

    public final Data getProgress() {
        return this.progress;
    }

    public final int getRunAttemptCount() {
        return this.runAttemptCount;
    }

    public final State getState() {
        return this.state;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    public final Set<String> getTags() {
        return this.tags;
    }

    public WorkInfo(UUID id, State state, Set<String> tags, Data outputData, Data progress, int i, int i2, Constraints constraints, long j, PeriodicityInfo periodicityInfo, long j2, int i3) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        this.id = id;
        this.state = state;
        this.tags = tags;
        this.outputData = outputData;
        this.progress = progress;
        this.runAttemptCount = i;
        this.generation = i2;
        this.constraints = constraints;
        this.initialDelayMillis = j;
        this.periodicityInfo = periodicityInfo;
        this.nextScheduleTimeMillis = j2;
        this.stopReason = i3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ WorkInfo(java.util.UUID r19, androidx.work.WorkInfo.State r20, java.util.Set r21, androidx.work.Data r22, androidx.work.Data r23, int r24, int r25, androidx.work.Constraints r26, long r27, androidx.work.WorkInfo.PeriodicityInfo r29, long r30, int r32, int r33, kotlin.jvm.internal.DefaultConstructorMarker r34) {
        /*
            r18 = this;
            r0 = r33
            r1 = r0 & 8
            java.lang.String r2 = "EMPTY"
            if (r1 == 0) goto Lf
            androidx.work.Data r1 = androidx.work.Data.EMPTY
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r7 = r1
            goto L11
        Lf:
            r7 = r22
        L11:
            r1 = r0 & 16
            if (r1 == 0) goto L1c
            androidx.work.Data r1 = androidx.work.Data.EMPTY
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r8 = r1
            goto L1e
        L1c:
            r8 = r23
        L1e:
            r1 = r0 & 32
            r2 = 0
            if (r1 == 0) goto L25
            r9 = r2
            goto L27
        L25:
            r9 = r24
        L27:
            r1 = r0 & 64
            if (r1 == 0) goto L2d
            r10 = r2
            goto L2f
        L2d:
            r10 = r25
        L2f:
            r1 = r0 & 128(0x80, float:1.8E-43)
            if (r1 == 0) goto L37
            androidx.work.Constraints r1 = androidx.work.Constraints.NONE
            r11 = r1
            goto L39
        L37:
            r11 = r26
        L39:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L41
            r1 = 0
            r12 = r1
            goto L43
        L41:
            r12 = r27
        L43:
            r1 = r0 & 512(0x200, float:7.17E-43)
            if (r1 == 0) goto L4a
            r1 = 0
            r14 = r1
            goto L4c
        L4a:
            r14 = r29
        L4c:
            r1 = r0 & 1024(0x400, float:1.435E-42)
            if (r1 == 0) goto L57
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r15 = r1
            goto L59
        L57:
            r15 = r30
        L59:
            r0 = r0 & 2048(0x800, float:2.87E-42)
            if (r0 == 0) goto L62
            r0 = -256(0xffffffffffffff00, float:NaN)
            r17 = r0
            goto L64
        L62:
            r17 = r32
        L64:
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r14, r15, r17)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.WorkInfo.<init>(java.util.UUID, androidx.work.WorkInfo$State, java.util.Set, androidx.work.Data, androidx.work.Data, int, int, androidx.work.Constraints, long, androidx.work.WorkInfo$PeriodicityInfo, long, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) other;
        if (this.runAttemptCount == workInfo.runAttemptCount && this.generation == workInfo.generation && Intrinsics.areEqual(this.id, workInfo.id) && this.state == workInfo.state && Intrinsics.areEqual(this.outputData, workInfo.outputData) && Intrinsics.areEqual(this.constraints, workInfo.constraints) && this.initialDelayMillis == workInfo.initialDelayMillis && Intrinsics.areEqual(this.periodicityInfo, workInfo.periodicityInfo) && this.nextScheduleTimeMillis == workInfo.nextScheduleTimeMillis && this.stopReason == workInfo.stopReason && Intrinsics.areEqual(this.tags, workInfo.tags)) {
            return Intrinsics.areEqual(this.progress, workInfo.progress);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.outputData.hashCode()) * 31) + this.tags.hashCode()) * 31) + this.progress.hashCode()) * 31) + this.runAttemptCount) * 31) + this.generation) * 31) + this.constraints.hashCode()) * 31) + Long.hashCode(this.initialDelayMillis)) * 31;
        PeriodicityInfo periodicityInfo = this.periodicityInfo;
        return ((((hashCode + (periodicityInfo != null ? periodicityInfo.hashCode() : 0)) * 31) + Long.hashCode(this.nextScheduleTimeMillis)) * 31) + Integer.hashCode(this.stopReason);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WorkInfo{id='");
        sb.append(this.id).append("', state=").append(this.state).append(", outputData=").append(this.outputData).append(", tags=").append(this.tags).append(", progress=").append(this.progress).append(", runAttemptCount=").append(this.runAttemptCount).append(", generation=").append(this.generation).append(", constraints=").append(this.constraints).append(", initialDelayMillis=").append(this.initialDelayMillis).append(", periodicityInfo=").append(this.periodicityInfo).append(", nextScheduleTimeMillis=").append(this.nextScheduleTimeMillis).append("}, stopReason=");
        sb.append(this.stopReason);
        return sb.toString();
    }

    /* compiled from: WorkInfo.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0010"}, d2 = {"Landroidx/work/WorkInfo$PeriodicityInfo;", "", "repeatIntervalMillis", "", "flexIntervalMillis", "(JJ)V", "getFlexIntervalMillis", "()J", "getRepeatIntervalMillis", "equals", "", "other", "hashCode", "", "toString", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class PeriodicityInfo {
        private final long flexIntervalMillis;
        private final long repeatIntervalMillis;

        public final long getFlexIntervalMillis() {
            return this.flexIntervalMillis;
        }

        public final long getRepeatIntervalMillis() {
            return this.repeatIntervalMillis;
        }

        public PeriodicityInfo(long j, long j2) {
            this.repeatIntervalMillis = j;
            this.flexIntervalMillis = j2;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
                return false;
            }
            PeriodicityInfo periodicityInfo = (PeriodicityInfo) other;
            return periodicityInfo.repeatIntervalMillis == this.repeatIntervalMillis && periodicityInfo.flexIntervalMillis == this.flexIntervalMillis;
        }

        public int hashCode() {
            return (Long.hashCode(this.repeatIntervalMillis) * 31) + Long.hashCode(this.flexIntervalMillis);
        }

        public String toString() {
            return "PeriodicityInfo{repeatIntervalMillis=" + this.repeatIntervalMillis + ", flexIntervalMillis=" + this.flexIntervalMillis + '}';
        }
    }
}
