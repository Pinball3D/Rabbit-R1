.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/IEnvelopeCache;

.field public final synthetic f$1:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;->f$0:Lio/sentry/cache/IEnvelopeCache;

    iput-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;->f$0:Lio/sentry/cache/IEnvelopeCache;

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ILogger;

    invoke-static {v0, p0, p1, p2}, Lio/sentry/transport/AsyncHttpTransport;->lambda$initExecutor$1(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
