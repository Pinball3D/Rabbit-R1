.class public final synthetic Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/cache/AndroidEnvelopeCache;

.field public final synthetic f$1:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/cache/AndroidEnvelopeCache;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/cache/AndroidEnvelopeCache;

    iput-object p2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/cache/AndroidEnvelopeCache;

    iget-object p0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    check-cast p1, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    invoke-virtual {v0, p0, p1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lambda$store$0$io-sentry-android-core-cache-AndroidEnvelopeCache(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;)V

    return-void
.end method
