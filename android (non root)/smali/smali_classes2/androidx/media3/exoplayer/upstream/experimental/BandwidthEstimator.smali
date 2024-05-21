.class public interface abstract Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;
.super Ljava/lang/Object;
.source "BandwidthEstimator.java"


# static fields
.field public static final ESTIMATE_NOT_AVAILABLE:J = -0x8000000000000000L


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBandwidthEstimate()J
.end method

.method public abstract onBytesTransferred(Landroidx/media3/datasource/DataSource;I)V
.end method

.method public abstract onNetworkTypeChange(J)V
.end method

.method public abstract onTransferEnd(Landroidx/media3/datasource/DataSource;)V
.end method

.method public abstract onTransferInitializing(Landroidx/media3/datasource/DataSource;)V
.end method

.method public abstract onTransferStart(Landroidx/media3/datasource/DataSource;)V
.end method

.method public abstract removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
.end method
