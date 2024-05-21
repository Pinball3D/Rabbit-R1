.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/PlayerMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->lambda$sendMessageToTargetThread$1$com-google-android-exoplayer2-ExoPlayerImplInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-void
.end method
