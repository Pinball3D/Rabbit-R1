.class public final synthetic Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->lambda$releaseManagerOnHandlerThread$4$androidx-media3-exoplayer-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method
