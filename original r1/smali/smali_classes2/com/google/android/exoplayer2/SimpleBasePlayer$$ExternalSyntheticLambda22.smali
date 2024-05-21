.class public final synthetic Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;->f$0:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;->f$1:I

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->lambda$setDeviceVolume$21(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
