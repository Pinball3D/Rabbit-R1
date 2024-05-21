.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;->f$1:Lcom/google/android/exoplayer2/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;->f$1:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->lambda$setPlaylistMetadata$14(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
