.class Ltech/rabbit/r1systemupdater/SystemUpdater$1$1;
.super Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub;
.source "SystemUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1systemupdater/SystemUpdater$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$1;


# direct methods
.method constructor <init>(Ltech/rabbit/r1systemupdater/SystemUpdater$1;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$1;

    .line 68
    invoke-direct {p0}, Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 2

    .line 71
    invoke-static {}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check onResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$1;

    .line 72
    iget-object v0, v0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->this$0:Ltech/rabbit/r1systemupdater/SystemUpdater;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1$1;->this$1:Ltech/rabbit/r1systemupdater/SystemUpdater$1;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/SystemUpdater$1;->val$callback:Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;

    invoke-static {v0, p0, p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->access$100(Ltech/rabbit/r1systemupdater/SystemUpdater;Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method
