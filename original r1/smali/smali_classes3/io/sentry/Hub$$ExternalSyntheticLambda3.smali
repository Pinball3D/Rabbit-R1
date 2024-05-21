.class public final synthetic Lio/sentry/Hub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/Hub;

.field public final synthetic f$1:Lio/sentry/ISentryExecutorService;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Hub;Lio/sentry/ISentryExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Hub$$ExternalSyntheticLambda3;->f$0:Lio/sentry/Hub;

    iput-object p2, p0, Lio/sentry/Hub$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ISentryExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/Hub$$ExternalSyntheticLambda3;->f$0:Lio/sentry/Hub;

    iget-object p0, p0, Lio/sentry/Hub$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ISentryExecutorService;

    invoke-virtual {v0, p0}, Lio/sentry/Hub;->lambda$close$1$io-sentry-Hub(Lio/sentry/ISentryExecutorService;)V

    return-void
.end method
