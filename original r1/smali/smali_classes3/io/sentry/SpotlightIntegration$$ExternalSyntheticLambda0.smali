.class public final synthetic Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/SpotlightIntegration;

.field public final synthetic f$1:Lio/sentry/SentryEnvelope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SpotlightIntegration;Lio/sentry/SentryEnvelope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SpotlightIntegration;

    iput-object p2, p0, Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/SentryEnvelope;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SpotlightIntegration;

    iget-object p0, p0, Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/SentryEnvelope;

    invoke-virtual {v0, p0}, Lio/sentry/SpotlightIntegration;->lambda$execute$0$io-sentry-SpotlightIntegration(Lio/sentry/SentryEnvelope;)V

    return-void
.end method
