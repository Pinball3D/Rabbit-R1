.class public interface abstract Lcom/google/android/exoplayer2/offline/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract remove()V
.end method
