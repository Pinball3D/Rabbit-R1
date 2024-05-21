.class Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;
.super Ljava/lang/Object;
.source "SystemUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;->this$2:Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waitCleanUpPreviousUpdateFinish timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;->this$2:Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;

    .line 116
    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    invoke-static {v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$200(Ltech/rabbit/r1systemupdater/SystemUpdater;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;->this$2:Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;

    iget-object v1, v1, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    iget-object v1, v1, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object v1, v1, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;->this$2:Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;

    .line 117
    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    const/4 v1, 0x0

    iput-object v1, v0, Ltech/rabbit/r1systemupdater/SystemUpdater;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1$1;->this$2:Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;

    .line 118
    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$2;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$2;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;->onFinish(Z)V

    return-void
.end method
