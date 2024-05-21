.class public interface abstract Lcom/google/android/exoplayer2/util/FrameProcessor;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;,
        Lcom/google/android/exoplayer2/util/FrameProcessor$Factory;
    }
.end annotation


# static fields
.field public static final DROP_OUTPUT_FRAME:J = -0x2L

.field public static final RELEASE_OUTPUT_FRAME_IMMEDIATELY:J = -0x1L


# virtual methods
.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract getPendingInputFrameCount()I
.end method

.method public abstract registerInputFrame()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputFrame(J)V
.end method

.method public abstract setInputFrameInfo(Lcom/google/android/exoplayer2/util/FrameInfo;)V
.end method

.method public abstract setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V
.end method

.method public abstract signalEndOfInput()V
.end method
