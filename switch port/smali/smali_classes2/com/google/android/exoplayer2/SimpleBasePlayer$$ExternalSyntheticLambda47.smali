.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/PlaybackParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;->f$1:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;->f$1:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->lambda$setPlaybackParameters$10(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
