.class final Lio/sentry/android/core/MainLooperHandler;
.super Ljava/lang/Object;
.source "MainLooperHandler.java"


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/MainLooperHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/sentry/android/core/MainLooperHandler;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/MainLooperHandler;->handler:Landroid/os/Handler;

    .line 23
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/MainLooperHandler;->handler:Landroid/os/Handler;

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
