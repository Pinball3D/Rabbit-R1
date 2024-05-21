.class public final Lio/sentry/util/thread/MainThreadChecker;
.super Ljava/lang/Object;
.source "MainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/IMainThreadChecker;


# static fields
.field private static final instance:Lio/sentry/util/thread/MainThreadChecker;

.field private static final mainThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/util/thread/MainThreadChecker;->mainThreadId:J

    .line 18
    new-instance v0, Lio/sentry/util/thread/MainThreadChecker;

    invoke-direct {v0}, Lio/sentry/util/thread/MainThreadChecker;-><init>()V

    sput-object v0, Lio/sentry/util/thread/MainThreadChecker;->instance:Lio/sentry/util/thread/MainThreadChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/util/thread/MainThreadChecker;
    .locals 1

    sget-object v0, Lio/sentry/util/thread/MainThreadChecker;->instance:Lio/sentry/util/thread/MainThreadChecker;

    return-object v0
.end method


# virtual methods
.method public isMainThread()Z
    .locals 1

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/util/thread/MainThreadChecker;->isMainThread(Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method public isMainThread(J)Z
    .locals 2

    sget-wide v0, Lio/sentry/util/thread/MainThreadChecker;->mainThreadId:J

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

    .line 43
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/util/thread/MainThreadChecker;->isMainThread(J)Z

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

    .line 33
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/util/thread/MainThreadChecker;->isMainThread(J)Z

    move-result p0

    return p0
.end method
