.class Ltech/rabbit/r1systemupdater/SystemUpdater$3;
.super Ljava/lang/Object;
.source "SystemUpdater.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater;->update(Ltech/rabbit/r1systemupdater/model/UpdateConfig;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

.field final synthetic val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

.field final synthetic val$config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iput-object p2, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    iput-object p3, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 186
    invoke-static {p2}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Ltech/rabbit/r1systemupdater/service/IUpdateService;

    move-result-object p1

    .line 188
    :try_start_0
    new-instance p2, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;

    invoke-direct {p2, p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;-><init>(Ltech/rabbit/r1systemupdater/SystemUpdater$3;Ltech/rabbit/r1systemupdater/service/IUpdateService;)V

    invoke-interface {p1, p2}, Ltech/rabbit/r1systemupdater/service/IUpdateService;->bind(Ltech/rabbit/r1systemupdater/service/IUpdateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 207
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "update call engine update fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    const/4 p2, -0x2

    .line 208
    invoke-static {p1, p0, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$300(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 214
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "update onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    const/4 v0, -0x2

    .line 215
    invoke-static {p1, p0, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$300(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V

    return-void
.end method
