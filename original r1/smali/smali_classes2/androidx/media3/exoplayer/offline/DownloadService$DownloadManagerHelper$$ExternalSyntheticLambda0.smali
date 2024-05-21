.class public final synthetic Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

.field public final synthetic f$1:Landroidx/media3/exoplayer/offline/DownloadService;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/offline/DownloadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/offline/DownloadService;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->lambda$attachService$0$androidx-media3-exoplayer-offline-DownloadService$DownloadManagerHelper(Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void
.end method
