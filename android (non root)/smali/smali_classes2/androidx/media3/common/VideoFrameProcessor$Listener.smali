.class public interface abstract Landroidx/media3/common/VideoFrameProcessor$Listener;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEnded()V
.end method

.method public abstract onError(Landroidx/media3/common/VideoFrameProcessingException;)V
.end method

.method public abstract onOutputFrameAvailableForRendering(J)V
.end method

.method public abstract onOutputSizeChanged(II)V
.end method
