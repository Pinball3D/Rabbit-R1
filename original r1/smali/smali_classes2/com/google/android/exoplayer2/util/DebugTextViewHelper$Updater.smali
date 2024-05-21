.class final Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Updater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;Lcom/google/android/exoplayer2/util/DebugTextViewHelper$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;-><init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;)V

    return-void
.end method


# virtual methods
.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;

    .line 203
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;

    .line 224
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method
