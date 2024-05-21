.class public interface abstract Lcom/google/android/exoplayer2/util/FrameProcessor$Factory;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Z)Lcom/google/android/exoplayer2/util/FrameProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;",
            "Lcom/google/android/exoplayer2/util/DebugViewProvider;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Z)",
            "Lcom/google/android/exoplayer2/util/FrameProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation
.end method
