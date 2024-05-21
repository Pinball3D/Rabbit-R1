.class public final synthetic Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableMap;

.field public final synthetic f$2:Landroidx/media3/common/Timeline;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/common/Timeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableMap;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableMap;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lambda$setAdPlaybackStates$0$androidx-media3-exoplayer-source-ads-ServerSideAdInsertionMediaSource(Lcom/google/common/collect/ImmutableMap;Landroidx/media3/common/Timeline;)V

    return-void
.end method
