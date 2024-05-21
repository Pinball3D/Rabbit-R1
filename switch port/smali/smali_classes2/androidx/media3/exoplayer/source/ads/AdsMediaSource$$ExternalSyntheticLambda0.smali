.class public final synthetic Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->lambda$prepareSourceInternal$0$androidx-media3-exoplayer-source-ads-AdsMediaSource(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;)V

    return-void
.end method
