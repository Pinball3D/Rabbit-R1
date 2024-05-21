.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTimestampV19"
.end annotation


# instance fields
.field private final audioTimestamp:Landroid/media/AudioTimestamp;

.field private final audioTrack:Landroid/media/AudioTrack;

.field private lastTimestampPositionFrames:J

.field private lastTimestampRawPositionFrames:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->audioTrack:Landroid/media/AudioTrack;

    .line 285
    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public getTimestampPositionFrames()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    .line 310
    iget-wide v0, p0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public maybeUpdateTimestamp()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    .line 295
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    .line 297
    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampRawPositionFrames:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    :cond_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampRawPositionFrames:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->rawTimestampFramePositionWrapCount:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->lastTimestampPositionFrames:J

    :cond_1
    return v0
.end method
