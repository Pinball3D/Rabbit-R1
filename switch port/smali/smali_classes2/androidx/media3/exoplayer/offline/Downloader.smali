.class public interface abstract Landroidx/media3/exoplayer/offline/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract download(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract remove()V
.end method
