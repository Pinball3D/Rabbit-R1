.class public final Landroidx/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field private static final EXIF_HEADER:J = 0x45786966L

.field private static final EXIF_ID_CODE_LENGTH:I = 0x6

.field private static final HEADER_XMP_APP1:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final IMAGE_TRACK_ID:I = 0x400

.field private static final MARKER_APP0:I = 0xffe0

.field private static final MARKER_APP1:I = 0xffe1

.field private static final MARKER_SOI:I = 0xffd8

.field private static final MARKER_SOS:I = 0xffda

.field private static final STATE_ENDED:I = 0x6

.field private static final STATE_READING_MARKER:I = 0x0

.field private static final STATE_READING_MOTION_PHOTO_VIDEO:I = 0x5

.field private static final STATE_READING_SEGMENT:I = 0x2

.field private static final STATE_READING_SEGMENT_LENGTH:I = 0x1

.field private static final STATE_SNIFFING_MOTION_PHOTO_VIDEO:I = 0x4


# instance fields
.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private marker:I

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field private mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

.field private mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

.field private mp4StartPosition:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private segmentLength:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    return-void
.end method

.method private advancePeekPositionToNextSegment(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    .line 194
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 195
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 196
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    sub-int/2addr p0, v1

    .line 197
    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method private endReadingWithImageTrack()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 272
    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->outputImageTrack([Landroidx/media3/common/Metadata$Entry;)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 273
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 274
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method private static getMotionPhotoMetadata(Ljava/lang/String;J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 312
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parse(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 316
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->getMotionPhotoMetadata(J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    move-result-object p0

    return-object p0
.end method

.method private varargs outputImageTrack([Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 280
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/ExtractorOutput;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    .line 281
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "image/jpeg"

    .line 283
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, p1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 284
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 281
    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method private peekMarker(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    .line 188
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 189
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 190
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method private readMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    .line 201
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 202
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 203
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v0, 0xffda

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_0

    :cond_1
    const v0, 0xffd0

    if-lt p1, v0, :cond_2

    const v0, 0xffd9

    if-le p1, v0, :cond_3

    :cond_2
    const v0, 0xff01

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    :cond_3
    :goto_0
    return-void
.end method

.method private readSegment(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v1, 0xffe1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 224
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 225
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {p1, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_1

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    .line 227
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroidx/media3/extractor/jpeg/JpegExtractor;->getMotionPhotoMetadata(Ljava/lang/String;J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-eqz p1, :cond_1

    .line 232
    iget-wide v0, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 237
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_1
    :goto_0
    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method private readSegmentLength(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    .line 216
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 217
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 218
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    iput v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method private sniffMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 246
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 245
    invoke-interface {p1, v0, v1, v2, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 254
    :cond_1
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 256
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 257
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    iget-object v3, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 258
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/ExtractorOutput;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    .line 257
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 259
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->startReadingMotionPhoto()V

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    :goto_0
    return-void
.end method

.method private startReadingMotionPhoto()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 267
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Metadata$Entry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->outputImageTrack([Landroidx/media3/common/Metadata$Entry;)V

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p0, 0x6

    if-ne v0, p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 166
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eq p1, v0, :cond_3

    :cond_2
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 153
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v3, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v3, v4}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 158
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {p1, v0, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 160
    iget-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_4
    return p1

    .line 144
    :cond_5
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    .line 145
    iput-wide v5, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v2

    .line 148
    :cond_6
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->sniffMotionPhotoVideo(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 141
    :cond_7
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->readSegment(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 138
    :cond_8
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->readSegmentLength(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 135
    :cond_9
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->readMarker(Landroidx/media3/extractor/ExtractorInput;)V

    return v1
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 176
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->peekMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->peekMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v1, 0xffe0

    if-ne v0, v1, :cond_1

    .line 113
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->advancePeekPositionToNextSegment(Landroidx/media3/extractor/ExtractorInput;)V

    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->peekMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    :cond_1
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v1, 0xffe1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    .line 119
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    .line 120
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 121
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 122
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
