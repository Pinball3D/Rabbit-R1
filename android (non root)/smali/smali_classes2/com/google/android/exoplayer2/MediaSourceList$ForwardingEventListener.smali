.class final Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private final id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

.field final synthetic this$0:Lcom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    return-void
.end method

.method private getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 728
    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$100(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    move-object v0, p2

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 734
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$200(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result p0

    .line 735
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onDownstreamFormatChanged$5$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 636
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 637
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 636
    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysLoaded$7$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 667
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRemoved$10$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 705
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRestored$9$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 693
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionAcquired$6$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;I)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 654
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 655
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 654
    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method synthetic lambda$onDrmSessionManagerError$8$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 680
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 681
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 680
    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionReleased$11$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 718
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onLoadCanceled$2$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 580
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 581
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 580
    invoke-interface {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadCompleted$1$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 563
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 564
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 563
    invoke-interface {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadError$3$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 599
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 600
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 599
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method synthetic lambda$onLoadStarted$0$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 546
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 547
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 546
    invoke-interface {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onUpstreamDiscarded$4$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 620
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 621
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 620
    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 634
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 666
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 704
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 690
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 692
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 1

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 652
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1

    .line 676
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 678
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 716
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 578
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 561
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 597
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 544
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->getEventParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 618
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
