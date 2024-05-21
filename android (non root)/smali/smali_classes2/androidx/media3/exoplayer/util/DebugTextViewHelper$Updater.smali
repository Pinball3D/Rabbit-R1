.class final Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Updater"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;Landroidx/media3/exoplayer/util/DebugTextViewHelper$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;-><init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;)V

    return-void
.end method


# virtual methods
.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    .line 223
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    .line 217
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    .line 231
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    .line 238
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method
