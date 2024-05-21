.class public Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ac3BufferMultiplicationFactor:I

.field private maxPcmBufferDurationUs:I

.field private minPcmBufferDurationUs:I

.field private offloadBufferDurationUs:I

.field private passthroughBufferDurationUs:I

.field private pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d090

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    const v1, 0xb71b0

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    const/4 v1, 0x4

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    const v0, 0x2faf080

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    return p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    return p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .locals 0

    .line 62
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;
    .locals 1

    .line 143
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V

    return-object v0
.end method

.method public setAc3BufferMultiplicationFactor(I)Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return-object p0
.end method

.method public setMaxPcmBufferDurationUs(I)Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    return-object p0
.end method

.method public setMinPcmBufferDurationUs(I)Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    return-object p0
.end method

.method public setOffloadBufferDurationUs(I)Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    return-object p0
.end method

.method public setPassthroughBufferDurationUs(I)Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    return-object p0
.end method

.method public setPcmBufferMultiplicationFactor(I)Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    return-object p0
.end method
