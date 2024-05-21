.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field public discontinuityReason:I

.field private hasPendingChange:Z

.field public hasPlayWhenReadyChangeReason:Z

.field public operationAcks:I

.field public playWhenReadyChangeReason:I

.field public playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field public positionDiscontinuity:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/PlaybackInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    return p0
.end method


# virtual methods
.method public incrementPendingOperationAcks(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return-void
.end method

.method public setPlayWhenReadyChangeReason(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    return-void
.end method

.method public setPlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public setPositionDiscontinuity(I)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return-void
.end method
