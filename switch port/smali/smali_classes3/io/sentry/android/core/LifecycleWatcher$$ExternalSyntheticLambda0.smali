.class public final synthetic Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/LifecycleWatcher;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/LifecycleWatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/LifecycleWatcher;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/LifecycleWatcher;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/LifecycleWatcher;->lambda$startSession$0$io-sentry-android-core-LifecycleWatcher(Lio/sentry/IScope;)V

    return-void
.end method
