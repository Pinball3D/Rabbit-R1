.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$1:[I

    return-void
.end method


# virtual methods
.method public final create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->f$1:[I

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lambda$selectVideoTrack$2(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
