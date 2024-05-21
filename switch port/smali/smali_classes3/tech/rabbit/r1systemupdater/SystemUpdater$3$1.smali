.class Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;
.super Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Stub;
.source "SystemUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$3;

.field final synthetic val$updateService:Ltech/rabbit/r1systemupdater/service/IUpdateService;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater$3;Ltech/rabbit/r1systemupdater/service/IUpdateService;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$3;

    iput-object p2, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->val$updateService:Ltech/rabbit/r1systemupdater/service/IUpdateService;

    .line 188
    invoke-direct {p0}, Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update onPayloadApplicationComplete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/model/UpdateEngineErrorCodes;->getCodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->val$updateService:Ltech/rabbit/r1systemupdater/service/IUpdateService;

    .line 201
    invoke-interface {v0}, Ltech/rabbit/r1systemupdater/service/IUpdateService;->unbind()V

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$3;

    .line 202
    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$3;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    invoke-static {v0, p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$300(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;I)V

    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update onStatusUpdate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/model/UpdateEngineStatuses;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$3;

    .line 192
    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    invoke-interface {v0, p1, p2}, Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;->onStatusUpdate(IF)V

    if-nez p1, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->val$updateService:Ltech/rabbit/r1systemupdater/service/IUpdateService;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$3;

    .line 194
    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$3;->val$config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-interface {p1, p0}, Ltech/rabbit/r1systemupdater/service/IUpdateService;->update(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    :cond_0
    return-void
.end method
