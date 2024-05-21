.class public final Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
.super Ljava/lang/Object;
.source "AndroidConnectionStatusProvider.java"

# interfaces
.implements Lio/sentry/IConnectionStatusProvider;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;

.field private final registeredCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    iput-object p3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registeredCallbacks:Ljava/util/Map;

    return-void
.end method

.method private static getConnectionStatus(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 122
    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 123
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p1, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->NO_PERMISSION:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object p0

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 130
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p1, "NetworkInfo is null, there\'s no active network."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object p0

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 134
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->CONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    goto :goto_0

    .line 135
    :cond_2
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 137
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Could not retrieve Connection Status"

    invoke-interface {p2, p1, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object p0
.end method

.method public static getConnectionType(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 4

    .line 155
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 159
    invoke-static {p0, v2}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    .line 160
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 169
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p0

    const/16 p2, 0x17

    const/4 v3, 0x1

    if-lt p0, p2, :cond_4

    .line 171
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    if-nez p0, :cond_2

    .line 173
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "Network is null and cannot check network status"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 177
    :cond_2
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_3

    .line 179
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "NetworkCapabilities is null and cannot check network type"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    const/4 p2, 0x3

    .line 182
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    .line 185
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 188
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    move v3, v2

    move v2, p2

    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_5

    .line 201
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "NetworkInfo is null, there\'s no active network."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 206
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    const/16 p2, 0x9

    if-eq p0, p2, :cond_6

    move v0, v2

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_7
    move v0, v3

    move v3, v2

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    if-eqz v2, :cond_9

    const-string p0, "ethernet"

    return-object p0

    :cond_9
    if-eqz v0, :cond_a

    const-string p0, "wifi"

    return-object p0

    :cond_a
    if-eqz v3, :cond_b

    const-string p0, "cellular"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 243
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to retrieve network info"

    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-object v1
.end method

.method public static getConnectionType(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 2

    .line 259
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x3

    .line 265
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "ethernet"

    return-object p0

    :cond_1
    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "wifi"

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "cellular"

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;
    .locals 3

    const-string v0, "connectivity"

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 283
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConnectivityManager is null and cannot check network status"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 2

    .line 294
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 295
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "NetworkCallbacks need Android N+."

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 298
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 302
    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 303
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "No permission (ACCESS_NETWORK_STATE) to check network status."

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 307
    :cond_2
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 309
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "registerDefaultNetworkCallback failed"

    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 321
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/16 v0, 0x15

    if-ge p2, v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 329
    :cond_1
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 331
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "unregisterNetworkCallback failed"

    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 68
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    .line 69
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "addConnectionStatusObserver requires Android 5+."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 73
    :cond_0
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;-><init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registeredCallbacks:Ljava/util/Map;

    .line 96
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 97
    invoke-static {p1, v1, p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result p0

    return p0
.end method

.method public getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    .line 48
    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object p0

    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    .line 52
    invoke-static {v1, v0, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatus(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 62
    invoke-static {v0, v1, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionType(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegisteredCallbacks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registeredCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registeredCallbacks:Ljava/util/Map;

    .line 103
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->logger:Lio/sentry/ILogger;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 105
    invoke-static {v0, v1, p0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method
