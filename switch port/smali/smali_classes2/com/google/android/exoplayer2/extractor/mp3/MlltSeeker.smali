.class final Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;
.super Ljava/lang/Object;
.source "MlltSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# instance fields
.field private final durationUs:J

.field private final referencePositions:[J

.field private final referenceTimesMs:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->referencePositions:[J

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->referenceTimesMs:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->durationUs:J

    return-void
.end method

.method public static create(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;
    .locals 9

    .line 37
    iget-object v0, p2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesDeviations:[I

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 38
    new-array v2, v1, [J

    .line 39
    new-array v1, v1, [J

    const/4 v3, 0x0

    .line 40
    aput-wide p0, v2, v3

    const-wide/16 v4, 0x0

    .line 41
    aput-wide v4, v1, v3

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v0, :cond_0

    .line 45
    iget v6, p2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget-object v7, p2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesDeviations:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr p0, v6

    .line 46
    iget v6, p2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget-object v7, p2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 47
    aput-wide p0, v2, v3

    .line 48
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;-><init>([J[JJ)V

    return-object p0
.end method

.method private static linearlyInterpolate(J[J[J)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 108
    invoke-static {p2, p0, p1, v0, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    .line 109
    aget-wide v2, p2, v1

    .line 110
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    .line 112
    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    aget-wide v6, p2, v1

    .line 116
    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-double v0, p0

    long-to-double v8, v2

    sub-double/2addr v0, v8

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    :goto_0
    sub-long/2addr p2, v4

    long-to-double p2, p2

    mul-double/2addr v0, p2

    double-to-long p2, v0

    add-long/2addr p2, v4

    .line 122
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->durationUs:J

    move-wide v0, p1

    .line 75
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    .line 77
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->referenceTimesMs:[J

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->referencePositions:[J

    invoke-static {p1, p2, v0, p0}, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->linearlyInterpolate(J[J[J)Landroid/util/Pair;

    move-result-object p0

    .line 78
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    .line 79
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 80
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public getTimeUs(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->referencePositions:[J

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->referenceTimesMs:[J

    .line 86
    invoke-static {p1, p2, v0, p0}, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->linearlyInterpolate(J[J[J)Landroid/util/Pair;

    move-result-object p0

    .line 87
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
