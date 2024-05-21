.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Landroidx/media3/common/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    .line 138
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    .line 147
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-void
.end method


# virtual methods
.method public bridge synthetic addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 535
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 731
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 542
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clearOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 563
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 556
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public clearSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 697
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public clearSelectionOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 724
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 711
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearVideoSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearVideoSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clearVideoSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 169
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearVideoSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearViewportSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearViewportSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clearViewportSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 293
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearViewportSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method protected bridge synthetic set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 153
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedChannelCountAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 423
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedChannelCountAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 439
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 391
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowAudioMixedSampleRateAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 407
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedSampleRateAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowMultipleAdaptiveSelections(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 634
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowMultipleAdaptiveSelections(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowVideoMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 277
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowVideoMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 246
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setAllowVideoNonSeamlessAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 261
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoNonSeamlessAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setDisabledTextTrackSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 512
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTextTrackSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 575
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setExceedAudioConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 375
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedAudioConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setExceedRendererCapabilitiesIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 601
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setExceedVideoConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 228
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 528
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceLowestBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceLowestBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setForceLowestBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 521
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceLowestBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setIgnoredTextSelectionFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setIgnoredTextSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setIgnoredTextSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 493
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setIgnoredTextSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAudioBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 360
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioChannelCount(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioChannelCount(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAudioChannelCount(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 353
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioChannelCount(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 191
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 184
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 177
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSizeSd()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSizeSd()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoSizeSd()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 162
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSizeSd()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 213
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 206
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 199
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 549
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 332
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 339
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 447
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 454
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredAudioRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 346
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 471
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 464
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 478
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredTextRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 485
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 308
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 315
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredVideoRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 323
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 650
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setSelectUndeterminedTextLanguage(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 501
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 682
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setTrackTypeDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTrackTypeDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 582
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public setTunnelingEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 621
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSize(IIZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setViewportSize(IIZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 301
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSize(IIZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 286
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    return-object p0
.end method
