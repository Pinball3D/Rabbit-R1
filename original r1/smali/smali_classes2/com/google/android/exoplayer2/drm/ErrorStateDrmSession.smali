.class public final Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# instance fields
.field private final error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;->error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    return-void
.end method

.method public getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;->error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    return-object p0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 0

    .line 52
    sget-object p0, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    return-object p0
.end method

.method public getState()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
