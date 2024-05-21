.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public final get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->lambda$createMediaSourceInternal$6(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p0

    return-object p0
.end method
