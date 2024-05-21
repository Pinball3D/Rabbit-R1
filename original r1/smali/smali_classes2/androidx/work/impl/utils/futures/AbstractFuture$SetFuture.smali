.class final Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Landroidx/work/impl/utils/futures/AbstractFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/AbstractFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/futures/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/AbstractFuture<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    iput-object p2, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    .line 275
    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 279
    invoke-static {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    sget-object v1, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    iget-object v2, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    .line 281
    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    :cond_1
    return-void
.end method
