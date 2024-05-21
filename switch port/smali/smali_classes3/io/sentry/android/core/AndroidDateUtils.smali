.class public final Lio/sentry/android/core/AndroidDateUtils;
.super Ljava/lang/Object;
.source "AndroidDateUtils.java"


# static fields
.field private static final dateProvider:Lio/sentry/SentryDateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/android/core/SentryAndroidDateProvider;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    sput-object v0, Lio/sentry/android/core/AndroidDateUtils;->dateProvider:Lio/sentry/SentryDateProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentSentryDateTime()Lio/sentry/SentryDate;
    .locals 1

    sget-object v0, Lio/sentry/android/core/AndroidDateUtils;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 22
    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    return-object v0
.end method
