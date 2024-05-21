.class public final Lio/sentry/transport/ReusableCountLatch;
.super Ljava/lang/Object;
.source "ReusableCountLatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/ReusableCountLatch$Sync;
    }
.end annotation


# instance fields
.field private final sync:Lio/sentry/transport/ReusableCountLatch$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lio/sentry/transport/ReusableCountLatch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 66
    new-instance v0, Lio/sentry/transport/ReusableCountLatch$Sync;

    invoke-direct {v0, p1}, Lio/sentry/transport/ReusableCountLatch$Sync;-><init>(I)V

    iput-object v0, p0, Lio/sentry/transport/ReusableCountLatch;->sync:Lio/sentry/transport/ReusableCountLatch$Sync;

    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "negative initial count \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' is not allowed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decrement()V
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/ReusableCountLatch;->sync:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 92
    invoke-static {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->access$100(Lio/sentry/transport/ReusableCountLatch$Sync;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/ReusableCountLatch;->sync:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 80
    invoke-static {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->access$000(Lio/sentry/transport/ReusableCountLatch$Sync;)I

    move-result p0

    return p0
.end method

.method public increment()V
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/ReusableCountLatch;->sync:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 100
    invoke-static {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->access$200(Lio/sentry/transport/ReusableCountLatch$Sync;)V

    return-void
.end method

.method public waitTillZero()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/transport/ReusableCountLatch;->sync:Lio/sentry/transport/ReusableCountLatch$Sync;

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, v0}, Lio/sentry/transport/ReusableCountLatch$Sync;->acquireSharedInterruptibly(I)V

    return-void
.end method

.method public waitTillZero(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/transport/ReusableCountLatch;->sync:Lio/sentry/transport/ReusableCountLatch$Sync;

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/transport/ReusableCountLatch$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result p0

    return p0
.end method
