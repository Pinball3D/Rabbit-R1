.class public final synthetic Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioTrack;

.field public final synthetic f$1:Landroidx/media3/common/util/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/util/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/util/ConditionVariable;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lambda$releaseAudioTrackAsync$0(Landroid/media/AudioTrack;Landroidx/media3/common/util/ConditionVariable;)V

    return-void
.end method
