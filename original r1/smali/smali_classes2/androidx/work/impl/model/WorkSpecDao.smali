.class public interface abstract Landroidx/work/impl/model/WorkSpecDao;
.super Ljava/lang/Object;
.source "WorkSpecDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0019\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0003H\'J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\'J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\'J\u0014\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\t0\u000fH\'J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0011\u001a\u00020\u0003H\'J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\'J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\t2\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0016\u001a\u00020\u0017H\'J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\'J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\'J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u001e\u001a\u00020\u0007H\'J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010 \u001a\u00020\u0007H\'J\u0012\u0010!\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\t2\u0006\u0010\u001e\u001a\u00020\u0007H\'J\"\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\t0%2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\'J\u001c\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\t0%2\u0006\u0010\u001e\u001a\u00020\u0007H\'J\u001c\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\t0%2\u0006\u0010 \u001a\u00020\u0007H\'J\u0012\u0010*\u001a\u0004\u0018\u00010&2\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u001c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020&0\t2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\'J\u0016\u0010,\u001a\u0008\u0012\u0004\u0012\u00020&0\t2\u0006\u0010\u001e\u001a\u00020\u0007H\'J\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020&0\t2\u0006\u0010 \u001a\u00020\u0007H\'J\"\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\t0\u000f2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\'J\u001c\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\t0\u000f2\u0006\u0010\u001e\u001a\u00020\u0007H\'J\u001c\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\t0\u000f2\u0006\u0010 \u001a\u00020\u0007H\'J\u0008\u00101\u001a\u000202H\'J\u0010\u00103\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0010\u00104\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0010\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\nH\'J\u0018\u00108\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u0017H\'J\u0008\u0010:\u001a\u00020\u0005H\'J\u0008\u0010;\u001a\u00020\u0003H\'J\u0018\u0010<\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u0003H\'J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0018\u0010@\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u0017H\'J\u0018\u0010B\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0017H\'J\u0018\u0010D\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010E\u001a\u00020\u0014H\'J\u0018\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0018\u0010H\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u0003H\'J\u0010\u0010J\u001a\u00020\u00052\u0006\u00107\u001a\u00020\nH\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006K\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/work/impl/model/WorkSpecDao;",
        "",
        "countNonFinishedContentUriTriggerWorkers",
        "",
        "delete",
        "",
        "id",
        "",
        "getAllEligibleWorkSpecsForScheduling",
        "",
        "Landroidx/work/impl/model/WorkSpec;",
        "maxLimit",
        "getAllUnfinishedWork",
        "getAllWorkSpecIds",
        "getAllWorkSpecIdsLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getEligibleWorkForScheduling",
        "schedulerLimit",
        "getEligibleWorkForSchedulingWithContentUris",
        "getInputsFromPrerequisites",
        "Landroidx/work/Data;",
        "getRecentlyCompletedWork",
        "startingAt",
        "",
        "getRunningWork",
        "getScheduleRequestedAtLiveData",
        "getScheduledWork",
        "getState",
        "Landroidx/work/WorkInfo$State;",
        "getUnfinishedWorkWithName",
        "name",
        "getUnfinishedWorkWithTag",
        "tag",
        "getWorkSpec",
        "getWorkSpecIdAndStatesForName",
        "Landroidx/work/impl/model/WorkSpec$IdAndState;",
        "getWorkStatusPojoFlowDataForIds",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        "ids",
        "getWorkStatusPojoFlowForName",
        "getWorkStatusPojoFlowForTag",
        "getWorkStatusPojoForId",
        "getWorkStatusPojoForIds",
        "getWorkStatusPojoForName",
        "getWorkStatusPojoForTag",
        "getWorkStatusPojoLiveDataForIds",
        "getWorkStatusPojoLiveDataForName",
        "getWorkStatusPojoLiveDataForTag",
        "hasUnfinishedWork",
        "",
        "incrementGeneration",
        "incrementPeriodCount",
        "incrementWorkSpecRunAttemptCount",
        "insertWorkSpec",
        "workSpec",
        "markWorkSpecScheduled",
        "startTime",
        "pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast",
        "resetScheduledState",
        "resetWorkSpecNextScheduleTimeOverride",
        "overrideGeneration",
        "resetWorkSpecRunAttemptCount",
        "setCancelledState",
        "setLastEnqueueTime",
        "enqueueTime",
        "setNextScheduleTimeOverride",
        "nextScheduleTimeOverrideMillis",
        "setOutput",
        "output",
        "setState",
        "state",
        "setStopReason",
        "stopReason",
        "updateWorkSpec",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract countNonFinishedContentUriTriggerWorkers()I
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllUnfinishedWork()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllWorkSpecIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEligibleWorkForScheduling(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEligibleWorkForSchedulingWithContentUris()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecentlyCompletedWork(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningWork()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScheduledWork()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
.end method

.method public abstract getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
.end method

.method public abstract getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoFlowDataForIds(Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoFlowForName(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoFlowForTag(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
.end method

.method public abstract getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract hasUnfinishedWork()Z
.end method

.method public abstract incrementGeneration(Ljava/lang/String;)V
.end method

.method public abstract incrementPeriodCount(Ljava/lang/String;)V
.end method

.method public abstract incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
.end method

.method public abstract insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
.end method

.method public abstract markWorkSpecScheduled(Ljava/lang/String;J)I
.end method

.method public abstract pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
.end method

.method public abstract resetScheduledState()I
.end method

.method public abstract resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V
.end method

.method public abstract resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
.end method

.method public abstract setCancelledState(Ljava/lang/String;)I
.end method

.method public abstract setLastEnqueueTime(Ljava/lang/String;J)V
.end method

.method public abstract setNextScheduleTimeOverride(Ljava/lang/String;J)V
.end method

.method public abstract setOutput(Ljava/lang/String;Landroidx/work/Data;)V
.end method

.method public abstract setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
.end method

.method public abstract setStopReason(Ljava/lang/String;I)V
.end method

.method public abstract updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
.end method
