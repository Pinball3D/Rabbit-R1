.class public final Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# static fields
.field private static final FORMAT_WITH_EMPTY_DRM_INIT_DATA:Landroidx/media3/common/Format;


# instance fields
.field private final drmListenerConditionVariable:Landroid/os/ConditionVariable;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

.field private final eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/DrmInitData;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {v1, v2}, Landroidx/media3/common/DrmInitData;-><init>([Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 46
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Landroidx/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 142
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:OfflineLicenseHelper"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 143
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 145
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    .line 146
    new-instance v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$1;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$1;-><init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    .line 169
    new-instance p0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, p0, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;
    .locals 0

    .line 43
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private acquireFirstSessionOnHandlerThread(I[BLandroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 325
    iget-object v0, p3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    .line 327
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    iget-object v7, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 328
    new-instance v8, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/Format;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSession;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmListenerConditionVariable:Landroid/os/ConditionVariable;

    .line 357
    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    .line 359
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 360
    new-instance v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Landroidx/media3/exoplayer/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :try_start_1
    invoke-virtual {p2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 377
    :cond_0
    invoke-virtual {p2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 382
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 351
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLandroidx/media3/common/Format;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->acquireFirstSessionOnHandlerThread(I[BLandroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    .line 280
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 281
    new-instance v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    :try_start_0
    invoke-virtual {p2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V

    .line 298
    throw p1
.end method

.method public static newWidevineInstance(Ljava/lang/String;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0, p1, p2}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;Ljava/util/Map;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;Ljava/util/Map;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/media3/datasource/DataSource$Factory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ")",
            "Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;"
        }
    .end annotation

    .line 121
    new-instance v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;-><init>()V

    .line 123
    invoke-virtual {v1, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setKeyRequestParameters(Ljava/util/Map;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object p3

    new-instance v1, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;)V

    .line 124
    invoke-virtual {p3, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->build(Landroidx/media3/exoplayer/drm/MediaDrmCallback;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object p0

    invoke-direct {v0, p0, p4}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method private releaseManagerOnHandlerThread()V
    .locals 3

    .line 391
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 392
    new-instance v2, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized downloadLicense(Landroidx/media3/common/Format;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLandroidx/media3/common/Format;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLicenseDurationRemainingSec([B)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    .line 230
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->acquireFirstSessionOnHandlerThread(I[BLandroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1
    :try_end_1
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    :try_start_2
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handler:Landroid/os/Handler;

    .line 242
    new-instance v2, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    :try_start_3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :try_start_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 254
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    :goto_0
    :try_start_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->releaseManagerOnHandlerThread()V

    .line 259
    throw p1

    :catch_1
    move-exception p1

    .line 235
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    .line 238
    :cond_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$acquireFirstSessionOnHandlerThread$2$androidx-media3-exoplayer-drm-OfflineLicenseHelper(I[BLcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/Format;)V
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 331
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    sget-object v2, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 332
    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 334
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->setMode(I[B)V

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 337
    invoke-virtual {p1, p2, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    .line 336
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSession;

    .line 335
    invoke-virtual {p3, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 339
    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->release()V

    .line 340
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 343
    invoke-virtual {p3, p0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$acquireFirstSessionOnHandlerThread$3$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Landroidx/media3/exoplayer/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 3

    .line 363
    :try_start_0
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    .line 364
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 365
    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 366
    invoke-virtual {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->release()V

    .line 368
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 370
    invoke-virtual {p2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 371
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 372
    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->release()V

    :goto_0
    return-void
.end method

.method synthetic lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    .line 284
    :try_start_0
    invoke-interface {p2}, Landroidx/media3/exoplayer/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 288
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 286
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 288
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 289
    throw p1
.end method

.method synthetic lambda$getLicenseDurationRemainingSec$0$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    .line 246
    :try_start_0
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/WidevineUtil;->getLicenseDurationRemainingSec(Landroidx/media3/exoplayer/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 245
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 248
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 250
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 251
    throw p1
.end method

.method synthetic lambda$releaseManagerOnHandlerThread$4$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 0
    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 395
    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->release()V

    const/4 p0, 0x0

    .line 396
    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 398
    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 264
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public declared-synchronized releaseLicense([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Landroidx/media3/common/Format;

    const/4 v1, 0x3

    .line 211
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLandroidx/media3/common/Format;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renewLicense([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->FORMAT_WITH_EMPTY_DRM_INIT_DATA:Landroidx/media3/common/Format;

    const/4 v1, 0x2

    .line 196
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(I[BLandroidx/media3/common/Format;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
