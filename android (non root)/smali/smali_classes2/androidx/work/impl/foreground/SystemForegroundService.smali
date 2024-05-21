.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/LifecycleService;
.source "SystemForegroundService.java"

# interfaces
.implements Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/SystemForegroundService$Api31Impl;,
        Landroidx/work/impl/foreground/SystemForegroundService$Api29Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sForegroundService:Landroidx/work/impl/foreground/SystemForegroundService;


# instance fields
.field mDispatcher:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

.field private mHandler:Landroid/os/Handler;

.field private mIsShutdown:Z

.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    .line 46
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->sForegroundService:Landroidx/work/impl/foreground/SystemForegroundService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Landroidx/work/impl/foreground/SystemForegroundService;
    .locals 1

    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->sForegroundService:Landroidx/work/impl/foreground/SystemForegroundService;

    return-object v0
.end method

.method private initializeDispatcher()V
    .locals 2

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 100
    new-instance v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mDispatcher:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 101
    invoke-virtual {v0, p0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->setCallback(Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;)V

    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "notificationId"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$3;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/SystemForegroundService$3;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "notificationId",
            "notification"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundService$2;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    sput-object p0, Landroidx/work/impl/foreground/SystemForegroundService;->sForegroundService:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 63
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->initializeDispatcher()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mDispatcher:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 92
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
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

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mIsShutdown:Z

    if-eqz p2, :cond_0

    .line 70
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p2

    sget-object p3, Landroidx/work/impl/foreground/SystemForegroundService;->TAG:Ljava/lang/String;

    const-string v0, "Re-initializing SystemForegroundService after a request to shut-down."

    invoke-virtual {p2, p3, v0}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mDispatcher:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 74
    invoke-virtual {p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->onDestroy()V

    .line 76
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->initializeDispatcher()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mIsShutdown:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mDispatcher:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 82
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->onStartCommand(Landroid/content/Intent;)V

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public startForeground(IILandroid/app/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "notificationId",
            "notificationType",
            "notification"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$1;

    invoke-direct {v1, p0, p1, p3, p2}, Landroidx/work/impl/foreground/SystemForegroundService$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mIsShutdown:Z

    .line 109
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundService;->TAG:Ljava/lang/String;

    const-string v3, "All commands completed."

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopForeground(Z)V

    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->sForegroundService:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 116
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopSelf()V

    return-void
.end method
