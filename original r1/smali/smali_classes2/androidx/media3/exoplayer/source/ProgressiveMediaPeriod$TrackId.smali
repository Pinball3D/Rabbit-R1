.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackId"
.end annotation


# instance fields
.field public final id:I

.field public final isIcyTrack:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1135
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    .line 1136
    iget v3, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    add-int/2addr v0, p0

    return v0
.end method
