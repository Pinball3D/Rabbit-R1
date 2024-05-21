.class public final synthetic Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$4:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput p2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:[B

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$3:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p5, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$4:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget v1, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$2:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$3:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper$$ExternalSyntheticLambda0;->f$4:Landroidx/media3/common/Format;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->lambda$acquireFirstSessionOnHandlerThread$2$androidx-media3-exoplayer-drm-OfflineLicenseHelper(I[BLcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/Format;)V

    return-void
.end method
