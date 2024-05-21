.class Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStatusChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 174
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 178
    invoke-static {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$200(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V

    :cond_0
    return-void
.end method
