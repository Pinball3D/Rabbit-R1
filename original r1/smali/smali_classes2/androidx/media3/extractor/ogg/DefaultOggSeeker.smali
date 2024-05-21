.class final Landroidx/media3/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field private static final MATCH_BYTE_RANGE:I = 0x186a0

.field private static final MATCH_RANGE:I = 0x11940

.field private static final STATE_IDLE:I = 0x4

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I = 0x0

.field private static final STATE_SKIP:I = 0x3


# instance fields
.field private end:J

.field private endGranule:J

.field private final pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

.field private final payloadEndPosition:J

.field private final payloadStartPosition:J

.field private positionBeforeSeekToEnd:J

.field private start:J

.field private startGranule:J

.field private state:I

.field private final streamReader:Landroidx/media3/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ogg/StreamReader;JJJJZ)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 78
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iput-wide p2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 90
    :goto_2
    new-instance p1, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)Landroidx/media3/extractor/ogg/StreamReader;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method

.method private getNextSeekPosition(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v2, v2, v4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 160
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget-wide v7, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    .line 161
    invoke-virtual {v2, v1, v7, v8}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    return-wide v0

    .line 163
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v7, 0x0

    .line 168
    invoke-virtual {v2, v1, v7}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 169
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-wide v7, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 171
    iget-wide v9, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v7, v9

    iget-object v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 172
    iget v2, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v9, v9, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v9, v7

    if-gtz v11, :cond_3

    const-wide/32 v11, 0x11940

    cmp-long v11, v7, v11

    if-gez v11, :cond_3

    return-wide v3

    :cond_3
    cmp-long v3, v7, v9

    if-gez v3, :cond_4

    iput-wide v5, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-object v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 179
    iget-wide v4, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_0

    .line 181
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    int-to-long v9, v2

    add-long/2addr v4, v9

    iput-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-object v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 182
    iget-wide v4, v4, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    :goto_0
    iget-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v4, v9

    const-wide/32 v11, 0x186a0

    cmp-long v4, v4, v11

    if-gez v4, :cond_5

    iput-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    return-wide v9

    :cond_5
    int-to-long v4, v2

    const-wide/16 v9, 0x1

    if-gtz v3, :cond_6

    const-wide/16 v2, 0x2

    goto :goto_1

    :cond_6
    move-wide v2, v9

    :goto_1
    mul-long/2addr v4, v2

    .line 192
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    sub-long/2addr v1, v4

    iget-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v13, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long v5, v3, v13

    mul-long/2addr v7, v5

    iget-wide v5, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    iget-wide v11, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v5, v11

    div-long/2addr v7, v5

    add-long v11, v1, v7

    sub-long v15, v3, v9

    .line 195
    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private skipToPageOfTargetGranule(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 209
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 211
    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 218
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 214
    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v1, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 215
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 216
    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 0

    .line 34
    invoke-virtual {p0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->createSeekMap()Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object p0

    return-object p0
.end method

.method public createSeekMap()Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;Landroidx/media3/extractor/ogg/DefaultOggSeeker$1;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_3

    if-ne v0, v2, :cond_0

    return-wide v3

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    return-wide v0

    :cond_2
    iput v5, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 119
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Landroidx/media3/extractor/ExtractorInput;)V

    iput v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0

    .line 99
    :cond_4
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    iput v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    return-wide v0

    .line 108
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide p0
.end method

.method readGranuleOfLastPage(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 231
    invoke-virtual {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 232
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 236
    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v1, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 237
    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 238
    iget v2, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 239
    invoke-virtual {v2, p1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v3, 0x1

    .line 241
    invoke-virtual {v2, p1, v3}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 242
    iget v2, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v3, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v3, v3, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroidx/media3/extractor/ExtractorUtil;->skipFullyQuietly(Landroidx/media3/extractor/ExtractorInput;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 247
    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0

    .line 233
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public startSeek(J)V
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    move-wide v0, p1

    .line 136
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    return-void
.end method
