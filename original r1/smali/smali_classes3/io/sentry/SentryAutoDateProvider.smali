.class public final Lio/sentry/SentryAutoDateProvider;
.super Ljava/lang/Object;
.source "SentryAutoDateProvider.java"

# interfaces
.implements Lio/sentry/SentryDateProvider;


# instance fields
.field private final dateProvider:Lio/sentry/SentryDateProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lio/sentry/SentryAutoDateProvider;->checkInstantAvailabilityAndPrecision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lio/sentry/SentryInstantDateProvider;

    invoke-direct {v0}, Lio/sentry/SentryInstantDateProvider;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryAutoDateProvider;->dateProvider:Lio/sentry/SentryDateProvider;

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lio/sentry/SentryNanotimeDateProvider;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDateProvider;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryAutoDateProvider;->dateProvider:Lio/sentry/SentryDateProvider;

    :goto_0
    return-void
.end method

.method private static checkInstantAvailabilityAndPrecision()Z
    .locals 1

    .line 33
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/sentry/util/Platform;->isJavaNinePlus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public now()Lio/sentry/SentryDate;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryAutoDateProvider;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 23
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p0

    return-object p0
.end method
