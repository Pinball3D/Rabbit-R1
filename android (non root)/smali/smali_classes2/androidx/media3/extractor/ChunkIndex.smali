.class public final Landroidx/media3/extractor/ChunkIndex;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private final durationUs:J

.field public final durationsUs:[J

.field public final length:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timesUs:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    iput-object p2, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    iput-object p3, p0, Landroidx/media3/extractor/ChunkIndex;->durationsUs:[J

    iput-object p4, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    .line 54
    array-length p1, p1

    iput p1, p0, Landroidx/media3/extractor/ChunkIndex;->length:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 56
    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/extractor/ChunkIndex;->durationUs:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/ChunkIndex;->durationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getChunkIndex(J)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    const/4 v0, 0x1

    .line 69
    invoke-static {p0, p1, p2, v0, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p0

    return p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ChunkIndex;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 6

    .line 86
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    .line 87
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    iget-object v2, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v4, v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 88
    iget-wide v2, v1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v2, p1

    if-gez p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/ChunkIndex;->length:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    iget-object p2, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v2, p2, v0

    iget-object p0, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v4, p0, v0

    invoke-direct {p1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 92
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v1, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0

    .line 89
    :cond_1
    :goto_0
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChunkIndex(length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/extractor/ChunkIndex;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    .line 102
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/extractor/ChunkIndex;->durationsUs:[J

    .line 108
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
