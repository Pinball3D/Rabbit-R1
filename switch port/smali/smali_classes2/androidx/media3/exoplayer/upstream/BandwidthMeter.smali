.class public interface abstract Landroidx/media3/exoplayer/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public getTimeToFirstByteEstimateUs()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public abstract getTransferListener()Landroidx/media3/datasource/TransferListener;
.end method

.method public abstract removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
.end method
