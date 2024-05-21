.class public final Lio/sentry/SentryWrapper;
.super Ljava/lang/Object;
.source "SentryWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$wrapCallable$0(Lio/sentry/IHub;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 37
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 40
    throw p0
.end method

.method static synthetic lambda$wrapSupplier$1(Lio/sentry/IHub;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 62
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 65
    throw p0
.end method

.method public static wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object v0

    .line 33
    new-instance v1, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;-><init>(Lio/sentry/IHub;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method

.method public static wrapSupplier(Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/function/Supplier<",
            "TU;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object v0

    .line 58
    new-instance v1, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IHub;Ljava/util/function/Supplier;)V

    return-object v1
.end method
