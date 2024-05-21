.class public final synthetic Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/DrmSessionManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public final get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->lambda$createMediaSourceInternal$6(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object p0

    return-object p0
.end method
