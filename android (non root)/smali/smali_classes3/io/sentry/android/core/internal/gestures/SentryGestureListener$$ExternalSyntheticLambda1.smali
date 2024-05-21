.class public final synthetic Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->lambda$stopTracing$1$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;)V

    return-void
.end method
