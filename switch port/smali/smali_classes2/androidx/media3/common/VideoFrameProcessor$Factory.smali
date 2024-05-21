.class public interface abstract Landroidx/media3/common/VideoFrameProcessor$Factory;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Ljava/util/List;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/common/DebugViewProvider;",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/common/ColorInfo;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media3/common/VideoFrameProcessor$Listener;",
            ")",
            "Landroidx/media3/common/VideoFrameProcessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method
