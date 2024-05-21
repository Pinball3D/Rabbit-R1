.class final Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadUpdate"
.end annotation


# instance fields
.field public final download:Landroidx/media3/exoplayer/offline/Download;

.field public final downloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field public final finalException:Ljava/lang/Exception;

.field public final isRemove:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/offline/Download;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;->download:Landroidx/media3/exoplayer/offline/Download;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;->isRemove:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;->downloads:Ljava/util/List;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;->finalException:Ljava/lang/Exception;

    return-void
.end method
