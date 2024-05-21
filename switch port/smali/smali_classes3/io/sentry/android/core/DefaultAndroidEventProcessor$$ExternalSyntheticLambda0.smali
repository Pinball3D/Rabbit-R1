.class public final synthetic Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->lambda$new$0(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object p0

    return-object p0
.end method
