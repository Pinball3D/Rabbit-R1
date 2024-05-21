.class public final synthetic Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SendCachedEnvelopeIntegration;

.field public final synthetic f$1:Lio/sentry/android/core/SentryAndroidOptions;

.field public final synthetic f$2:Lio/sentry/IHub;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SendCachedEnvelopeIntegration;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IHub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    iput-object p2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p3, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    iget-object p0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/IHub;

    invoke-virtual {v0, v1, p0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->lambda$sendCachedEnvelopes$0$io-sentry-android-core-SendCachedEnvelopeIntegration(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/IHub;)V

    return-void
.end method
