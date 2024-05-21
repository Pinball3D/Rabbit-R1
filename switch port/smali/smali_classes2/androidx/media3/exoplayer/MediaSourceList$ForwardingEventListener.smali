.class final Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private final id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

.field final synthetic this$0:Landroidx/media3/exoplayer/MediaSourceList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    return-void
.end method

.method private getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 734
    invoke-static {v1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$100(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    move-object v0, p2

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 740
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$200(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I

    move-result p0

    .line 741
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onDownstreamFormatChanged$5$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 642
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 643
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 642
    invoke-interface {p0, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysLoaded$7$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 673
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRemoved$10$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 711
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRestored$9$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 699
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionAcquired$6$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;I)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 660
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 661
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 660
    invoke-interface {p0, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method synthetic lambda$onDrmSessionManagerError$8$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 686
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 687
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 686
    invoke-interface {p0, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionReleased$11$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 724
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onLoadCanceled$2$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 586
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 587
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 586
    invoke-interface {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadCompleted$1$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 569
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 570
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 569
    invoke-interface {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadError$3$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 605
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 606
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 605
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method synthetic lambda$onLoadStarted$0$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 552
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 552
    invoke-interface {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onUpstreamDiscarded$4$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 626
    invoke-static {p0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 627
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 626
    invoke-interface {p0, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 638
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 640
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 670
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 672
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 708
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 710
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 696
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 698
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 1

    .line 656
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 658
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1

    .line 682
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 684
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 720
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 722
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 582
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 584
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 565
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 567
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7

    .line 601
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 603
    invoke-static {p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-interface {p1, p2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 548
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 550
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 622
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    .line 624
    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
