.class Landroidx/media3/exoplayer/offline/SegmentDownloader$1;
.super Landroidx/media3/common/util/RunnableFutureTask;
.source "SegmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "TM;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/offline/SegmentDownloader;

.field final synthetic val$dataSource:Landroidx/media3/datasource/DataSource;

.field final synthetic val$dataSpec:Landroidx/media3/datasource/DataSpec;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->this$0:Landroidx/media3/exoplayer/offline/SegmentDownloader;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSource:Landroidx/media3/datasource/DataSource;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 339
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork()Landroidx/media3/exoplayer/offline/FilterableManifest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSource:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->this$0:Landroidx/media3/exoplayer/offline/SegmentDownloader;

    .line 342
    invoke-static {v1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->access$000(Landroidx/media3/exoplayer/offline/SegmentDownloader;)Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, v2}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->load(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/DataSpec;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/offline/FilterableManifest;

    return-object p0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->doWork()Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object p0

    return-object p0
.end method
