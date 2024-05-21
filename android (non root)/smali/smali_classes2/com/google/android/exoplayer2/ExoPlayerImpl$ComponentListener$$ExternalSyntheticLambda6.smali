.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/text/CueGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/exoplayer2/text/CueGroup;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/exoplayer2/text/CueGroup;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onCues$3(Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
