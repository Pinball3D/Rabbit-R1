.class public final synthetic Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/StreamVolumeManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-static {p0}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->lambda$onReceive$0(Landroidx/media3/exoplayer/StreamVolumeManager;)V

    return-void
.end method
