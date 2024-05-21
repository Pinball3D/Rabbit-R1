.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:Z

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onSkipSilenceEnabledChanged$1(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
