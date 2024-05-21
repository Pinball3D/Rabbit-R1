.class public abstract Landroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "WorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/WorkRequest$Builder<",
        "TB;*>;W:",
        "Landroidx/work/WorkRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkRequest.kt\nandroidx/work/WorkRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,356:1\n1#2:357\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0000*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u0004B\u0017\u0008\u0000\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010%\u001a\u00028\u00002\u0006\u0010&\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\'J\u000b\u0010(\u001a\u00028\u0001\u00a2\u0006\u0002\u0010)J\u000f\u0010*\u001a\u00028\u0001H \u00a2\u0006\u0004\u0008+\u0010)J\u0015\u0010,\u001a\u00028\u00002\u0006\u0010-\u001a\u00020.H\u0007\u00a2\u0006\u0002\u0010/J\u001b\u0010,\u001a\u00028\u00002\u0006\u0010-\u001a\u0002002\u0006\u00101\u001a\u000202\u00a2\u0006\u0002\u00103J\u001d\u00104\u001a\u00028\u00002\u0006\u00105\u001a\u0002062\u0006\u0010-\u001a\u00020.H\u0007\u00a2\u0006\u0002\u00107J#\u00104\u001a\u00028\u00002\u0006\u00105\u001a\u0002062\u0006\u00108\u001a\u0002002\u0006\u00101\u001a\u000202\u00a2\u0006\u0002\u00109J\u0013\u0010:\u001a\u00028\u00002\u0006\u0010;\u001a\u00020<\u00a2\u0006\u0002\u0010=J\u0015\u0010>\u001a\u00028\u00002\u0006\u0010?\u001a\u00020@H\u0017\u00a2\u0006\u0002\u0010AJ\u0013\u0010B\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010CJ\u0015\u0010D\u001a\u00028\u00002\u0006\u0010-\u001a\u00020.H\u0017\u00a2\u0006\u0002\u0010/J\u001d\u0010D\u001a\u00028\u00002\u0006\u0010-\u001a\u0002002\u0006\u00101\u001a\u000202H\u0016\u00a2\u0006\u0002\u00103J\u0015\u0010E\u001a\u00028\u00002\u0006\u0010F\u001a\u00020GH\u0007\u00a2\u0006\u0002\u0010HJ\u0015\u0010I\u001a\u00028\u00002\u0006\u0010J\u001a\u00020KH\u0007\u00a2\u0006\u0002\u0010LJ\u0013\u0010M\u001a\u00028\u00002\u0006\u0010N\u001a\u00020O\u00a2\u0006\u0002\u0010PJ\u001d\u0010Q\u001a\u00028\u00002\u0006\u0010R\u001a\u0002002\u0006\u00101\u001a\u000202H\u0007\u00a2\u0006\u0002\u00103J\u001d\u0010S\u001a\u00028\u00002\u0006\u0010T\u001a\u0002002\u0006\u00101\u001a\u000202H\u0007\u00a2\u0006\u0002\u00103R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00028\u0000X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006U"
    }
    d2 = {
        "Landroidx/work/WorkRequest$Builder;",
        "B",
        "W",
        "Landroidx/work/WorkRequest;",
        "",
        "workerClass",
        "Ljava/lang/Class;",
        "Landroidx/work/ListenableWorker;",
        "(Ljava/lang/Class;)V",
        "backoffCriteriaSet",
        "",
        "getBackoffCriteriaSet$work_runtime_release",
        "()Z",
        "setBackoffCriteriaSet$work_runtime_release",
        "(Z)V",
        "id",
        "Ljava/util/UUID;",
        "getId$work_runtime_release",
        "()Ljava/util/UUID;",
        "setId$work_runtime_release",
        "(Ljava/util/UUID;)V",
        "tags",
        "",
        "",
        "getTags$work_runtime_release",
        "()Ljava/util/Set;",
        "thisObject",
        "getThisObject$work_runtime_release",
        "()Landroidx/work/WorkRequest$Builder;",
        "workSpec",
        "Landroidx/work/impl/model/WorkSpec;",
        "getWorkSpec$work_runtime_release",
        "()Landroidx/work/impl/model/WorkSpec;",
        "setWorkSpec$work_runtime_release",
        "(Landroidx/work/impl/model/WorkSpec;)V",
        "getWorkerClass$work_runtime_release",
        "()Ljava/lang/Class;",
        "addTag",
        "tag",
        "(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;",
        "build",
        "()Landroidx/work/WorkRequest;",
        "buildInternal",
        "buildInternal$work_runtime_release",
        "keepResultsForAtLeast",
        "duration",
        "Ljava/time/Duration;",
        "(Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;",
        "setBackoffCriteria",
        "backoffPolicy",
        "Landroidx/work/BackoffPolicy;",
        "(Landroidx/work/BackoffPolicy;Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;",
        "backoffDelay",
        "(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;",
        "setConstraints",
        "constraints",
        "Landroidx/work/Constraints;",
        "(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;",
        "setExpedited",
        "policy",
        "Landroidx/work/OutOfQuotaPolicy;",
        "(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;",
        "setId",
        "(Ljava/util/UUID;)Landroidx/work/WorkRequest$Builder;",
        "setInitialDelay",
        "setInitialRunAttemptCount",
        "runAttemptCount",
        "",
        "(I)Landroidx/work/WorkRequest$Builder;",
        "setInitialState",
        "state",
        "Landroidx/work/WorkInfo$State;",
        "(Landroidx/work/WorkInfo$State;)Landroidx/work/WorkRequest$Builder;",
        "setInputData",
        "inputData",
        "Landroidx/work/Data;",
        "(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;",
        "setLastEnqueueTime",
        "lastEnqueueTime",
        "setScheduleRequestedAt",
        "scheduleRequestedAt",
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


# instance fields
.field private backoffCriteriaSet:Z

.field private id:Ljava/util/UUID;

.field private final tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private workSpec:Landroidx/work/impl/model/WorkSpec;

.field private final workerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->workerClass:Ljava/lang/Class;

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    .line 71
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "workerClass.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/util/Set;

    .line 160
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final build()Landroidx/work/WorkRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->buildInternal$work_runtime_release()Landroidx/work/WorkRequest;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 260
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 263
    invoke-virtual {v1}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 264
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 267
    iget-boolean v2, v2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v2, :cond_4

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 271
    iget-wide v1, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expedited jobs cannot be delayed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expedited jobs only support network and storage constraints"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/work/WorkRequest$Builder;->setId(Ljava/util/UUID;)Landroidx/work/WorkRequest$Builder;

    return-object v0
.end method

.method public abstract buildInternal$work_runtime_release()Landroidx/work/WorkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public final getBackoffCriteriaSet$work_runtime_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    return p0
.end method

.method public final getId$work_runtime_release()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    return-object p0
.end method

.method public final getTags$work_runtime_release()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/util/Set;

    return-object p0
.end method

.method public abstract getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final getWorkSpec$work_runtime_release()Landroidx/work/impl/model/WorkSpec;
    .locals 0

    iget-object p0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-object p0
.end method

.method public final getWorkerClass$work_runtime_release()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkRequest$Builder;->workerClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final keepResultsForAtLeast(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 181
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 182
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final keepResultsForAtLeast(Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")TB;"
        }
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 202
    invoke-static {p1}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 203
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/BackoffPolicy;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const-string v0, "backoffPolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 105
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iget-object p1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 106
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/work/impl/model/WorkSpec;->setBackoffDelayDuration(J)V

    .line 107
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setBackoffCriteria(Landroidx/work/BackoffPolicy;Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/BackoffPolicy;",
            "Ljava/time/Duration;",
            ")TB;"
        }
    .end annotation

    const-string v0, "backoffPolicy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 124
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iget-object p1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 125
    invoke-static {p2}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/work/impl/model/WorkSpec;->setBackoffDelayDuration(J)V

    .line 126
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setBackoffCriteriaSet$work_runtime_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    return-void
.end method

.method public final setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Constraints;",
            ")TB;"
        }
    .end annotation

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 136
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 137
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/OutOfQuotaPolicy;",
            ")TB;"
        }
    .end annotation

    const-string v0, "policy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    const/4 v1, 0x1

    .line 248
    iput-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 249
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 250
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setId(Ljava/util/UUID;)Landroidx/work/WorkRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")TB;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    .line 83
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 84
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setId$work_runtime_release(Ljava/util/UUID;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    return-void
.end method

.method public setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 216
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const-wide p1, 0x7fffffffffffffffL

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object p3, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-wide v0, p3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given initial delay is too large and will cause an overflow!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInitialDelay(Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")TB;"
        }
    .end annotation

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 233
    invoke-static {p1}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const-wide v0, 0x7fffffffffffffffL

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 237
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given initial delay is too large and will cause an overflow!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setInitialRunAttemptCount(I)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 304
    iput p1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 305
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setInitialState(Landroidx/work/WorkInfo$State;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/WorkInfo$State;",
            ")TB;"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 291
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 292
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Data;",
            ")TB;"
        }
    .end annotation

    const-string v0, "inputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 148
    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 149
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setLastEnqueueTime(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 318
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 319
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setScheduleRequestedAt(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 332
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 333
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->getThisObject$work_runtime_release()Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setWorkSpec$work_runtime_release(Landroidx/work/impl/model/WorkSpec;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-void
.end method
