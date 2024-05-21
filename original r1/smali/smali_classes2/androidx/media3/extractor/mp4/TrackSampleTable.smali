.class final Landroidx/media3/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# instance fields
.field public final durationUs:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J

.field public final track:Landroidx/media3/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 51
    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 52
    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iput-object p3, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iput p4, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    iput-object p5, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iput-object p6, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iput-wide p7, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 61
    array-length p1, p2

    iput p1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 62
    array-length p0, p6

    if-lez p0, :cond_3

    .line 63
    array-length p0, p6

    sub-int/2addr p0, v3

    aget p1, p6, p0

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    aput p1, p6, p0

    :cond_3
    return-void
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-static {v0, p1, p2, v2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    .line 79
    aget p2, p2, p1

    and-int/2addr p2, v2

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-static {v0, p1, p2, v2, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    :goto_0
    iget-object p2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 95
    array-length p2, p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    .line 96
    aget p2, p2, p1

    and-int/2addr p2, v2

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
