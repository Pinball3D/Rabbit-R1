.class public Landroidx/work/impl/foreground/SystemForegroundDispatcher;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;
.implements Landroidx/work/impl/ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_WORK:Ljava/lang/String; = "ACTION_CANCEL_WORK"

.field private static final ACTION_NOTIFY:Ljava/lang/String; = "ACTION_NOTIFY"

.field private static final ACTION_START_FOREGROUND:Ljava/lang/String; = "ACTION_START_FOREGROUND"

.field private static final ACTION_STOP_FOREGROUND:Ljava/lang/String; = "ACTION_STOP_FOREGROUND"

.field private static final KEY_FOREGROUND_SERVICE_TYPE:Ljava/lang/String; = "KEY_FOREGROUND_SERVICE_TYPE"

.field private static final KEY_GENERATION:Ljava/lang/String; = "KEY_GENERATION"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "KEY_NOTIFICATION"

.field private static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "KEY_NOTIFICATION_ID"

.field private static final KEY_WORKSPEC_ID:Ljava/lang/String; = "KEY_WORKSPEC_ID"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

.field final mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field private mContext:Landroid/content/Context;

.field mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

.field final mForegroundInfoById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field final mTrackedWorkSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

.field final mWorkSpecById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    .line 64
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mContext:Landroid/content/Context;

    .line 107
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 109
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 111
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 112
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/Map;

    .line 113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/Map;

    .line 114
    new-instance p1, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getTrackers()Landroidx/work/impl/constraints/trackers/Trackers;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Landroidx/work/impl/constraints/trackers/Trackers;)V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 115
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/impl/constraints/WorkConstraintsTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "workManagerImpl",
            "tracker"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mContext:Landroid/content/Context;

    .line 125
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 127
    invoke-virtual {p2}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 129
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 130
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/Map;

    .line 131
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/Map;

    iput-object p3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 133
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/foreground/SystemForegroundDispatcher;)Landroidx/work/impl/WorkManagerImpl;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/foreground/SystemForegroundDispatcher;)Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object p0
.end method

.method public static createCancelWorkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
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

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CANCEL_WORK"

    .line 379
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "workspec://"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 382
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createNotifyIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;
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
            "info"
        }
    .end annotation

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    .line 401
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION_ID"

    .line 402
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 403
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getForegroundServiceType()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    .line 404
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 405
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    .line 406
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;
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
            "info"
        }
    .end annotation

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    .line 357
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 358
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    .line 359
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION_ID"

    .line 360
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 361
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getForegroundServiceType()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    .line 362
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createStopForegroundIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_FOREGROUND"

    .line 419
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private handleCancelWork(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 326
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping foreground work for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_WORKSPEC_ID"

    .line 327
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 329
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    :cond_0
    return-void
.end method

.method private handleNotify(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 268
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    .line 269
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    .line 270
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 271
    new-instance v5, Landroidx/work/impl/model/WorkGenerationalId;

    invoke-direct {v5, v3, v4}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V

    const-string v4, "KEY_NOTIFICATION"

    .line 272
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 274
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v6, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Notifying with (id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", workSpecId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", notificationType :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz v3, :cond_2

    .line 281
    new-instance v3, Landroidx/work/ForegroundInfo;

    invoke-direct {v3, v0, p1, v2}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    iget-object v4, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 284
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    if-nez v3, :cond_0

    iput-object v5, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    .line 288
    invoke-interface {p0, v0, v2, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->startForeground(IILandroid/app/Notification;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    .line 291
    invoke-interface {v3, v0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->notify(ILandroid/app/Notification;)V

    if-eqz v2, :cond_2

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 298
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ForegroundInfo;

    .line 300
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getForegroundServiceType()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 303
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/ForegroundInfo;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    .line 306
    invoke-virtual {p1}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result v0

    .line 308
    invoke-virtual {p1}, Landroidx/work/ForegroundInfo;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 305
    invoke-interface {p0, v0, v1, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->startForeground(IILandroid/app/Notification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleStartForeground(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 242
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Started foreground service "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_WORKSPEC_ID"

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 244
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundDispatcher;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method handleStop(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 318
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "Stopping foreground service"

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz p0, :cond_0

    .line 320
    invoke-interface {p0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->stop()V

    :cond_0
    return-void
.end method

.method public onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workSpec",
            "state"
        }
    .end annotation

    .line 336
    instance-of p2, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    if-eqz p2, :cond_0

    .line 337
    iget-object p2, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 338
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Constraints unmet for WorkSpec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 339
    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->stopForegroundWork(Landroidx/work/impl/model/WorkGenerationalId;)V

    :cond_0
    return-void
.end method

.method onDestroy()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    .line 232
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/Map;

    .line 233
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    .line 234
    invoke-interface {v3, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    .line 236
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 237
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->removeExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 236
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 5
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

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    .line 140
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/Map;

    .line 141
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/Map;

    .line 143
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 147
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 149
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 151
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/ForegroundInfo;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 153
    invoke-virtual {p1, v0}, Landroidx/work/impl/model/WorkGenerationalId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/Map;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    .line 167
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkGenerationalId;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz v0, :cond_4

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ForegroundInfo;

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    .line 171
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result v2

    .line 172
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getForegroundServiceType()I

    move-result v3

    .line 173
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 170
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->startForeground(IILandroid/app/Notification;)V

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    .line 178
    invoke-virtual {v0}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result v0

    invoke-interface {v1, v0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->cancelNotification(I)V

    goto :goto_2

    :cond_3
    iput-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    :cond_4
    :goto_2
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    .line 196
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing Notification (id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", workSpecId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", notificationType: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getForegroundServiceType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v0, v1, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroidx/work/ForegroundInfo;->getNotificationId()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;->cancelNotification(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 149
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method onStartCommand(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->handleStartForeground(Landroid/content/Intent;)V

    .line 219
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->handleNotify(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "ACTION_NOTIFY"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->handleNotify(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_CANCEL_WORK"

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->handleCancelWork(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_STOP_FOREGROUND"

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->handleStop(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method setCallback(Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    const-string v0, "A callback already exists."

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    return-void
.end method
