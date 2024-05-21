.class Ltech/rabbit/r1systemupdater/SystemUpdater$2;
.super Ljava/lang/Object;
.source "SystemUpdater.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater;->waitCleanUpPreviousUpdateFinish(Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

.field final synthetic val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iput-object p2, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 108
    invoke-static {p2}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Ltech/rabbit/r1systemupdater/service/IUpdateService;

    move-result-object p1

    .line 110
    :try_start_0
    new-instance p2, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;

    invoke-direct {p2, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater$2;)V

    invoke-interface {p1, p2}, Ltech/rabbit/r1systemupdater/service/IUpdateService;->bind(Ltech/rabbit/r1systemupdater/service/IUpdateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "waitCleanUpPreviousUpdateFinish fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    .line 152
    invoke-static {p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$200(Ltech/rabbit/r1systemupdater/SystemUpdater;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p2, p2, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    const/4 p2, 0x0

    .line 153
    iput-object p2, p1, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    const/4 p1, 0x0

    .line 154
    invoke-interface {p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 160
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "waitCleanUpPreviousUpdateFinish onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    .line 161
    invoke-static {p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$200(Ltech/rabbit/r1systemupdater/SystemUpdater;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    const/4 v0, 0x0

    .line 162
    iput-object v0, p1, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    const/4 p1, 0x0

    .line 163
    invoke-interface {p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    return-void
.end method
