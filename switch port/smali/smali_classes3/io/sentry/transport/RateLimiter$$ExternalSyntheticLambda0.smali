.class public final synthetic Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda0;
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

    check-cast p1, Lio/sentry/hints/SubmissionResult;

    invoke-static {p1}, Lio/sentry/transport/RateLimiter;->lambda$markHintWhenSendingFailed$0(Lio/sentry/hints/SubmissionResult;)V

    return-void
.end method
