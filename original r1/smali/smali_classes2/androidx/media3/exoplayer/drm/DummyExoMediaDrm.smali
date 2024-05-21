.class public final Landroidx/media3/exoplayer/drm/DummyExoMediaDrm;
.super Ljava/lang/Object;
.source "DummyExoMediaDrm.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/ExoMediaDrm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/media3/exoplayer/drm/DummyExoMediaDrm;
    .locals 1

    .line 38
    new-instance v0, Landroidx/media3/exoplayer/drm/DummyExoMediaDrm;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/DummyExoMediaDrm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .locals 0

    return-void
.end method

.method public closeSession([B)V
    .locals 0

    return-void
.end method

.method public createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;
    .locals 0

    .line 152
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getCryptoType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .line 73
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 0

    .line 136
    sget-object p0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object p0
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .locals 0

    .line 86
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 58
    new-instance p0, Landroid/media/MediaDrmException;

    const-string v0, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {p0, v0}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 0

    .line 80
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public provideProvisionResponse([B)V
    .locals 0

    .line 92
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .locals 0

    .line 104
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public restoreKeys([B[B)V
    .locals 0

    .line 120
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setOnEventListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    return-void
.end method

.method public setOnExpirationUpdateListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .locals 0

    return-void
.end method

.method public setOnKeyStatusChangeListener(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 0

    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
