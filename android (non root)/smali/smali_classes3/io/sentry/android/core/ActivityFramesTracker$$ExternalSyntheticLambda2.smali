.class public final synthetic Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityFramesTracker;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/ActivityFramesTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->lambda$stop$2$io-sentry-android-core-ActivityFramesTracker()V

    return-void
.end method
