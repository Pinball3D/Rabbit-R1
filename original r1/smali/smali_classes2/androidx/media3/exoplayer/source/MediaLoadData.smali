.class public final Landroidx/media3/exoplayer/source/MediaLoadData;
.super Ljava/lang/Object;
.source "MediaLoadData.java"


# instance fields
.field public final dataType:I

.field public final mediaEndTimeMs:J

.field public final mediaStartTimeMs:J

.field public final trackFormat:Landroidx/media3/common/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move v1, p1

    .line 65
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public constructor <init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->dataType:I

    iput p2, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    iput p4, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    iput-object p5, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    iput-wide p6, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    iput-wide p8, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    return-void
.end method
