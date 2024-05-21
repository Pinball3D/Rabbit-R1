.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer;

    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$3:I

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->lambda$moveMediaItems$4$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;III)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
