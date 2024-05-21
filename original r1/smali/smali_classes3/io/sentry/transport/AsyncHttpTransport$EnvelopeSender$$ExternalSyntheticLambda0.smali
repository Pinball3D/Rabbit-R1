.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

.field public final synthetic f$1:Lio/sentry/transport/TransportResult;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;->f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    iput-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;->f$1:Lio/sentry/transport/TransportResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;->f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;->f$1:Lio/sentry/transport/TransportResult;

    check-cast p1, Lio/sentry/hints/SubmissionResult;

    invoke-virtual {v0, p0, p1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->lambda$run$0$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V

    return-void
.end method
