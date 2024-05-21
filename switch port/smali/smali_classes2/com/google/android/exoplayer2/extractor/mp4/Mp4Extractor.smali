.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 189
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 191
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 192
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 193
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 195
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 197
    sget-object p1, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-array p1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    return-void
.end method

.method private static brandToFileType(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .locals 15

    .line 802
    array-length v0, p0

    new-array v0, v0, [[J

    .line 803
    array-length v1, p0

    new-array v1, v1, [I

    .line 804
    array-length v2, p0

    new-array v2, v2, [J

    .line 805
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    move v5, v4

    .line 806
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 807
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 808
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v6, v6, v4

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    move v7, v4

    .line 812
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    move v11, v4

    .line 815
    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    .line 816
    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    move v10, v11

    move-wide v8, v12

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 821
    :cond_2
    aget v8, v1, v10

    .line 822
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 823
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 824
    aput v8, v1, v10

    .line 825
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 826
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 829
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I
    .locals 2

    .line 867
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 870
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v4, -0x1

    move v6, v4

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 720
    array-length v5, v3

    if-ge v7, v5, :cond_7

    .line 721
    aget-object v3, v3, v7

    .line 722
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 723
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v5, v1, :cond_0

    goto :goto_3

    .line 726
    :cond_0
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v1, v1, v5

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 727
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    aget-object v3, v3, v7

    aget-wide v16, v3, v5

    sub-long v1, v1, p1

    const-wide/16 v18, 0x0

    cmp-long v3, v1, v18

    if-ltz v3, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v3, v1, v18

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v3, v13, :cond_5

    cmp-long v5, v1, v14

    if-gez v5, :cond_5

    :cond_4
    move-wide v14, v1

    move v13, v3

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v1, v16, v8

    if-gez v1, :cond_6

    move v10, v3

    move v4, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v8, v1

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v0, 0xa00000

    add-long/2addr v8, v0

    cmp-long v0, v11, v8

    if-gez v0, :cond_9

    :cond_8
    move v4, v6

    :cond_9
    return v4
.end method

.method static synthetic lambda$processMoovAtom$1(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 67
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .locals 0

    .line 847
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 851
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p0, p0, p1

    .line 852
    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    .line 775
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 776
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 777
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 778
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 779
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method private processAtomEnded(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 470
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 472
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 474
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 477
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 478
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq p1, v1, :cond_3

    .line 482
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_3
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .locals 5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 765
    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 767
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 768
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 769
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 770
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_1
    return-void
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x8

    .line 882
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 883
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 884
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    .line 888
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 889
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 890
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 490
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    move v7, v11

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 496
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    const v2, 0x75647461

    .line 497
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 500
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Landroid/util/Pair;

    move-result-object v2

    .line 501
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 502
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_1

    .line 504
    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_1
    move-object v14, v2

    move-object v15, v3

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const v2, 0x6d657461

    .line 508
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 510
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    move v6, v11

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 514
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    .line 515
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 524
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_4
    if-ge v6, v2, :cond_c

    .line 526
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 527
    iget v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v3, :cond_5

    move-object/from16 v18, v1

    move/from16 v19, v2

    const/4 v1, -0x1

    const/16 v16, 0x1

    goto/16 :goto_9

    .line 530
    :cond_5
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 532
    iget-wide v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    iget-wide v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    goto :goto_5

    :cond_6
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 533
    :goto_5
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 534
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-wide/from16 v20, v10

    iget v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 535
    invoke-interface {v5, v6, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v4, v3, v8, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 538
    iget-object v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v10, "audio/true-hd"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 540
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v5, v5, 0x10

    goto :goto_6

    .line 544
    :cond_7
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v5, v5, 0x1e

    .line 547
    :goto_6
    iget-object v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 548
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 549
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_8

    const-wide/16 v22, 0x0

    cmp-long v5, v1, v22

    if-lez v5, :cond_8

    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v11, 0x1

    if-le v5, v11, :cond_8

    .line 552
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v5, v5

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    div-float/2addr v5, v1

    .line 553
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    .line 556
    :cond_8
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    invoke-static {v1, v12, v10}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 557
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    new-array v5, v2, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v2, 0x0

    aput-object v14, v5, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 563
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v2, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_7
    const/16 v16, 0x1

    aput-object v2, v5, v16

    .line 557
    invoke-static {v1, v15, v13, v10, v5}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatMetadata(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$Builder;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 564
    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 566
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/4 v1, -0x1

    if-ne v7, v1, :cond_b

    .line 567
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move v7, v2

    goto :goto_8

    :cond_a
    const/4 v1, -0x1

    .line 569
    :cond_b
    :goto_8
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v20

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_c
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 573
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 574
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 576
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 577
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method private processUnparsedAtom(J)V
    .locals 13

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    .line 787
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v1

    add-long v9, p1, v5

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    int-to-long v1, v1

    sub-long v11, v5, v1

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_0
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 363
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    return v3

    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 368
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 369
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 370
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 376
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 378
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 382
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    if-eqz v0, :cond_3

    .line 386
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 390
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 399
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_5

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 404
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 406
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_3

    .line 409
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 411
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v2, :cond_8

    move p1, v1

    goto :goto_1

    :cond_8
    move p1, v3

    .line 414
    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v3

    .line 415
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 416
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 417
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_3

    .line 421
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_3
    return v1

    :cond_b
    const-string p0, "Atom size less than header length (unsupported)."

    .line 395
    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 437
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 441
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v7, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    .line 443
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 444
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 445
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {p2, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 450
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_2
    :goto_0
    move p1, v6

    goto :goto_1

    .line 452
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    move p1, v5

    .line 456
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 596
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 598
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 603
    aget-object v4, v4, v6

    .line 604
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 605
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 606
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v6, v15

    .line 607
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v8, v8, v15

    .line 608
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    sub-long v2, v6, v2

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    const/4 v12, 0x1

    if-ltz v9, :cond_c

    const-wide/32 v9, 0x40000

    cmp-long v9, v2, v9

    if-ltz v9, :cond_1

    move-object/from16 v0, p2

    move/from16 v18, v12

    goto/16 :goto_3

    .line 614
    :cond_1
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v6, v12, :cond_2

    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    add-int/lit8 v8, v8, -0x8

    :cond_2
    long-to-int v2, v2

    .line 620
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 621
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 624
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 625
    aput-byte v11, v2, v11

    .line 626
    aput-byte v11, v2, v12

    const/4 v6, 0x2

    .line 627
    aput-byte v11, v2, v6

    .line 628
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 629
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v9, 0x4

    rsub-int/lit8 v7, v7, 0x4

    :goto_0
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v10, v8, :cond_9

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v10, :cond_4

    .line 636
    invoke-interface {v1, v2, v7, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v6

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 638
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 639
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    if-ltz v10, :cond_3

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 646
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 647
    invoke-interface {v14, v10, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v8, v7

    goto :goto_0

    :cond_3
    const-string v0, "Invalid NAL length"

    .line 641
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 652
    :cond_4
    invoke-interface {v14, v1, v10, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v10

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v9, 0x4

    goto :goto_0

    .line 659
    :cond_5
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 661
    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x7

    .line 662
    invoke-interface {v14, v2, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_6
    add-int/lit8 v8, v8, 0x7

    goto :goto_1

    :cond_7
    if-eqz v13, :cond_8

    .line 667
    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    :cond_8
    :goto_1
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v8, :cond_9

    sub-int v2, v8, v2

    .line 671
    invoke-interface {v14, v1, v2, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v2

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    :cond_9
    move v1, v8

    .line 678
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v2, v15

    .line 679
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v15

    if-eqz v13, :cond_b

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v13

    move-object v7, v14

    move v10, v2

    move v2, v11

    move v11, v1

    move/from16 v18, v12

    move/from16 v12, v16

    move-object v1, v13

    move-object/from16 v13, v17

    .line 681
    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v15, v15, 0x1

    .line 683
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v15, v6, :cond_a

    .line 684
    invoke-virtual {v1, v14, v3}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_a
    move v3, v2

    goto :goto_2

    :cond_b
    move v3, v11

    move/from16 v18, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide v7, v8

    move v9, v2

    move v10, v1

    .line 687
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 691
    :goto_2
    iget v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    return v3

    :cond_c
    move/from16 v18, v12

    move-object/from16 v0, p2

    .line 611
    :goto_3
    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v18
.end method

.method private readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 462
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 463
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_0
    return p1
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .locals 2

    .line 752
    iget-object p0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 753
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 756
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    .line 758
    :cond_0
    iput v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 1

    const/4 v0, -0x1

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object p0

    return-object p0
.end method

.method public getSeekPoints(JI)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 298
    array-length v5, v4

    if-nez v5, :cond_0

    .line 299
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v9, -0x1

    if-eq v6, v5, :cond_4

    .line 311
    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 312
    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 314
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    .line 316
    :cond_2
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v11, v11, v6

    .line 318
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v13, v13, v6

    cmp-long v15, v11, v1

    if-gez v15, :cond_3

    .line 319
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v6, v15, :cond_3

    .line 320
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    .line 322
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v9, v2, v1

    .line 323
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v1, v2, v1

    goto :goto_1

    :cond_3
    move-wide v1, v9

    move-wide v9, v7

    :goto_1
    move-wide/from16 v16, v1

    move-wide v1, v11

    move-wide/from16 v11, v16

    goto :goto_2

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    move-wide v11, v9

    move-wide v9, v7

    :goto_2
    if-ne v3, v5, :cond_6

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 333
    array-length v5, v4

    if-ge v3, v5, :cond_6

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v3, v5, :cond_5

    .line 335
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 336
    invoke-static {v4, v1, v2, v13, v14}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v13

    cmp-long v5, v9, v7

    if-eqz v5, :cond_5

    .line 338
    invoke-static {v4, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v11

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 344
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v1, v9, v7

    if-nez v1, :cond_7

    .line 346
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1

    .line 348
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v1, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 349
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v2
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 263
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 259
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 254
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 249
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 226
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->reset()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 227
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 230
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    .line 231
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 232
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_2

    .line 233
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 203
    :goto_0
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
