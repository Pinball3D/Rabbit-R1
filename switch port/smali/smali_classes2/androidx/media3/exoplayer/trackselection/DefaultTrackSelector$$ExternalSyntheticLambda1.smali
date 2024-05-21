.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic f$1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;->f$2:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lambda$selectAudioTrack$3$androidx-media3-exoplayer-trackselection-DefaultTrackSelector(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ZILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
