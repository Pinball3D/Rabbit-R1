.class Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;
.super Ljava/lang/Object;
.source "WifiUtils.java"

# interfaces
.implements Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$errorConnect$0(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;)V
    .locals 1

    .line 227
    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;->failed(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DIDN\'T CONNECT TO WIFI "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public errorConnect(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 218
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 219
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->stopTimeout()V

    .line 220
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->isAndroidQOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->disconnect()V

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 223
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$500(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->reenableAllHotspots(Landroid/net/wifi/WifiManager;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 226
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$2100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p0

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public successfulConnect()V
    .locals 2

    const-string v0, "CONNECTED SUCCESSFULLY"

    .line 208
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 209
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$000(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    invoke-static {v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1700(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/WifiConnectionReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/ConnectorUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 210
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$1900(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/TimeoutHandler;->stopTimeout()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3;->this$0:Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;

    .line 213
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->access$2100(Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->of(Ljava/lang/Object;)Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;

    move-result-object p0

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils$3$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/Elvis;->ifPresent(Landroidx/core/util/Consumer;)V

    return-void
.end method
