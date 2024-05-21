.class public final Lio/sentry/android/core/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lio/sentry/ILogger;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Sentry"

    .line 16
    invoke-direct {p0, v0}, Lio/sentry/android/core/AndroidLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    return-void
.end method

.method private toLogcatLevel(Lio/sentry/SentryLevel;)I
    .locals 1

    .line 74
    sget-object p0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    invoke-virtual {p1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public isEnabled(Lio/sentry/SentryLevel;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    invoke-virtual {p1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    .line 63
    invoke-static {p0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    .line 59
    invoke-static {p0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    .line 56
    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    .line 53
    invoke-static {p0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    .line 50
    invoke-static {p0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/sentry/android/core/AndroidLogger;->toLogcatLevel(Lio/sentry/SentryLevel;)I

    move-result p1

    iget-object p0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lio/sentry/android/core/AndroidLogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
