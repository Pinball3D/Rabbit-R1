.class public final synthetic Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Util;->lambda$postOrRunWithCompletion$0(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
