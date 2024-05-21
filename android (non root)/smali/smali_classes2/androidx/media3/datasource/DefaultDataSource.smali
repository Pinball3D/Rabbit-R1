.class public final Landroidx/media3/datasource/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DefaultDataSource$Factory;
    }
.end annotation


# static fields
.field private static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_DATA:Ljava/lang/String; = "data"

.field private static final SCHEME_RAW:Ljava/lang/String; = "rawresource"

.field private static final SCHEME_RTMP:Ljava/lang/String; = "rtmp"

.field private static final SCHEME_UDP:Ljava/lang/String; = "udp"

.field private static final TAG:Ljava/lang/String; = "DefaultDataSource"


# instance fields
.field private assetDataSource:Landroidx/media3/datasource/DataSource;

.field private final baseDataSource:Landroidx/media3/datasource/DataSource;

.field private contentDataSource:Landroidx/media3/datasource/DataSource;

.field private final context:Landroid/content/Context;

.field private dataSchemeDataSource:Landroidx/media3/datasource/DataSource;

.field private dataSource:Landroidx/media3/datasource/DataSource;

.field private fileDataSource:Landroidx/media3/datasource/DataSource;

.field private rawResourceDataSource:Landroidx/media3/datasource/DataSource;

.field private rtmpDataSource:Landroidx/media3/datasource/DataSource;

.field private final transferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/datasource/TransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private udpDataSource:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    .line 224
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/DataSource;

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 1

    .line 203
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    .line 206
    invoke-virtual {v0, p2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 207
    invoke-virtual {p2, p3}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 208
    invoke-virtual {p2, p4}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 209
    invoke-virtual {p2, p5}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 210
    invoke-virtual {p2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->createDataSource()Landroidx/media3/datasource/DefaultHttpDataSource;

    move-result-object p2

    .line 203
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 175
    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 155
    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    .line 375
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    .line 376
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/TransferListener;

    invoke-interface {p1, v1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAssetDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroidx/media3/datasource/AssetDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/datasource/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/DataSource;

    .line 325
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private getContentDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Landroidx/media3/datasource/ContentDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/datasource/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/DataSource;

    .line 333
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private getDataSchemeDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroidx/media3/datasource/DataSchemeDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSource;

    .line 361
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private getFileDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/DataSource;

    .line 317
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private getRawResourceDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/datasource/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/DataSource;

    .line 369
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private getRtmpDataSource()Landroidx/media3/datasource/DataSource;
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    .line 341
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSource;

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    .line 343
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 349
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 346
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private getUdpDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroidx/media3/datasource/UdpDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/UdpDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/DataSource;

    .line 309
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/DataSource;

    return-object p0
.end method

.method private maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 383
    invoke-interface {p1, p2}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    .line 231
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    .line 232
    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    .line 233
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/DataSource;

    .line 234
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/DataSource;

    .line 235
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/DataSource;

    .line 236
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    .line 237
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/DataSource;

    .line 238
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSource;

    .line 239
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/DataSource;

    .line 240
    invoke-direct {p0, v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 299
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 302
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-nez p0, :cond_0

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 248
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getAssetDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto/16 :goto_2

    .line 254
    :cond_1
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getFileDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getAssetDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    :cond_3
    const-string v1, "content"

    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getContentDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getRtmpDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    :cond_5
    const-string v1, "udp"

    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 263
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getUdpDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    :cond_6
    const-string v1, "data"

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 265
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getDataSchemeDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    :cond_7
    const-string v1, "rawresource"

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_2

    .line 267
    :cond_9
    :goto_1
    invoke-direct {p0}, Landroidx/media3/datasource/DefaultDataSource;->getRawResourceDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    :goto_2
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 272
    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p0

    return-wide p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 278
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result p0

    return p0
.end method
