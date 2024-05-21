.class public final synthetic Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast p1, Landroidx/media3/common/util/Clock;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setAnalyticsCollector$21(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method
