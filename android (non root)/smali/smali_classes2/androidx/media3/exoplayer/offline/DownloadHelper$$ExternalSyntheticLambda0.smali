.class public final synthetic Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/offline/DownloadHelper;

.field public final synthetic f$1:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadHelper;Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/offline/DownloadHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/offline/DownloadHelper;

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->lambda$prepare$3$androidx-media3-exoplayer-offline-DownloadHelper(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V

    return-void
.end method
