.class public final synthetic Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-wide p2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$1:J

    iput p4, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$1:J

    iget p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$2:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->lambda$onVideoFrameProcessingOffset$20(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
