.class Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
.super Ljava/lang/Object;
.source "NetworkBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkBreadcrumbConnectionDetail"
.end annotation


# instance fields
.field final downBandwidth:I

.field final isVpn:Z

.field final signalStrength:I

.field private timestampNanos:J

.field final type:Ljava/lang/String;

.field final upBandwidth:I


# direct methods
.method constructor <init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V
    .locals 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetworkCapabilities is required"

    .line 219
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "BuildInfoProvider is required"

    .line 220
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    iput v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    .line 222
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    iput v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    .line 224
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, -0x64

    if-le v0, v1, :cond_1

    move v2, v0

    :cond_1
    iput v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    const/4 v0, 0x4

    .line 229
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    .line 231
    invoke-static {p1, p2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionType(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    iput-wide p3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->timestampNanos:J

    return-void
.end method


# virtual methods
.method isSimilar(Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;)Z
    .locals 14

    iget v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    .line 243
    iget v1, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    .line 244
    iget v2, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    .line 245
    iget v3, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-wide v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->timestampNanos:J

    .line 249
    iget-wide v5, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->timestampNanos:J

    sub-long/2addr v3, v5

    .line 250
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Lio/sentry/DateUtils;->nanosToMillis(D)D

    move-result-wide v3

    const-wide v5, 0x40b3880000000000L    # 5000.0

    cmpg-double v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_2

    const/4 v6, 0x5

    if-gt v0, v6, :cond_1

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v4

    :goto_2
    const-wide v6, 0x3fb999999999999aL    # 0.1

    const-wide v8, 0x408f400000000000L    # 1000.0

    if-nez v3, :cond_4

    int-to-double v10, v1

    iget v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    .line 253
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v12, v1

    mul-double/2addr v12, v6

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    cmpg-double v1, v10, v12

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v4

    :goto_4
    if-nez v3, :cond_6

    int-to-double v2, v2

    iget v10, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    .line 255
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v5

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v4

    :goto_6
    iget-boolean v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    .line 256
    iget-boolean v6, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    if-ne v3, v6, :cond_7

    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move v4, v5

    :goto_7
    return v4
.end method
