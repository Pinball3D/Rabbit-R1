.class abstract Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final format:Landroidx/media3/common/Format;

.field public final rendererIndex:I

.field public final trackGroup:Landroidx/media3/common/TrackGroup;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;I)V
    .locals 0

    .line 3185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Landroidx/media3/common/TrackGroup;

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    .line 3189
    invoke-virtual {p2, p3}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public abstract getSelectionEligibility()I
.end method

.method public abstract isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
