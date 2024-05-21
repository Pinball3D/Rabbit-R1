.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateForPendingOperation$61$androidx-media3-common-SimpleBasePlayer(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
