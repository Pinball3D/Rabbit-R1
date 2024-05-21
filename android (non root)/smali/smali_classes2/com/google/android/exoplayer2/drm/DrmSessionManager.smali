.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    }
.end annotation


# static fields
.field public static final DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field public static final DUMMY:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DUMMY:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method

.method public static getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-object v0
.end method


# virtual methods
.method public abstract acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
.end method

.method public abstract getCryptoType(Lcom/google/android/exoplayer2/Format;)I
.end method

.method public preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .locals 0

    .line 150
    sget-object p0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

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

.method public abstract setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
.end method
