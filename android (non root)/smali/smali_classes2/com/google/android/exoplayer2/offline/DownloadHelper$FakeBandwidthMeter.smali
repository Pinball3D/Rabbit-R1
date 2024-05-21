.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeBandwidthMeter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V
    .locals 0

    .line 1191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    return-void
.end method

.method public getBitrateEstimate()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    return-void
.end method
