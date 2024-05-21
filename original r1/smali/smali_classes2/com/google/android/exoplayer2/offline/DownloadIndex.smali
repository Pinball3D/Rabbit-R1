.class public interface abstract Lcom/google/android/exoplayer2/offline/DownloadIndex;
.super Ljava/lang/Object;
.source "DownloadIndex.java"


# virtual methods
.method public abstract getDownload(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/Download;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
