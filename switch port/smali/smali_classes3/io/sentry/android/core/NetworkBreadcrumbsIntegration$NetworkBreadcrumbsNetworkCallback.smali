.class final Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NetworkBreadcrumbsNetworkCallback"
.end annotation


# instance fields
.field final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field currentNetwork:Landroid/net/Network;

.field final dateProvider:Lio/sentry/SentryDateProvider;

.field final hub:Lio/sentry/IHub;

.field lastCapabilities:Landroid/net/NetworkCapabilities;

.field lastCapabilityNanos:J


# direct methods
.method constructor <init>(Lio/sentry/IHub;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/SentryDateProvider;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->currentNetwork:Landroid/net/Network;

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilityNanos:J

    const-string v0, "Hub is required"

    .line 117
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->hub:Lio/sentry/IHub;

    const-string p1, "BuildInfoProvider is required"

    .line 119
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string p1, "SentryDateProvider is required"

    .line 120
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryDateProvider;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->dateProvider:Lio/sentry/SentryDateProvider;

    return-void
.end method

.method private createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 1

    .line 174
    new-instance p0, Lio/sentry/Breadcrumb;

    invoke-direct {p0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v0, "system"

    .line 175
    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v0, "network.event"

    .line 176
    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    const-string v0, "action"

    .line 177
    invoke-virtual {p0, v0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p0, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object p0
.end method

.method private getNewConnectionDetails(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;JJ)Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    .locals 2

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {p1, p2, p0, p5, p6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V

    return-object p1

    .line 191
    :cond_0
    new-instance v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v0, p1, v1, p3, p4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V

    .line 194
    new-instance p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {p1, p2, p0, p5, p6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V

    .line 200
    invoke-virtual {v0, p1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isSimilar(Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->currentNetwork:Landroid/net/Network;

    .line 125
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NETWORK_AVAILABLE"

    .line 128
    invoke-direct {p0, v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->hub:Lio/sentry/IHub;

    .line 129
    invoke-interface {v1, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->currentNetwork:Landroid/net/Network;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 9

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->currentNetwork:Landroid/net/Network;

    .line 137
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 140
    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v7

    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    iget-wide v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilityNanos:J

    move-object v0, p0

    move-object v2, p2

    move-wide v5, v7

    .line 142
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->getNewConnectionDetails(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;JJ)Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    iput-wide v7, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilityNanos:J

    const-string p2, "NETWORK_CAPABILITIES_CHANGED"

    .line 149
    invoke-direct {p0, p2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object p2

    .line 150
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "download_bandwidth"

    invoke-virtual {p2, v1, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "upload_bandwidth"

    invoke-virtual {p2, v1, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-boolean v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vpn_active"

    invoke-virtual {p2, v1, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "network_type"

    .line 153
    iget-object v1, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    if-eqz v0, :cond_2

    .line 155
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "signal_strength"

    invoke-virtual {p2, v1, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :cond_2
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    const-string v1, "android:networkCapabilities"

    .line 158
    invoke-virtual {v0, v1, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->hub:Lio/sentry/IHub;

    .line 159
    invoke-interface {p0, p2, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->currentNetwork:Landroid/net/Network;

    .line 164
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "NETWORK_LOST"

    .line 167
    invoke-direct {p0, p1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object p1

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->hub:Lio/sentry/IHub;

    .line 168
    invoke-interface {v0, p1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->currentNetwork:Landroid/net/Network;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method
