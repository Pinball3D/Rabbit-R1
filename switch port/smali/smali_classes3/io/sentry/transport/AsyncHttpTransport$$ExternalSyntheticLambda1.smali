.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-static {p0, p1}, Lio/sentry/transport/AsyncHttpTransport;->lambda$markHintWhenSendingFailed$3(ZLio/sentry/hints/Retryable;)V

    return-void
.end method
