.class final Lio/sentry/NoOpSentryExecutorService;
.super Ljava/lang/Object;
.source "NoOpSentryExecutorService.java"

# interfaces
.implements Lio/sentry/ISentryExecutorService;


# static fields
.field private static final instance:Lio/sentry/NoOpSentryExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lio/sentry/NoOpSentryExecutorService;

    invoke-direct {v0}, Lio/sentry/NoOpSentryExecutorService;-><init>()V

    sput-object v0, Lio/sentry/NoOpSentryExecutorService;->instance:Lio/sentry/NoOpSentryExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/ISentryExecutorService;
    .locals 1

    sget-object v0, Lio/sentry/NoOpSentryExecutorService;->instance:Lio/sentry/NoOpSentryExecutorService;

    return-object v0
.end method

.method static synthetic lambda$schedule$2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$submit$0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$submit$1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close(J)V
    .locals 0

    return-void
.end method

.method public isClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 29
    new-instance p0, Ljava/util/concurrent/FutureTask;

    new-instance p1, Lio/sentry/NoOpSentryExecutorService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lio/sentry/NoOpSentryExecutorService$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 19
    new-instance p0, Ljava/util/concurrent/FutureTask;

    new-instance p1, Lio/sentry/NoOpSentryExecutorService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/sentry/NoOpSentryExecutorService$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance p0, Ljava/util/concurrent/FutureTask;

    new-instance p1, Lio/sentry/NoOpSentryExecutorService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/sentry/NoOpSentryExecutorService$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method
