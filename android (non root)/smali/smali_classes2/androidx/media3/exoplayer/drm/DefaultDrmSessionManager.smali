.class public Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Mode;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_KEEPALIVE_MS:J = 0x493e0L

.field public static final INITIAL_DRM_REQUEST_RETRY_COUNT:I = 0x3

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSessionMgr"


# instance fields
.field private final callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

.field private exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

.field private final exoMediaDrmProvider:Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;

.field private final keepaliveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field volatile mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

.field private mode:I

.field private final multiSession:Z

.field private noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field private offlineLicenseKeySetId:[B

.field private placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field private final playClearSamplesWithoutKeys:Z

.field private playbackHandler:Landroid/os/Handler;

.field private playbackLooper:Landroid/os/Looper;

.field private playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final preacquiredSessionReferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCallsCount:I

.field private final provisioningManagerImpl:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

.field private final referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

.field private final sessionKeepaliveMs:J

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private final useDrmSessionsForClearContentTrackTypes:[I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;",
            "Landroidx/media3/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    iput-object p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    iput-object p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 345
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 346
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 349
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 350
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    iput-wide p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JLandroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p10}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0
.end method

.method static synthetic access$1002(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J
    .locals 2

    .line 73
    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-wide v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)I
    .locals 0

    .line 73
    iget p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    return p0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0
.end method

.method static synthetic access$902(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1
.end method

.method private acquireSession(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 4

    .line 465
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeCreateMediaDrmHandler(Landroid/os/Looper;)V

    .line 467
    iget-object p1, p3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez p1, :cond_0

    .line 469
    iget-object p1, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 470
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 469
    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeAcquirePlaceholderSession(IZ)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 476
    iget-object p1, p3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/DrmInitData;

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 478
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-direct {p1, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    const-string p0, "DefaultDrmSessionMgr"

    const-string p3, "DRM error"

    .line 479
    invoke-static {p0, p3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 481
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 483
    :cond_1
    new-instance p0, Landroidx/media3/exoplayer/drm/ErrorStateDrmSession;

    new-instance p2, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    const/16 p3, 0x1773

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/drm/ErrorStateDrmSession;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p0

    :cond_2
    move-object p1, v1

    :cond_3
    iget-boolean p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p3, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_0

    :cond_4
    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 494
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 495
    iget-object v3, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v3, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_6
    :goto_0
    if-nez v1, :cond_8

    .line 505
    invoke-direct {p0, p1, v0, p2, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p1, :cond_7

    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_7
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 513
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_8
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :goto_1
    return-object v1
.end method

.method private static acquisitionFailedIndicatingResourceShortage(Landroidx/media3/exoplayer/drm/DrmSession;)Z
    .locals 3

    .line 653
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 655
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/media/ResourceBusyException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private canAcquireSession(Landroidx/media3/common/DrmInitData;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 570
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 572
    iget v0, p1, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultDrmSessionMgr"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    .line 581
    :cond_2
    :goto_0
    iget-object p0, p1, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string p1, "cenc"

    .line 582
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "cbcs"

    .line 585
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 588
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p1, 0x19

    if-lt p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    const-string p1, "cbc1"

    .line 589
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "cens"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method private createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;Z",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ")",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 700
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    or-int v9, v1, p2

    .line 703
    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v5, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    iget-object v6, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    iget v8, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    iget-object v11, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v12, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iget-object v13, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    iget-object v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 716
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/Looper;

    iget-object v15, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 718
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/media3/exoplayer/analytics/PlayerId;

    move-object v2, v1

    move-object/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v16}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    move-object/from16 v2, p3

    .line 723
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iget-wide v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 726
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_0
    return-object v1
.end method

.method private createAndAcquireSessionWithRetry(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;Z",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Z)",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 623
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Landroidx/media3/exoplayer/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 628
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->undoAcquisition(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 629
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    .line 635
    :cond_0
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Landroidx/media3/exoplayer/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    iget-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 637
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 638
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    iget-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 639
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 642
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 644
    :cond_1
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->undoAcquisition(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 645
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static getSchemeDatas(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 773
    :goto_0
    iget v2, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_3

    .line 774
    invoke-virtual {p0, v1}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    .line 776
    invoke-virtual {v2, p1}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 777
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 778
    :cond_0
    iget-object v3, v2, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    .line 779
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private declared-synchronized initPlaybackLooper(Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.playbackLooper",
            "this.playbackHandler"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 604
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 606
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    .line 607
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeAcquirePlaceholderSession(IZ)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 540
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 542
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sget-boolean v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 546
    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->linearSearch([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 547
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-nez p1, :cond_2

    .line 553
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 552
    invoke-direct {p0, p1, v0, v3, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 557
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0

    :cond_3
    :goto_1
    return-object v3
.end method

.method private maybeCreateMediaDrmHandler(Landroid/os/Looper;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    :cond_0
    return-void
.end method

.method private maybeReleaseMediaDrm()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 734
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 735
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 737
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    :cond_0
    return-void
.end method

.method private releaseAllKeepaliveSessions()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 673
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    .line 674
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession;

    const/4 v1, 0x0

    .line 675
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private releaseAllPreacquiredSessions()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 683
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    .line 684
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    .line 685
    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private undoAcquisition(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 4

    .line 664
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 666
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_0
    return-void
.end method

.method private verifyPlaybackThread(Z)V
    .locals 2

    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez p1, :cond_0

    .line 744
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 748
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 749
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 754
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 749
    invoke-static {v0, p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 3

    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    .line 449
    :cond_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 450
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 451
    invoke-direct {p0, v0, p1, p2, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p0

    return-object p0
.end method

.method public getCryptoType(Landroidx/media3/common/Format;)I
    .locals 3

    const/4 v0, 0x0

    .line 523
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 524
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    .line 525
    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez v2, :cond_1

    .line 526
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 527
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->linearSearch([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 531
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->canAcquireSession(Landroidx/media3/common/DrmInitData;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 437
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 440
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->acquire(Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method public final prepare()V
    .locals 6

    const/4 v0, 0x1

    .line 391
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 396
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;->acquireExoMediaDrm(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 397
    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->setOnEventListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 400
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 401
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x1

    .line 408
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 417
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 418
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 423
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method public setMode(I[B)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 379
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 381
    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    return-void
.end method

.method public setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->initPlaybackLooper(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method
