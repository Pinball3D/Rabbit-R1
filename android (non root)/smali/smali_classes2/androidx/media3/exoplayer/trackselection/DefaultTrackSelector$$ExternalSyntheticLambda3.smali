.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;->f$1:[I

    return-void
.end method


# virtual methods
.method public final create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;->f$1:[I

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lambda$selectVideoTrack$2(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
