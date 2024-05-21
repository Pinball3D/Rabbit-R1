.class final Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/StreamVolumeManager;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 220
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager;Landroidx/media3/exoplayer/StreamVolumeManager$1;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroidx/media3/exoplayer/StreamVolumeManager;)V
    .locals 0

    .line 224
    invoke-static {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->access$200(Landroidx/media3/exoplayer/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 224
    invoke-static {p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->access$100(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    new-instance p2, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
