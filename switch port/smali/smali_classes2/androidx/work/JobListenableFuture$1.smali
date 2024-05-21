.class final Landroidx/work/JobListenableFuture$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ListenableFuture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/JobListenableFuture;-><init>(Lkotlinx/coroutines/Job;Landroidx/work/impl/utils/futures/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "throwable",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/JobListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/JobListenableFuture<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/JobListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/JobListenableFuture<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/JobListenableFuture$1;->this$0:Landroidx/work/JobListenableFuture;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/work/JobListenableFuture$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Landroidx/work/JobListenableFuture;

    .line 84
    invoke-static {p0}, Landroidx/work/JobListenableFuture;->access$getUnderlying$p(Landroidx/work/JobListenableFuture;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/SettableFuture;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Landroidx/work/JobListenableFuture;

    invoke-static {p0}, Landroidx/work/JobListenableFuture;->access$getUnderlying$p(Landroidx/work/JobListenableFuture;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->cancel(Z)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/work/JobListenableFuture$1;->this$0:Landroidx/work/JobListenableFuture;

    .line 86
    invoke-static {p0}, Landroidx/work/JobListenableFuture;->access$getUnderlying$p(Landroidx/work/JobListenableFuture;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
