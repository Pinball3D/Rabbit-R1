.class synthetic Lio/sentry/android/core/AndroidLogger$1;
.super Ljava/lang/Object;
.source "AndroidLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AndroidLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$sentry$SentryLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    invoke-static {}, Lio/sentry/SentryLevel;->values()[Lio/sentry/SentryLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    :try_start_0
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
