.class public interface abstract Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFrameProcessingEnded()V
.end method

.method public abstract onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V
.end method

.method public abstract onOutputFrameAvailable(J)V
.end method

.method public abstract onOutputSizeChanged(II)V
.end method
