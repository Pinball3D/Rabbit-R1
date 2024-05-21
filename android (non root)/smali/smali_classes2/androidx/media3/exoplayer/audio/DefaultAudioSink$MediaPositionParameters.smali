.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final audioTrackPositionUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Landroidx/media3/common/PlaybackParameters;


# direct methods
.method private constructor <init>(Landroidx/media3/common/PlaybackParameters;JJ)V
    .locals 0

    .line 1931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1921
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    return-void
.end method
