.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdPrepareListener"
.end annotation


# instance fields
.field private final adUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method synthetic lambda$onPrepareComplete$0$com-google-android-exoplayer2-source-ads-AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 420
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->handlePrepareComplete(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V

    return-void
.end method

.method synthetic lambda$onPrepareError$1$com-google-android-exoplayer2-source-ads-AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 439
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->handlePrepareError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;IILjava/io/IOException;)V

    return-void
.end method

.method public onPrepareComplete(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 418
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPrepareError(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 428
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    new-instance v7, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 431
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Landroid/net/Uri;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    .line 435
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForAd(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    .line 429
    invoke-virtual {v0, v7, v3, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 437
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
