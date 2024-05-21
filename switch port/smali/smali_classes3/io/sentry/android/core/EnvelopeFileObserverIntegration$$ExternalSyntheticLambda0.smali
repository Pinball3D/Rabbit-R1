.class public final synthetic Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/EnvelopeFileObserverIntegration;

.field public final synthetic f$1:Lio/sentry/IHub;

.field public final synthetic f$2:Lio/sentry/SentryOptions;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/EnvelopeFileObserverIntegration;Lio/sentry/IHub;Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/EnvelopeFileObserverIntegration;

    iput-object p2, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/IHub;

    iput-object p3, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/SentryOptions;

    iput-object p4, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/EnvelopeFileObserverIntegration;

    iget-object v1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/IHub;

    iget-object v2, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/SentryOptions;

    iget-object p0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->lambda$register$0$io-sentry-android-core-EnvelopeFileObserverIntegration(Lio/sentry/IHub;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    return-void
.end method
