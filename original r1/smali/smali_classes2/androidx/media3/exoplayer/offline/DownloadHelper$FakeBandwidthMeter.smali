.class final Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/BandwidthMeter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeBandwidthMeter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V
    .locals 0

    .line 1045
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    return-void
.end method

.method public getBitrateEstimate()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransferListener()Landroidx/media3/datasource/TransferListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    return-void
.end method
