.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;->f$1:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;->f$1:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->lambda$seekTo$9(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
