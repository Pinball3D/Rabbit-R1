.class public final synthetic Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->lambda$onDrmSessionAcquired$61(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method
