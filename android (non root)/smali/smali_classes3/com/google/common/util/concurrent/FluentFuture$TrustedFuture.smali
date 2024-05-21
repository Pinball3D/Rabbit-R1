.class abstract Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.super Lcom/google/common/util/concurrent/FluentFuture;
.source "FluentFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AbstractFuture$Trusted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/FluentFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TrustedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/AbstractFuture$Trusted<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/google/common/util/concurrent/FluentFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/FluentFuture;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 89
    invoke-super {p0}, Lcom/google/common/util/concurrent/FluentFuture;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/FluentFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/google/common/util/concurrent/FluentFuture;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public final isDone()Z
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/google/common/util/concurrent/FluentFuture;->isDone()Z

    move-result p0

    return p0
.end method
