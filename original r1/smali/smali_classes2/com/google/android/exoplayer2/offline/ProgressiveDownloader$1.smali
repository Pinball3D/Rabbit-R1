.class Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "ProgressiveDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->this$0:Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    .line 101
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->this$0:Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    .line 110
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->access$000(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;)Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cancel()V

    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->doWork()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->this$0:Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    .line 104
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->access$000(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;)Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache()V

    const/4 p0, 0x0

    return-object p0
.end method
