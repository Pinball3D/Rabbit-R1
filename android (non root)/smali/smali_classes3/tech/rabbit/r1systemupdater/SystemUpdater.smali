.class public Ltech/rabbit/r1systemupdater/SystemUpdater;
.super Ljava/lang/Object;
.source "SystemUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;,
        Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;,
        Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SystemUpdater"

.field static systemUpdater:Ltech/rabbit/r1systemupdater/SystemUpdater;


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater;->onCheckResult(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method

.method static synthetic access$200(Ltech/rabbit/r1systemupdater/SystemUpdater;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater;->onUpdateResult(Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V

    return-void
.end method

.method private bindService(Landroid/content/ServiceConnection;)Z
    .locals 2

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tech.rabbit.r1systemupdater"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tech.rabbit.r1systemupdater.service"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mContext:Ljava/lang/ref/WeakReference;

    .line 234
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Ltech/rabbit/r1systemupdater/SystemUpdater;
    .locals 1

    sget-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->systemUpdater:Ltech/rabbit/r1systemupdater/SystemUpdater;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ltech/rabbit/r1systemupdater/SystemUpdater;

    invoke-direct {v0, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->systemUpdater:Ltech/rabbit/r1systemupdater/SystemUpdater;

    :cond_0
    sget-object p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->systemUpdater:Ltech/rabbit/r1systemupdater/SystemUpdater;

    return-object p0
.end method

.method private onCheckResult(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mContext:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 97
    invoke-interface {p1, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;->onReuslt(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method

.method private onUpdateResult(Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mContext:Ljava/lang/ref/WeakReference;

    .line 225
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 227
    invoke-interface {p1, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;->onPayloadApplicationComplete(I)V

    return-void
.end method


# virtual methods
.method public check(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;)V
    .locals 2

    sget-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    const-string v1, "check"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    return-void

    .line 62
    :cond_1
    new-instance v0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;

    invoke-direct {v0, p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$1;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;)V

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 88
    invoke-direct {p0, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    const-string v1, "check bindService fail"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->onCheckResult(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    :cond_2
    return-void
.end method

.method public update(Ltech/rabbit/r1systemupdater/model/UpdateConfig;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;)V
    .locals 4

    sget-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    const-string v1, "update"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-nez p1, :cond_1

    sget-object p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    const-string p1, "update config null"

    .line 177
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-interface {p2, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;->onPayloadApplicationComplete(I)V

    return-void

    :cond_1
    sget-object v1, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update mServiceConnection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    return-void

    .line 183
    :cond_2
    new-instance v1, Ltech/rabbit/r1systemupdater/SystemUpdater$3;

    invoke-direct {v1, p0, p2, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$3;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    iput-object v1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 218
    invoke-direct {p0, v1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->bindService(Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    const-string v1, "update bindService fail"

    .line 219
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p2, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->onUpdateResult(Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V

    :cond_3
    return-void
.end method

.method public waitCleanUpPreviousUpdateFinish(Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 102
    invoke-interface {p1, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    return-void

    .line 105
    :cond_0
    new-instance v0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    invoke-direct {v0, p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$2;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;)V

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 166
    invoke-direct {p0, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->TAG:Ljava/lang/String;

    const-string v1, "waitCleanUpPreviousUpdateFinish bindService fail"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 p0, 0x0

    .line 169
    invoke-interface {p1, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    :cond_1
    return-void
.end method
