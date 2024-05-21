.class public final Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;
.super Ljava/lang/Object;
.source "AndroidMainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/IMainThreadChecker;


# static fields
.field private static final instance:Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->instance:Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;
    .locals 1

    sget-object v0, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->instance:Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    return-object v0
.end method


# virtual methods
.method public isMainThread()Z
    .locals 1

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->isMainThread(Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method public isMainThread(J)Z
    .locals 2

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainThread(Lio/sentry/protocol/SentryThread;)Z
    .locals 2

    .line 38
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->isMainThread(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainThread(Ljava/lang/Thread;)Z
    .locals 2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->isMainThread(J)Z

    move-result p0

    return p0
.end method
