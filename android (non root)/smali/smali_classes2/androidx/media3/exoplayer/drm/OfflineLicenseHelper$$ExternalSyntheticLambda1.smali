.class public final synthetic Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic f$1:Landroidx/media3/exoplayer/drm/DrmSession;

.field public final synthetic f$2:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Landroidx/media3/exoplayer/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->lambda$acquireFirstSessionOnHandlerThread$3$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Landroidx/media3/exoplayer/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method
