.class final Lcom/google/common/util/concurrent/AbstractScheduledService$FutureAsCancellable;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FutureAsCancellable"
.end annotation


# instance fields
.field private final delegate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$FutureAsCancellable;->delegate:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$FutureAsCancellable;->delegate:Ljava/util/concurrent/Future;

    .line 463
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$FutureAsCancellable;->delegate:Ljava/util/concurrent/Future;

    .line 468
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p0

    return p0
.end method
