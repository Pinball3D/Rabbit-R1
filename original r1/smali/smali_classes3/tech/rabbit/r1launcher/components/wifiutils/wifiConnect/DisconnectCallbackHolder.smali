.class public Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;
.super Ljava/lang/Object;
.source "DisconnectCallbackHolder.java"


# static fields
.field private static volatile sInstance:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;


# instance fields
.field private isNetworkcallbackAdded:Z

.field private isProcessBoundToNetwork:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;
    .locals 2

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->sInstance:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    if-nez v0, :cond_1

    const-class v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    .line 42
    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->sInstance:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;-><init>()V

    sput-object v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->sInstance:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->sInstance:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;

    return-object v0
.end method


# virtual methods
.method public addNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->isNetworkcallbackAdded:Z

    return-void
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->isProcessBoundToNetwork:Z

    goto :goto_0

    :cond_0
    const-string p0, "ConnectivityManager is null. Did you call addNetworkCallback method first?"

    .line 114
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting on Android 10+"

    .line 71
    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 72
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->isNetworkcallbackAdded:Z

    :cond_0
    return-void
.end method

.method public isNetworkcallbackAdded()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->isNetworkcallbackAdded:Z

    return p0
.end method

.method public isProcessBoundToNetwork()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->isProcessBoundToNetwork:Z

    return p0
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "NetworkCallback has not been added yet. Please call addNetworkCallback method first"

    .line 87
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unbindProcessFromNetwork()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/DisconnectCallbackHolder;->isProcessBoundToNetwork:Z

    goto :goto_0

    :cond_0
    const-string p0, "ConnectivityManager is null. Did you call addNetworkCallback method first?"

    .line 99
    invoke-static {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->wifiLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
