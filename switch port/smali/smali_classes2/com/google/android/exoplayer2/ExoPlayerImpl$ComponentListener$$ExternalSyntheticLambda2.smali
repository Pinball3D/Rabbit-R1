.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onCues$2(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
