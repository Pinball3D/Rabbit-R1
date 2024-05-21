.class public final Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/MediaDrmCallback;


# static fields
.field private static final MAX_MANUAL_REDIRECTS:I = 0x5


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final defaultLicenseUrl:Ljava/lang/String;

.field private final forceDefaultLicenseUrl:Z

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method

.method private static executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 170
    new-instance p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpMethod(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpBody([B)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    const/4 p0, 0x0

    move-object p1, v2

    .line 181
    :goto_0
    :try_start_0
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    invoke-direct {p2, v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_1
    .catch Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 185
    :try_start_3
    invoke-static {p3, p0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->getRedirectUrl(Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 190
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :try_start_4
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 187
    :cond_0
    :try_start_5
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    :goto_1
    :try_start_6
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    move-object v7, p0

    .line 196
    new-instance p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    .line 200
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw p0
.end method

.method private static getRedirectUrl(Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;
    .locals 3

    .line 210
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x133

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x134

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 216
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    if-eqz p0, :cond_1

    const-string p1, "Location"

    .line 218
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 219
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 220
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public clearAllKeyRequestProperties()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 113
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 114
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearKeyRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 106
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 107
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 132
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getLicenseServerUrl()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v1, :cond_0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 136
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "text/xml"

    goto :goto_0

    .line 149
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "application/json"

    goto :goto_0

    :cond_3
    const-string v2, "application/octet-stream"

    :goto_0
    const-string v3, "Content-Type"

    .line 150
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 152
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 156
    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 157
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 159
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 137
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 138
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 140
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string p1, "No license URL"

    invoke-direct {v6, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw p0
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&signedRequest="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p2, 0x0

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 123
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 94
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 95
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
