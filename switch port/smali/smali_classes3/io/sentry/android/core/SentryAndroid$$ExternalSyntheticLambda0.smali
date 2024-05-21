.class public final synthetic Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# instance fields
.field public final synthetic f$0:Lio/sentry/ILogger;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lio/sentry/Sentry$OptionsConfiguration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ILogger;

    iput-object p2, p0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;->f$2:Lio/sentry/Sentry$OptionsConfiguration;

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ILogger;

    iget-object v1, p0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;->f$2:Lio/sentry/Sentry$OptionsConfiguration;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, p0, p1}, Lio/sentry/android/core/SentryAndroid;->lambda$init$1(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
