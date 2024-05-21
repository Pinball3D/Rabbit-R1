.class public final synthetic Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityFramesTracker;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityFramesTracker;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p2, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/ActivityFramesTracker;

    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lio/sentry/android/core/ActivityFramesTracker;->lambda$runSafelyOnUiThread$3$io-sentry-android-core-ActivityFramesTracker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
