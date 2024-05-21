.class public final Lcom/google/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "InactivityTimer"


# instance fields
.field private callback:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private onBattery:Z

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/zxing/client/android/InactivityTimer;->callback:Ljava/lang/Runnable;

    .line 46
    new-instance p1, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/InactivityTimer;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer;->onBattery(Z)V

    return-void
.end method

.method private cancelCallback()V
    .locals 1

    iget-object p0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private onBattery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->onBattery:Z

    iget-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->activity()V

    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public activity()V
    .locals 3

    .line 54
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancelCallback()V

    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->onBattery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/zxing/client/android/InactivityTimer;->callback:Ljava/lang/Runnable;

    const-wide/32 v1, 0x493e0

    .line 56
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancelCallback()V

    .line 73
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->unregisterReceiver()V

    return-void
.end method

.method public start()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->registerReceiver()V

    .line 65
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->activity()V

    return-void
.end method
