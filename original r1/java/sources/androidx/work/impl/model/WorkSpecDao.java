package androidx.work.impl.model;

import androidx.lifecycle.LiveData;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;

/* compiled from: WorkSpecDao.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0019\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0003H'J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\tH'J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\tH'J\u0014\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\t0\u000fH'J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0011\u001a\u00020\u0003H'J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\tH'J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\t2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0016\u001a\u00020\u0017H'J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\tH'J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\tH'J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u001e\u001a\u00020\u0007H'J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010 \u001a\u00020\u0007H'J\u0012\u0010!\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\t2\u0006\u0010\u001e\u001a\u00020\u0007H'J\"\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\t0%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070\tH'J\u001c\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\t0%2\u0006\u0010\u001e\u001a\u00020\u0007H'J\u001c\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\t0%2\u0006\u0010 \u001a\u00020\u0007H'J\u0012\u0010*\u001a\u0004\u0018\u00010&2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020&0\t2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070\tH'J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020&0\t2\u0006\u0010\u001e\u001a\u00020\u0007H'J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020&0\t2\u0006\u0010 \u001a\u00020\u0007H'J\"\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\t0\u000f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070\tH'J\u001c\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\t0\u000f2\u0006\u0010\u001e\u001a\u00020\u0007H'J\u001c\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\t0\u000f2\u0006\u0010 \u001a\u00020\u0007H'J\b\u00101\u001a\u000202H'J\u0010\u00103\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u00104\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\nH'J\u0018\u00108\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u0017H'J\b\u0010:\u001a\u00020\u0005H'J\b\u0010;\u001a\u00020\u0003H'J\u0018\u0010<\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u0003H'J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0018\u0010@\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u0017H'J\u0018\u0010B\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0017H'J\u0018\u0010D\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010E\u001a\u00020\u0014H'J\u0018\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0018\u0010H\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u0003H'J\u0010\u0010J\u001a\u00020\u00052\u0006\u00107\u001a\u00020\nH'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006KÀ\u0006\u0001"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao;", "", "countNonFinishedContentUriTriggerWorkers", "", "delete", "", "id", "", "getAllEligibleWorkSpecsForScheduling", "", "Landroidx/work/impl/model/WorkSpec;", "maxLimit", "getAllUnfinishedWork", "getAllWorkSpecIds", "getAllWorkSpecIdsLiveData", "Landroidx/lifecycle/LiveData;", "getEligibleWorkForScheduling", "schedulerLimit", "getEligibleWorkForSchedulingWithContentUris", "getInputsFromPrerequisites", "Landroidx/work/Data;", "getRecentlyCompletedWork", "startingAt", "", "getRunningWork", "getScheduleRequestedAtLiveData", "getScheduledWork", "getState", "Landroidx/work/WorkInfo$State;", "getUnfinishedWorkWithName", "name", "getUnfinishedWorkWithTag", ViewHierarchyNode.JsonKeys.TAG, "getWorkSpec", "getWorkSpecIdAndStatesForName", "Landroidx/work/impl/model/WorkSpec$IdAndState;", "getWorkStatusPojoFlowDataForIds", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "ids", "getWorkStatusPojoFlowForName", "getWorkStatusPojoFlowForTag", "getWorkStatusPojoForId", "getWorkStatusPojoForIds", "getWorkStatusPojoForName", "getWorkStatusPojoForTag", "getWorkStatusPojoLiveDataForIds", "getWorkStatusPojoLiveDataForName", "getWorkStatusPojoLiveDataForTag", "hasUnfinishedWork", "", "incrementGeneration", "incrementPeriodCount", "incrementWorkSpecRunAttemptCount", "insertWorkSpec", "workSpec", "markWorkSpecScheduled", "startTime", "pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast", "resetScheduledState", "resetWorkSpecNextScheduleTimeOverride", "overrideGeneration", "resetWorkSpecRunAttemptCount", "setCancelledState", "setLastEnqueueTime", "enqueueTime", "setNextScheduleTimeOverride", "nextScheduleTimeOverrideMillis", "setOutput", "output", "setState", SentryThread.JsonKeys.STATE, "setStopReason", "stopReason", "updateWorkSpec", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface WorkSpecDao {
    int countNonFinishedContentUriTriggerWorkers();

    void delete(String id);

    List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int maxLimit);

    List<String> getAllUnfinishedWork();

    List<String> getAllWorkSpecIds();

    LiveData<List<String>> getAllWorkSpecIdsLiveData();

    List<WorkSpec> getEligibleWorkForScheduling(int schedulerLimit);

    List<WorkSpec> getEligibleWorkForSchedulingWithContentUris();

    List<Data> getInputsFromPrerequisites(String id);

    List<WorkSpec> getRecentlyCompletedWork(long startingAt);

    List<WorkSpec> getRunningWork();

    LiveData<Long> getScheduleRequestedAtLiveData(String id);

    List<WorkSpec> getScheduledWork();

    WorkInfo.State getState(String id);

    List<String> getUnfinishedWorkWithName(String name);

    List<String> getUnfinishedWorkWithTag(String tag);

    WorkSpec getWorkSpec(String id);

    List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String name);

    Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowDataForIds(List<String> ids);

    Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForName(String name);

    Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForTag(String tag);

    WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String id);

    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> ids);

    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String name);

    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String tag);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> ids);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String name);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String tag);

    boolean hasUnfinishedWork();

    void incrementGeneration(String id);

    void incrementPeriodCount(String id);

    int incrementWorkSpecRunAttemptCount(String id);

    void insertWorkSpec(WorkSpec workSpec);

    int markWorkSpecScheduled(String id, long startTime);

    void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();

    int resetScheduledState();

    void resetWorkSpecNextScheduleTimeOverride(String id, int overrideGeneration);

    int resetWorkSpecRunAttemptCount(String id);

    int setCancelledState(String id);

    void setLastEnqueueTime(String id, long enqueueTime);

    void setNextScheduleTimeOverride(String id, long nextScheduleTimeOverrideMillis);

    void setOutput(String id, Data output);

    int setState(WorkInfo.State state, String id);

    void setStopReason(String id, int stopReason);

    void updateWorkSpec(WorkSpec workSpec);
}
