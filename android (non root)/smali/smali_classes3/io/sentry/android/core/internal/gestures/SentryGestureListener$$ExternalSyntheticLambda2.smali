.class public final synthetic Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

.field public final synthetic f$1:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;->f$1:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;->f$1:Lio/sentry/ITransaction;

    invoke-virtual {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->lambda$startTracing$0$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/ITransaction;Lio/sentry/IScope;)V

    return-void
.end method
