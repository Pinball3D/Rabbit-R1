.class public final synthetic Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$2:Landroidx/media3/exoplayer/drm/DrmSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;->f$2:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda4;->f$2:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;)V

    return-void
.end method
