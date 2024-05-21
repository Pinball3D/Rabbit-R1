.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->lambda$flush$3(Lio/sentry/hints/Retryable;)V

    return-void
.end method
