.class public Landroidx/media3/exoplayer/util/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;
    }
.end annotation


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final player:Landroidx/media3/exoplayer/ExoPlayer;

.field private started:Z

.field private final textView:Landroid/widget/TextView;

.field private final updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Landroid/widget/TextView;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p2, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 55
    new-instance p1, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;-><init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;Landroidx/media3/exoplayer/util/DebugTextViewHelper$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    return-void
.end method

.method private static getColorInfoString(Landroidx/media3/common/ColorInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " colr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo;->toLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static getDecoderCountersBufferCountString(Landroidx/media3/exoplayer/DecoderCounters;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " sib:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mcdb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPixelAspectRatioString(F)Ljava/lang/String;
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " par:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "%.02f"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static getVideoFrameProcessingOffsetAverageString(JI)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    long-to-double p0, p0

    int-to-double v0, p2

    div-double/2addr p0, v0

    double-to-long p0, p0

    .line 207
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getAudioString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 155
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getAudioFormat()Landroidx/media3/common/Format;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 156
    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->getAudioDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-static {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getDecoderCountersBufferCountString(Landroidx/media3/exoplayer/DecoderCounters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method protected getDebugString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getPlayerStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getAudioString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPlayerStateString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 104
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    const-string v0, "ended"

    goto :goto_0

    :cond_1
    const-string v0, "ready"

    goto :goto_0

    :cond_2
    const-string v0, "buffering"

    goto :goto_0

    :cond_3
    const-string v0, "idle"

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 123
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "playWhenReady:%s playbackState:%s item:%s"

    .line 121
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 129
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 130
    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 142
    invoke-static {v2}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getColorInfoString(Landroidx/media3/common/ColorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 143
    invoke-static {v0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getPixelAspectRatioString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-static {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getDecoderCountersBufferCountString(Landroidx/media3/exoplayer/DecoderCounters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vfpo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p0, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    .line 146
    invoke-static {v1, v2, p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getVideoFrameProcessingOffsetAverageString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final start()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->started:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    .line 67
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 68
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->started:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->started:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    .line 80
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final updateAndPost()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updater:Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;

    const-wide/16 v1, 0x3e8

    .line 91
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
