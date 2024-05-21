.class public final Landroidx/media3/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "FlacSeekTableSeekMap.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private final firstFrameOffset:J

.field private final flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iput-wide p2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    return-void
.end method

.method private getSeekPoint(JJ)Landroidx/media3/extractor/SeekPoint;
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 81
    iget v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    add-long/2addr v0, p3

    .line 83
    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 51
    invoke-virtual {p0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 9

    iget-object v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 56
    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 57
    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    iget-object v1, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 58
    iget-object v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v1, v1, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    iget-object v2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 60
    invoke-virtual {v2, p1, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 62
    invoke-static {v0, v2, v3, v5, v4}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    .line 68
    :cond_0
    aget-wide v7, v0, v2

    :goto_0
    if-ne v2, v6, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    aget-wide v3, v1, v2

    .line 70
    :goto_1
    invoke-direct {p0, v7, v8, v3, v4}, Landroidx/media3/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Landroidx/media3/extractor/SeekPoint;

    move-result-object v3

    .line 71
    iget-wide v6, v3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_3

    array-length p1, v0

    sub-int/2addr p1, v5

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v5

    .line 74
    aget-wide p1, v0, v2

    aget-wide v0, v1, v2

    .line 75
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Landroidx/media3/extractor/SeekPoint;

    move-result-object p0

    .line 76
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v3, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p1

    .line 72
    :cond_3
    :goto_2
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
