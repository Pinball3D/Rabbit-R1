.class public final synthetic Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final getDirPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/AndroidOptionsInitializer$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p0}, Lio/sentry/android/core/AndroidOptionsInitializer;->lambda$installDefaultIntegrations$2(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
