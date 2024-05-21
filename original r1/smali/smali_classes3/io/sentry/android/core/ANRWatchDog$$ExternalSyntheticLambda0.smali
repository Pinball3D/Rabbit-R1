.class public final synthetic Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ANRWatchDog;

.field public final synthetic f$1:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ANRWatchDog;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/ANRWatchDog;

    iput-object p2, p0, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;->f$1:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/ANRWatchDog;

    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;->f$1:Lio/sentry/transport/ICurrentDateProvider;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/ANRWatchDog;->lambda$new$1$io-sentry-android-core-ANRWatchDog(Lio/sentry/transport/ICurrentDateProvider;)V

    return-void
.end method
