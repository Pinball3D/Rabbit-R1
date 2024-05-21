.class public final synthetic Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;

.field public final synthetic f$1:Lio/sentry/SentryOptions;

.field public final synthetic f$2:Lio/sentry/IHub;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;Lio/sentry/SentryOptions;Lio/sentry/IHub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;

    iput-object p2, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/SentryOptions;

    iput-object p3, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;

    iget-object v1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/SentryOptions;

    iget-object p0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/IHub;

    invoke-virtual {v0, v1, p0}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->lambda$sendCachedEnvelopes$0$io-sentry-SendCachedEnvelopeFireAndForgetIntegration(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V

    return-void
.end method
