.class Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;
.super Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Stub;
.source "SystemUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstStatus:I

.field final handler:Landroid/os/Handler;

.field final synthetic this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

.field final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater$2;)V
    .locals 1

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 110
    invoke-direct {p0}, Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Stub;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->firstStatus:I

    .line 112
    new-instance p1, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;

    invoke-direct {p1, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;)V

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->timeoutRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->firstStatus:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 141
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "waitCleanUpPreviousUpdateFinish CLEANUP_PREVIOUS_UPDATE finished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->handler:Landroid/os/Handler;

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->timeoutRunnable:Ljava/lang/Runnable;

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 143
    iget-object p1, p1, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$200(Ltech/rabbit/r1systemupdater/SystemUpdater;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 144
    iget-object p1, p1, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    const/4 v0, 0x0

    iput-object v0, p1, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 145
    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    :cond_0
    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->firstStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 125
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waitCleanUpPreviousUpdateFinish onStatusUpdate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/model/UpdateEngineStatuses;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->firstStatus:I

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 128
    iget-object p1, p1, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$200(Ltech/rabbit/r1systemupdater/SystemUpdater;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    iget-object p2, p2, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p2, p2, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 129
    iget-object p1, p1, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    const/4 p2, 0x0

    iput-object p2, p1, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    .line 130
    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "waitCleanUpPreviousUpdateFinish waiting for CLEANUP_PREVIOUS_UPDATE finish"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->handler:Landroid/os/Handler;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    .line 133
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
