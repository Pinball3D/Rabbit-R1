.class public final synthetic Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$0:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lambda$selectTextTrack$4(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
