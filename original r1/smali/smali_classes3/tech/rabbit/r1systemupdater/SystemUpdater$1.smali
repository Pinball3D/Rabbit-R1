.class Ltech/rabbit/r1systemupdater/SystemUpdater$1;
.super Ljava/lang/Object;
.source "SystemUpdater.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater;->check(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

.field final synthetic val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iput-object p2, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 65
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "check onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p2}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Ltech/rabbit/r1systemupdater/service/IUpdateService;

    move-result-object p1

    .line 68
    :try_start_0
    new-instance p2, Ltech/rabbit/r1systemupdater/SystemUpdater$1$1;

    invoke-direct {p2, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater$1$1;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater$1;)V

    invoke-interface {p1, p2}, Ltech/rabbit/r1systemupdater/service/IUpdateService;->check(Ltech/rabbit/r1systemupdater/service/ICheckCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 77
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "check call engine check fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;

    const/4 p2, 0x0

    .line 78
    invoke-static {p1, p0, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$100(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 84
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "check onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;

    const/4 v0, 0x0

    .line 85
    invoke-static {p1, p0, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$100(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method
