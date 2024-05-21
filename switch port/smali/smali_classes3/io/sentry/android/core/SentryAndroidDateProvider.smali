.class public final Lio/sentry/android/core/SentryAndroidDateProvider;
.super Ljava/lang/Object;
.source "SentryAndroidDateProvider.java"

# interfaces
.implements Lio/sentry/SentryDateProvider;


# instance fields
.field private dateProvider:Lio/sentry/SentryDateProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/sentry/SentryNanotimeDateProvider;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDateProvider;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SentryAndroidDateProvider;->dateProvider:Lio/sentry/SentryDateProvider;

    return-void
.end method


# virtual methods
.method public now()Lio/sentry/SentryDate;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroidDateProvider;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 23
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p0

    return-object p0
.end method
