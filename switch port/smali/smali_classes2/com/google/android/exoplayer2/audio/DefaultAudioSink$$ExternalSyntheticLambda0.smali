.class public final synthetic Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioTrack;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/util/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/util/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack;

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lambda$releaseAudioTrackAsync$0(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    return-void
.end method
