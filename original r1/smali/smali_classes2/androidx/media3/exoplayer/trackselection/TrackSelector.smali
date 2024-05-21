.class public abstract Landroidx/media3/exoplayer/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private listener:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBandwidthMeter()Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 237
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    return-object p0
.end method

.method public getParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 170
    sget-object p0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public getRendererCapabilitiesListener()Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->listener:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    return-void
.end method

.method protected final invalidate()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->listener:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    if-eqz p0, :cond_0

    .line 215
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method protected final invalidateForRendererCapabilitiesChange(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->listener:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    if-eqz p0, :cond_0

    .line 227
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;->onRendererCapabilitiesChanged(Landroidx/media3/exoplayer/Renderer;)V

    :cond_0
    return-void
.end method

.method public isSetParametersSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->listener:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    return-void
.end method

.method public abstract selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public setParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method
