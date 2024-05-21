.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

.field private audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

.field audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private enableAudioTrackPlaybackParams:Z

.field private enableFloatOutput:Z

.field private offloadMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 232
    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Lcom/google/android/exoplayer2/audio/AudioProcessorChain;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;)I
    .locals 0

    .line 218
    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    .line 351
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public setAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object p0
.end method

.method public setAudioProcessorChain(Lcom/google/android/exoplayer2/audio/AudioProcessorChain;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    .line 271
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/AudioProcessorChain;

    return-object p0
.end method

.method public setAudioProcessors([Lcom/google/android/exoplayer2/audio/AudioProcessor;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 1

    .line 257
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioProcessorChain(Lcom/google/android/exoplayer2/audio/AudioProcessorChain;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setAudioTrackBufferSizeProvider(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return-object p0
.end method

.method public setEnableFloatOutput(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return-object p0
.end method

.method public setExperimentalAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioOffloadListener:Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    return-object p0
.end method

.method public setOffloadMode(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    return-object p0
.end method
