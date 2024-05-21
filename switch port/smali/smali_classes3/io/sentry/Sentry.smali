.class public final Lio/sentry/Sentry;
.super Ljava/lang/Object;
.source "Sentry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Sentry$OptionsConfiguration;
    }
.end annotation


# static fields
.field public static final APP_START_PROFILING_CONFIG_FILE_NAME:Ljava/lang/String; = "app_start_profiling_config"

.field private static final GLOBAL_HUB_DEFAULT_MODE:Z = false

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final classCreationTimestamp:J

.field private static final currentHub:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/sentry/IHub;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile globalHubMode:Z

.field private static volatile mainHub:Lio/sentry/IHub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/sentry/Sentry;->currentHub:Ljava/lang/ThreadLocal;

    .line 50
    invoke-static {}, Lio/sentry/NoOpHub;->getInstance()Lio/sentry/NoOpHub;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    const/4 v0, 0x0

    sput-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    const-string v0, "UTF-8"

    .line 63
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/Sentry;->classCreationTimestamp:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 667
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public static addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 1

    .line 658
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public static addBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .line 676
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->addBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method public static addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 687
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static applyOptionsConfiguration(Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/SentryOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-interface {p0, p1}, Lio/sentry/Sentry$OptionsConfiguration;->configure(Lio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 199
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 200
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static bindClient(Lio/sentry/ISentryClient;)V
    .locals 1

    .line 819
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->bindClient(Lio/sentry/ISentryClient;)V

    return-void
.end method

.method public static captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 1037
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 501
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 525
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 540
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureEvent(Lio/sentry/SentryEvent;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 513
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 599
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 623
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 638
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IHub;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureException(Ljava/lang/Throwable;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 611
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->captureException(Ljava/lang/Throwable;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureMessage(Ljava/lang/String;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 550
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureMessage(Ljava/lang/String;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureMessage(Ljava/lang/String;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 562
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->captureMessage(Ljava/lang/String;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 574
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 589
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IHub;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public static captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 1

    .line 647
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->captureUserFeedback(Lio/sentry/UserFeedback;)V

    return-void
.end method

.method public static clearBreadcrumbs()V
    .locals 1

    .line 728
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->clearBreadcrumbs()V

    return-void
.end method

.method public static cloneMainHub()Lio/sentry/IHub;
    .locals 1

    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    return-object v0

    :cond_0
    sget-object v0, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    .line 97
    invoke-interface {v0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized close()V
    .locals 3

    const-class v0, Lio/sentry/Sentry;

    monitor-enter v0

    .line 487
    :try_start_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v1

    .line 488
    invoke-static {}, Lio/sentry/NoOpHub;->getInstance()Lio/sentry/NoOpHub;

    move-result-object v2

    sput-object v2, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    sget-object v2, Lio/sentry/Sentry;->currentHub:Ljava/lang/ThreadLocal;

    .line 490
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    const/4 v2, 0x0

    .line 491
    invoke-interface {v1, v2}, Lio/sentry/IHub;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static configureScope(Lio/sentry/ScopeCallback;)V
    .locals 1

    .line 810
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public static continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/TransactionContext;"
        }
    .end annotation

    .line 1012
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;

    move-result-object p0

    return-object p0
.end method

.method public static endSession()V
    .locals 1

    .line 842
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->endSession()V

    return-void
.end method

.method private static finalizePreviousSession(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V
    .locals 2

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/PreviousSessionFinalizer;

    invoke-direct {v1, p0, p1}, Lio/sentry/PreviousSessionFinalizer;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 337
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Failed to finalize previous session."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static flush(J)V
    .locals 1

    .line 832
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->flush(J)V

    return-void
.end method

.method public static getBaggage()Lio/sentry/BaggageHeader;
    .locals 1

    .line 1032
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->getBaggage()Lio/sentry/BaggageHeader;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentHub()Lio/sentry/IHub;
    .locals 3

    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    return-object v0

    :cond_0
    sget-object v0, Lio/sentry/Sentry;->currentHub:Ljava/lang/ThreadLocal;

    .line 78
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IHub;

    if-eqz v1, :cond_1

    .line 79
    instance-of v2, v1, Lio/sentry/NoOpHub;

    if-eqz v2, :cond_2

    :cond_1
    sget-object v1, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    .line 80
    invoke-interface {v1}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 776
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public static getSpan()Lio/sentry/ISpan;
    .locals 1

    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-eqz v0, :cond_0

    .line 937
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    return-object v0

    .line 940
    :cond_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    return-object v0
.end method

.method public static getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 1022
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->getTraceparent()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method private static handleAppStartProfilingConfig(Lio/sentry/SentryOptions;Lio/sentry/ISentryExecutorService;)V
    .locals 2

    .line 270
    :try_start_0
    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/Sentry$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 312
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to call the executor. App start profiling config will not be changed. Did you call Sentry.close()?"

    .line 313
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static init()V
    .locals 2

    .line 116
    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/Sentry$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/sentry/Sentry;->init(Lio/sentry/Sentry$OptionsConfiguration;Z)V

    return-void
.end method

.method public static init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/OptionsContainer<",
            "TT;>;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, p1, v0}, Lio/sentry/Sentry;->init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V

    return-void
.end method

.method public static init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryOptions;",
            ">(",
            "Lio/sentry/OptionsContainer<",
            "TT;>;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lio/sentry/OptionsContainer;->createInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryOptions;

    .line 166
    invoke-static {p1, p0}, Lio/sentry/Sentry;->applyOptionsConfiguration(Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/SentryOptions;)V

    .line 167
    invoke-static {p0, p2}, Lio/sentry/Sentry;->init(Lio/sentry/SentryOptions;Z)V

    return-void
.end method

.method public static init(Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/SentryOptions;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-static {p0, v0}, Lio/sentry/Sentry;->init(Lio/sentry/Sentry$OptionsConfiguration;Z)V

    return-void
.end method

.method public static init(Lio/sentry/Sentry$OptionsConfiguration;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/SentryOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 188
    new-instance v0, Lio/sentry/SentryOptions;

    invoke-direct {v0}, Lio/sentry/SentryOptions;-><init>()V

    .line 189
    invoke-static {p0, v0}, Lio/sentry/Sentry;->applyOptionsConfiguration(Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/SentryOptions;)V

    .line 190
    invoke-static {v0, p1}, Lio/sentry/Sentry;->init(Lio/sentry/SentryOptions;Z)V

    return-void
.end method

.method public static init(Lio/sentry/SentryOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-static {p0, v0}, Lio/sentry/Sentry;->init(Lio/sentry/SentryOptions;Z)V

    return-void
.end method

.method private static declared-synchronized init(Lio/sentry/SentryOptions;Z)V
    .locals 8

    const-class v0, Lio/sentry/Sentry;

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-static {}, Lio/sentry/Sentry;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Sentry has been already initialized. Previous configuration will be overwritten."

    new-array v5, v2, [Ljava/lang/Object;

    .line 225
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_0
    invoke-static {p0}, Lio/sentry/Sentry;->initConfigurations(Lio/sentry/SentryOptions;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 231
    monitor-exit v0

    return-void

    .line 234
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "GlobalHubMode: \'%s\'"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v1, v3, v4, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean p1, Lio/sentry/Sentry;->globalHubMode:Z

    .line 237
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p1

    .line 238
    new-instance v1, Lio/sentry/Hub;

    invoke-direct {v1, p0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;)V

    sput-object v1, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    sget-object v1, Lio/sentry/Sentry;->currentHub:Ljava/lang/ThreadLocal;

    sget-object v2, Lio/sentry/Sentry;->mainHub:Lio/sentry/IHub;

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 242
    invoke-interface {p1, v5}, Lio/sentry/IHub;->close(Z)V

    .line 246
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/ISentryExecutorService;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 247
    new-instance p1, Lio/sentry/SentryExecutorService;

    invoke-direct {p1}, Lio/sentry/SentryExecutorService;-><init>()V

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setExecutorService(Lio/sentry/ISentryExecutorService;)V

    .line 254
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Integration;

    .line 255
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lio/sentry/Integration;->register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-static {p0}, Lio/sentry/Sentry;->notifyOptionsObservers(Lio/sentry/SentryOptions;)V

    .line 260
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-static {p0, p1}, Lio/sentry/Sentry;->finalizePreviousSession(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V

    .line 262
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p1

    invoke-static {p0, p1}, Lio/sentry/Sentry;->handleAppStartProfilingConfig(Lio/sentry/SentryOptions;Lio/sentry/ISentryExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1

    .line 125
    new-instance v0, Lio/sentry/Sentry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/Sentry$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->init(Lio/sentry/Sentry$OptionsConfiguration;)V

    return-void
.end method

.method private static initConfigurations(Lio/sentry/SentryOptions;)Z
    .locals 6

    .line 368
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableExternalConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lio/sentry/config/PropertiesProviderFactory;->create()Lio/sentry/config/PropertiesProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/ExternalOptions;->from(Lio/sentry/config/PropertiesProvider;Lio/sentry/ILogger;)Lio/sentry/ExternalOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->merge(Lio/sentry/ExternalOptions;)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_c

    .line 383
    new-instance v1, Lio/sentry/Dsn;

    invoke-direct {v1, v0}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lio/sentry/NoOpLogger;

    if-eqz v1, :cond_2

    .line 388
    new-instance v0, Lio/sentry/SystemOutLogger;

    invoke-direct {v0}, Lio/sentry/SystemOutLogger;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setLogger(Lio/sentry/ILogger;)V

    .line 389
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 391
    :cond_2
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Initializing SDK with DSN: \'%s\'"

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 402
    :cond_3
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "No outbox dir path is defined in options."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 407
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 409
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v0

    .line 411
    instance-of v0, v0, Lio/sentry/transport/NoOpEnvelopeCache;

    if-eqz v0, :cond_4

    .line 412
    invoke-static {p0}, Lio/sentry/cache/EnvelopeCache;->create(Lio/sentry/SentryOptions;)Lio/sentry/cache/IEnvelopeCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V

    .line 416
    :cond_4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 419
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 424
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v3, Lio/sentry/Sentry$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lio/sentry/Sentry$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;)V

    .line 425
    invoke-interface {v0, v3}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to call the executor. Old profiles will not be deleted. Did you call Sentry.close()?"

    .line 442
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    move-result-object v0

    .line 450
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendModules()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 451
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    goto :goto_2

    .line 452
    :cond_6
    instance-of v0, v0, Lio/sentry/internal/modules/NoOpModulesLoader;

    if-eqz v0, :cond_7

    .line 453
    new-instance v0, Lio/sentry/internal/modules/CompositeModulesLoader;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/sentry/internal/modules/IModulesLoader;

    new-instance v4, Lio/sentry/internal/modules/ManifestModulesLoader;

    .line 456
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/internal/modules/ManifestModulesLoader;-><init>(Lio/sentry/ILogger;)V

    aput-object v4, v1, v2

    new-instance v2, Lio/sentry/internal/modules/ResourcesModulesLoader;

    .line 457
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-direct {v2, v4}, Lio/sentry/internal/modules/ResourcesModulesLoader;-><init>(Lio/sentry/ILogger;)V

    aput-object v2, v1, v3

    .line 455
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/sentry/internal/modules/CompositeModulesLoader;-><init>(Ljava/util/List;Lio/sentry/ILogger;)V

    .line 453
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 461
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    if-eqz v0, :cond_8

    .line 462
    new-instance v0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;-><init>(Lio/sentry/ILogger;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V

    .line 464
    :cond_8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/internal/debugmeta/IDebugMetaLoader;->loadDebugMeta()Ljava/util/List;

    move-result-object v0

    .line 465
    invoke-static {p0, v0}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyToOptions(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 467
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object v0

    .line 469
    instance-of v0, v0, Lio/sentry/util/thread/NoOpMainThreadChecker;

    if-eqz v0, :cond_9

    .line 470
    invoke-static {}, Lio/sentry/util/thread/MainThreadChecker;->getInstance()Lio/sentry/util/thread/MainThreadChecker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setMainThreadChecker(Lio/sentry/util/thread/IMainThreadChecker;)V

    .line 473
    :cond_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getPerformanceCollectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 474
    new-instance v0, Lio/sentry/JavaMemoryCollector;

    invoke-direct {v0}, Lio/sentry/JavaMemoryCollector;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 477
    :cond_a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableBackpressureHandling()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 478
    new-instance v0, Lio/sentry/backpressure/BackpressureMonitor;

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/sentry/backpressure/BackpressureMonitor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V

    .line 479
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/backpressure/IBackpressureMonitor;->start()V

    :cond_b
    return v3

    .line 378
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DSN is required. Use empty string or set enabled to false in SentryOptions to disable SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :cond_d
    :goto_3
    invoke-static {}, Lio/sentry/Sentry;->close()V

    return v2
.end method

.method public static isCrashedLastRun()Ljava/lang/Boolean;
    .locals 1

    .line 955
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->isCrashedLastRun()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 111
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isHealthy()Z
    .locals 1

    .line 823
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->isHealthy()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleAppStartProfilingConfig$2(Lio/sentry/SentryOptions;)V
    .locals 5

    .line 272
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPathWithoutDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    new-instance v1, Ljava/io/File;

    const-string v2, "app_start_profiling_config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_0
    invoke-static {v1}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 279
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Tracing is disabled and app start profiling will not start."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 285
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 290
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {p0}, Lio/sentry/Sentry;->sampleAppStartProfiling(Lio/sentry/SentryOptions;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    .line 293
    new-instance v2, Lio/sentry/SentryAppStartProfilingOptions;

    invoke-direct {v2, p0, v0}, Lio/sentry/SentryAppStartProfilingOptions;-><init>(Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V

    .line 295
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 297
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lio/sentry/Sentry;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 299
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 295
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    .line 304
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Unable to create app start profiling config file. "

    .line 305
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic lambda$init$0(Lio/sentry/SentryOptions;)V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableExternalConfiguration(Z)V

    return-void
.end method

.method static synthetic lambda$init$1(Ljava/lang/String;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 125
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$initConfigurations$4(Ljava/io/File;)V
    .locals 10

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 431
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 434
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, Lio/sentry/Sentry;->classCreationTimestamp:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 435
    invoke-static {v2}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$notifyOptionsObservers$3(Lio/sentry/SentryOptions;)V
    .locals 3

    .line 352
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOptionsObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IOptionsObserver;

    .line 353
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setRelease(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setProguardUuid(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 356
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setDist(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setEnvironment(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IOptionsObserver;->setTags(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static metrics()Lio/sentry/metrics/MetricsApi;
    .locals 1

    .line 983
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->metrics()Lio/sentry/metrics/MetricsApi;

    move-result-object v0

    return-object v0
.end method

.method private static notifyOptionsObservers(Lio/sentry/SentryOptions;)V
    .locals 3

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/Sentry$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/sentry/Sentry$$ExternalSyntheticLambda4;-><init>(Lio/sentry/SentryOptions;)V

    .line 349
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 362
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Failed to notify options observers."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static popScope()V
    .locals 1

    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-nez v0, :cond_0

    .line 791
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->popScope()V

    :cond_0
    return-void
.end method

.method public static pushScope()V
    .locals 1

    sget-boolean v0, Lio/sentry/Sentry;->globalHubMode:Z

    if-nez v0, :cond_0

    .line 783
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->pushScope()V

    :cond_0
    return-void
.end method

.method public static removeExtra(Ljava/lang/String;)V
    .locals 1

    .line 767
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public static removeTag(Ljava/lang/String;)V
    .locals 1

    .line 747
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->removeTag(Ljava/lang/String;)V

    return-void
.end method

.method public static reportFullDisplayed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    invoke-static {}, Lio/sentry/Sentry;->reportFullyDisplayed()V

    return-void
.end method

.method public static reportFullyDisplayed()V
    .locals 1

    .line 967
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->reportFullyDisplayed()V

    return-void
.end method

.method private static sampleAppStartProfiling(Lio/sentry/SentryOptions;)Lio/sentry/TracesSamplingDecision;
    .locals 3

    .line 322
    new-instance v0, Lio/sentry/TransactionContext;

    const-string v1, "app.launch"

    const-string v2, "profile"

    invoke-direct {v0, v1, v2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Lio/sentry/TransactionContext;->setForNextAppStart(Z)V

    .line 324
    new-instance v1, Lio/sentry/SamplingContext;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V

    .line 325
    new-instance v0, Lio/sentry/TracesSampler;

    invoke-direct {v0, p0}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {v0, v1}, Lio/sentry/TracesSampler;->sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object p0

    return-object p0
.end method

.method public static setCurrentHub(Lio/sentry/IHub;)V
    .locals 1

    sget-object v0, Lio/sentry/Sentry;->currentHub:Ljava/lang/ThreadLocal;

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 758
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setFingerprint(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->setFingerprint(Ljava/util/List;)V

    return-void
.end method

.method public static setLevel(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 696
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->setLevel(Lio/sentry/SentryLevel;)V

    return-void
.end method

.method public static setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 738
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTransaction(Ljava/lang/String;)V
    .locals 1

    .line 705
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->setTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public static setUser(Lio/sentry/protocol/User;)V
    .locals 1

    .line 714
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->setUser(Lio/sentry/protocol/User;)V

    return-void
.end method

.method public static startSession()V
    .locals 1

    .line 837
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->startSession()V

    return-void
.end method

.method public static startTransaction(Lio/sentry/TransactionContext;)Lio/sentry/ITransaction;
    .locals 1

    .line 900
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;)Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public static startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1

    .line 913
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;
    .locals 1

    .line 854
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/sentry/IHub;->startTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1

    .line 869
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lio/sentry/IHub;->startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public static startTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 1

    .line 887
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0, p1, p3}, Lio/sentry/IHub;->startTransaction(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p0

    .line 888
    invoke-interface {p0, p2}, Lio/sentry/ITransaction;->setDescription(Ljava/lang/String;)V

    return-object p0
.end method

.method public static traceHeaders()Lio/sentry/SentryTraceHeader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->traceHeaders()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method public static withScope(Lio/sentry/ScopeCallback;)V
    .locals 1

    .line 801
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/sentry/IHub;->withScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method
