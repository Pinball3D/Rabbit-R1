.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->lambda$onPrepareComplete$0$com-google-android-exoplayer2-source-ads-AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
