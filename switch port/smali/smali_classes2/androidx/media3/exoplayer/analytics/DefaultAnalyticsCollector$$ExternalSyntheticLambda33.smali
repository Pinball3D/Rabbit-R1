.class public final synthetic Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$3:Ljava/io/IOException;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$1:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$2:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput-object p4, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$3:Ljava/io/IOException;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$1:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$2:Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$3:Ljava/io/IOException;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$4:Z

    move-object v5, p1

    check-cast v5, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->lambda$onLoadError$26(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
