.class public final Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;
.super Ljava/lang/Object;
.source "OtaActivity.kt"

# interfaces
.implements Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/ota/OtaActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "tech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1",
        "Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;",
        "onPayloadApplicationComplete",
        "",
        "errorCode",
        "",
        "onStatusUpdate",
        "status",
        "percent",
        "",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/ota/OtaActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 220
    invoke-static {v0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$getTAG$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPayloadApplicationComplete error code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/model/UpdateEngineErrorCodes;->getCodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    const/4 p1, 0x0

    .line 226
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$showProgress(Ltech/rabbit/r1launcher/ota/OtaActivity;I)V

    .line 227
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 176
    invoke-static {v0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$getTAG$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStatusUpdate status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/model/UpdateEngineStatuses;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1systemupdater/OtaState;->FINALIZING:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1systemupdater/OtaState;->VERIFYING:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_2
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOADING:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x6

    const/16 v1, 0x64

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 210
    invoke-static {p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$getTAG$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "update success, reboot to finish update"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    .line 211
    invoke-static {p0, v1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$showProgress(Ltech/rabbit/r1launcher/ota/OtaActivity;I)V

    .line 212
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_REBOOT:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;->this$0:Ltech/rabbit/r1launcher/ota/OtaActivity;

    int-to-float p1, v1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 214
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->access$showProgress(Ltech/rabbit/r1launcher/ota/OtaActivity;I)V

    :goto_1
    return-void
.end method
