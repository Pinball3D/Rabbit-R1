.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    }
.end annotation


# static fields
.field public static final DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public static final DUMMY:Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager$1;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    sput-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DUMMY:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-void
.end method

.method public static getDummyDrmSessionManager()Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-object v0
.end method


# virtual methods
.method public abstract acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;
.end method

.method public abstract getCryptoType(Landroidx/media3/common/Format;)I
.end method

.method public preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    .locals 0

    .line 152
    sget-object p0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-object p0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public abstract setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V
.end method
