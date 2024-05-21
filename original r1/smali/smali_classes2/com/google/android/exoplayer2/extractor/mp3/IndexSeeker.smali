.class final Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# static fields
.field static final MIN_TIME_BETWEEN_POINTS_US:J = 0x186a0L


# instance fields
.field private final dataEndPosition:J

.field private durationUs:J

.field private final positions:Lcom/google/android/exoplayer2/util/LongArray;

.field private final timesUs:Lcom/google/android/exoplayer2/util/LongArray;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 39
    new-instance p1, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 40
    new-instance p2, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    const-wide/16 p5, 0x0

    .line 41
    invoke-virtual {p1, p5, p6}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 42
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    const/4 v1, 0x1

    .line 71
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I

    move-result v0

    .line 72
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 73
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    add-int/2addr v0, v1

    .line 77
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 78
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 74
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public getTimeUs(J)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    const/4 v1, 0x1

    .line 48
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTimeUsInIndex(J)Z
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public maybeAddSeekPoint(JJ)V
    .locals 1

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 94
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 95
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    return-void
.end method

.method setDurationUs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    return-void
.end method
