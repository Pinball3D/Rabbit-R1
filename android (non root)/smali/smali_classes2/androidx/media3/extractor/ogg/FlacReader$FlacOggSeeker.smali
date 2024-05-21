.class final Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

.field private streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iput-object p2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method


# virtual methods
.method public createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 158
    new-instance v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-wide v2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/FlacSeekTableSeekMap;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V

    return-object v0
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public setFirstFrameOffset(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public startSeek(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 148
    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    const/4 v1, 0x1

    .line 150
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    .line 152
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method
