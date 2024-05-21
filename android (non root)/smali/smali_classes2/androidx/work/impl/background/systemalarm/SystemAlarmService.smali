.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Landroidx/lifecycle/LifecycleService;
.source "SystemAlarmService.java"

# interfaces
.implements Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field private mIsShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmService"

    .line 36
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method

.method private initializeDispatcher()V
    .locals 1

    .line 92
    new-instance v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 93
    invoke-virtual {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->setCompletedListener(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;)V

    return-void
.end method


# virtual methods
.method public onAllCommandsCompleted()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    .line 82
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    const-string v2, "All commands completed in dispatcher"

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroidx/work/impl/utils/WakeLocks;->checkWakeLocks()V

    .line 87
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->stopSelf()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 44
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->initializeDispatcher()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 52
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    iget-boolean p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    if-eqz p2, :cond_0

    .line 59
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    const-string v1, "Re-initializing SystemAlarmDispatcher after a request to shut-down."

    invoke-virtual {p2, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 63
    invoke-virtual {p2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onDestroy()V

    .line 65
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->initializeDispatcher()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 71
    invoke-virtual {p0, p1, p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Landroid/content/Intent;I)Z

    :cond_1
    const/4 p0, 0x3

    return p0
.end method
