.class public Landroidx/work/impl/background/systemalarm/CommandHandler;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# static fields
.field static final ACTION_CONSTRAINTS_CHANGED:Ljava/lang/String; = "ACTION_CONSTRAINTS_CHANGED"

.field static final ACTION_DELAY_MET:Ljava/lang/String; = "ACTION_DELAY_MET"

.field static final ACTION_EXECUTION_COMPLETED:Ljava/lang/String; = "ACTION_EXECUTION_COMPLETED"

.field static final ACTION_RESCHEDULE:Ljava/lang/String; = "ACTION_RESCHEDULE"

.field static final ACTION_SCHEDULE_WORK:Ljava/lang/String; = "ACTION_SCHEDULE_WORK"

.field static final ACTION_STOP_WORK:Ljava/lang/String; = "ACTION_STOP_WORK"

.field private static final KEY_NEEDS_RESCHEDULE:Ljava/lang/String; = "KEY_NEEDS_RESCHEDULE"

.field private static final KEY_WORKSPEC_GENERATION:Ljava/lang/String; = "KEY_WORKSPEC_GENERATION"

.field private static final KEY_WORKSPEC_ID:Ljava/lang/String; = "KEY_WORKSPEC_ID"

.field private static final TAG:Ljava/lang/String;

.field static final WORK_PROCESSING_TIME_IN_MS:J = 0x927c0L


# instance fields
.field private final mClock:Landroidx/work/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingDelayMet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartStopTokens:Landroidx/work/impl/StartStopTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    .line 50
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/Clock;Landroidx/work/impl/StartStopTokens;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "clock",
            "startStopTokens"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mClock:Landroidx/work/Clock;

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    .line 141
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static createConstraintsChangedIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    .line 108
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static createDelayMetIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_DELAY_MET"

    .line 90
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static createExecutionCompletedIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Z)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "needsReschedule"
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_EXECUTION_COMPLETED"

    .line 123
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_NEEDS_RESCHEDULE"

    .line 124
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static createRescheduleIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_RESCHEDULE"

    .line 114
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static createScheduleWorkIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_SCHEDULE_WORK"

    .line 72
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static createStopWorkIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_WORK"

    .line 102
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static createStopWorkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "workSpecId"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_WORK"

    .line 96
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 97
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private handleConstraintsChanged(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "startId",
            "dispatcher"
        }
    .end annotation

    .line 335
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handling constraints changed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance p1, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mClock:Landroidx/work/Clock;

    invoke-direct {p1, v0, p0, p2, p3}, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;-><init>(Landroid/content/Context;Landroidx/work/Clock;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 340
    invoke-virtual {p1}, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->handleConstraintsChanged()V

    return-void
.end method

.method private handleDelayMet(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "startId",
            "dispatcher"
        }
    .end annotation

    const-string v0, "WorkSpec "

    const-string v1, "Handing delay met for "

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    .line 283
    monitor-enter v2

    .line 284
    :try_start_0
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->readWorkGenerationalId(Landroid/content/Intent;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object p1

    .line 285
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    .line 289
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    new-instance v0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 292
    invoke-virtual {v3, p1}, Landroidx/work/impl/StartStopTokens;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object v3

    invoke-direct {v0, v1, p2, p3, v3}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;-><init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroidx/work/impl/StartStopToken;)V

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    .line 293
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->handleProcessWork()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is is already being handled for ACTION_DELAY_MET"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleExecutionCompleted(Landroid/content/Intent;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "startId"
        }
    .end annotation

    .line 355
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->readWorkGenerationalId(Landroid/content/Intent;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 357
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Handling onExecutionCompleted "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v0, v1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void
.end method

.method private handleReschedule(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "startId",
            "dispatcher"
        }
    .end annotation

    .line 348
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object v0, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling reschedule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Landroidx/work/impl/WorkManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    return-void
.end method

.method private handleScheduleWorkIntent(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "startId",
            "dispatcher"
        }
    .end annotation

    const-string v0, "Setting up Alarms for "

    const-string v1, "Opportunistically setting an alarm for "

    .line 212
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->readWorkGenerationalId(Landroid/content/Intent;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object p1

    .line 213
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Handling schedule work for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 220
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v4

    .line 221
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Skipping scheduling "

    if-nez v4, :cond_0

    .line 231
    :try_start_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " because it\'s no longer in the DB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return-void

    .line 235
    :cond_0
    :try_start_2
    iget-object v6, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 239
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "because it is finished."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return-void

    .line 246
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v5

    .line 248
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "at "

    if-nez v4, :cond_2

    .line 249
    :try_start_4
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    .line 251
    invoke-static {p0, v2, p1, v5, v6}, Landroidx/work/impl/background/systemalarm/Alarms;->setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;J)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    .line 256
    invoke-static {v0, v2, p1, v5, v6}, Landroidx/work/impl/background/systemalarm/Alarms;->setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;J)V

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {p0}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createConstraintsChangedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    .line 265
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p1

    invoke-interface {p1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    invoke-direct {v0, p3, p0, p2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 272
    :goto_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 275
    throw p0
.end method

.method private handleStopWork(Landroid/content/Intent;Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "dispatcher"
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_WORKSPEC_ID"

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_WORKSPEC_GENERATION"

    .line 309
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 312
    new-instance v3, Landroidx/work/impl/model/WorkGenerationalId;

    invoke-direct {v3, v0, p1}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/StartStopTokens;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 315
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 318
    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 320
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/StartStopToken;

    .line 321
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Handing stopWork work for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkerLauncher()Landroidx/work/impl/WorkLauncher;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/work/impl/WorkLauncher;->stopWork(Landroidx/work/impl/StartStopToken;)V

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {p2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v4

    .line 323
    invoke-static {v2, v3, v4}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelAlarm(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 327
    invoke-virtual {v1}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static varargs hasKeys(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "keys"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 366
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 370
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method static readWorkGenerationalId(Landroid/content/Intent;)Landroidx/work/impl/model/WorkGenerationalId;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 84
    new-instance v0, Landroidx/work/impl/model/WorkGenerationalId;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_GENERATION"

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "id"
        }
    .end annotation

    const-string v0, "KEY_WORKSPEC_ID"

    .line 78
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_WORKSPEC_GENERATION"

    .line 79
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method hasPendingCommands()Z
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    .line 164
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    .line 167
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "needsReschedule"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mLock:Ljava/lang/Object;

    .line 146
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mPendingDelayMet:Ljava/util/Map;

    .line 149
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 150
    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokens;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1, p2}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->onExecuted(Z)V

    .line 154
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onHandleIntent(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "startId",
            "dispatcher"
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->handleConstraintsChanged(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "ACTION_RESCHEDULE"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->handleReschedule(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto/16 :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_ID"

    .line 188
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemalarm/CommandHandler;->hasKeys(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid request for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " , requires KEY_WORKSPEC_ID ."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->handleScheduleWorkIntent(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    :cond_3
    const-string v1, "ACTION_DELAY_MET"

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->handleDelayMet(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    :cond_4
    const-string v1, "ACTION_STOP_WORK"

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    invoke-direct {p0, p1, p3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->handleStopWork(Landroid/content/Intent;Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    :cond_5
    const-string p3, "ACTION_EXECUTION_COMPLETED"

    .line 198
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 199
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/CommandHandler;->handleExecutionCompleted(Landroid/content/Intent;I)V

    goto :goto_0

    .line 201
    :cond_6
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p2, Landroidx/work/impl/background/systemalarm/CommandHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring intent "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
