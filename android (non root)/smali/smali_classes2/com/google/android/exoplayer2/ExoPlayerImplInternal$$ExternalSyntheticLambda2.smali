.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->$r8$lambda$eLqdTe3x4bFi958pu_x4MuT3NjA(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
