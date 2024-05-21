.class Landroidx/media3/exoplayer/drm/DrmSessionManager$1;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 1

    .line 58
    iget-object p0, p2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/drm/ErrorStateDrmSession;

    new-instance p1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    new-instance p2, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v0, 0x1771

    invoke-direct {p1, p2, v0}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/ErrorStateDrmSession;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p0
.end method

.method public getCryptoType(Landroidx/media3/common/Format;)I
    .locals 0

    .line 70
    iget-object p0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method
