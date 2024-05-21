.class public final synthetic Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;
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

    check-cast p1, Lio/sentry/hints/Resettable;

    invoke-static {p1}, Lio/sentry/OutboxSender;->lambda$processEnvelope$1(Lio/sentry/hints/Resettable;)V

    return-void
.end method
