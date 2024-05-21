.class Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Lcom/google/android/exoplayer2/extractor/ChunkIndex;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field final synthetic val$representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$trackType:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork()Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$trackType:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 244
    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->doWork()Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object p0

    return-object p0
.end method
