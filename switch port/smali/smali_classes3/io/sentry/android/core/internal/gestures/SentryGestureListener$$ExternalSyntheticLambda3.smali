.class public final synthetic Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

.field public final synthetic f$1:Lio/sentry/IScope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/IScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;->f$1:Lio/sentry/IScope;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/ITransaction;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;->f$1:Lio/sentry/IScope;

    invoke-virtual {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->lambda$clearScope$2$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method
