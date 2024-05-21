.class public Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "UncaughtExceptionHandlerIntegration.java"

# interfaces
.implements Lio/sentry/hints/SessionEnd;
.implements Lio/sentry/hints/TransactionEnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/UncaughtExceptionHandlerIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncaughtExceptionHint"
.end annotation


# instance fields
.field private final flushableEventId:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/sentry/protocol/SentryId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    .line 169
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->flushableEventId:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public isFlushable(Lio/sentry/protocol/SentryId;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->flushableEventId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 177
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/SentryId;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFlushable(Lio/sentry/protocol/SentryId;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->flushableEventId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 183
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
