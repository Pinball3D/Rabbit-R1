.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryNullableConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

.field public final synthetic f$1:Lio/sentry/SentryEnvelope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/SentryEnvelope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;->f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    iput-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;->f$1:Lio/sentry/SentryEnvelope;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;->f$0:Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;->f$1:Lio/sentry/SentryEnvelope;

    invoke-virtual {v0, p0, p1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->lambda$flush$2$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V

    return-void
.end method
