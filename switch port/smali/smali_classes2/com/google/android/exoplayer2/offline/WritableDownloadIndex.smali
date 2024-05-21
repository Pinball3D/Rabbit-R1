.class public interface abstract Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;
.super Ljava/lang/Object;
.source "WritableDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadIndex;


# virtual methods
.method public abstract putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeDownload(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDownloadingStatesToQueued()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setStatesToRemoving()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setStopReason(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setStopReason(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
