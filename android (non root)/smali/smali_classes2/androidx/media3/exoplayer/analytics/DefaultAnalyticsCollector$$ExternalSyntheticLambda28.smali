.class public final synthetic Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

.field public final synthetic f$1:Landroidx/media3/common/Player;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$0:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$1:Landroidx/media3/common/Player;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$0:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$1:Landroidx/media3/common/Player;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->lambda$setPlayer$1$androidx-media3-exoplayer-analytics-DefaultAnalyticsCollector(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method
