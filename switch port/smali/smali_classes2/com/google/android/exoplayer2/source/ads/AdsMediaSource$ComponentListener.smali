.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Landroid/os/Handler;

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdPlaybackState$0$com-google-android-exoplayer2-source-ads-AdsMediaSource$ComponentListener(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 387
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method public onAdLoadError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    const/4 v0, 0x0

    .line 396
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    new-instance v6, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 399
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v1

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v6

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    const/4 p2, 0x6

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, v6, p2, p1, v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    return-void
.end method

.method public onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    .line 382
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
