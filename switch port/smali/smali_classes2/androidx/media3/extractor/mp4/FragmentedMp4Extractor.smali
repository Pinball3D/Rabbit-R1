.class public Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final EMSG_FORMAT:Landroidx/media3/common/Format;

.field private static final EXTRA_TRACKS_BASE_ID:I = 0x64

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x10

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I = 0x73656967

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private final additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private atomData:Landroidx/media3/common/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private final eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 123
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 124
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;)V
    .locals 2

    const/4 v0, 0x0

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;)V
    .locals 1

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 232
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    .line 260
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    iput-object p5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 262
    new-instance p1, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 263
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 264
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object p3, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 265
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 266
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 268
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 269
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 270
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 271
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 275
    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method private static checkNonNegative(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 561
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 564
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object p0

    .line 566
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object p0
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Landroidx/media3/common/DrmInitData;"
        }
    .end annotation

    .line 1559
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1561
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 1562
    iget v5, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1564
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    :cond_0
    iget-object v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1567
    invoke-static {v4}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1569
    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1571
    :cond_1
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 1575
    :cond_4
    new-instance v1, Landroidx/media3/common/DrmInitData;

    invoke-direct {v1, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static getNextTrackBundle(Landroid/util/SparseArray;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1536
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 1538
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1539
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_2

    .line 1541
    :cond_0
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 1545
    :cond_1
    invoke-virtual {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move-object v1, v5

    move-wide v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private initExtraTracks()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v6, 0x5

    .line 599
    invoke-interface {v5, v4, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 601
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 602
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    sget-object v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    .line 603
    invoke-interface {v5, v6}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 606
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    :goto_2
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 607
    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    .line 608
    invoke-interface {v0, v4, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 609
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 610
    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static isEdtsListDurationForEntireMediaTimeline(Landroidx/media3/extractor/mp4/Track;)Z
    .locals 13

    .line 984
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    if-nez v0, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return v2

    .line 992
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v5, v0, v1

    add-long v7, v3, v5

    const-wide/32 v9, 0xf4240

    iget-wide v11, p0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 993
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 997
    iget-wide v5, p0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 76
    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private onContainerAtomRead(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 487
    iget v0, p1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 488
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 489
    :cond_0
    iget v0, p1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 490
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 491
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 492
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onEmsgLeafAtomRead(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 616
    array-length v2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    .line 619
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 621
    invoke-static {v2}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping unsupported emsg version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentedMp4Extractor"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 644
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v21, v10

    move-wide v8, v4

    goto :goto_1

    .line 631
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    iget-wide v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v13, v11, v4

    if-eqz v13, :cond_3

    add-long/2addr v11, v8

    move-wide/from16 v17, v11

    goto :goto_0

    :cond_3
    move-wide/from16 v17, v4

    .line 640
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-object/from16 v21, v10

    move-wide/from16 v24, v11

    move-wide/from16 v14, v17

    .line 658
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 660
    new-instance v1, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    move-object/from16 v19, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 661
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 662
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->encode(Landroidx/media3/extractor/metadata/emsg/EventMessage;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 663
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 666
    array-length v10, v6

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v6, v11

    .line 667
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 668
    invoke-interface {v12, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v14, v4

    if-nez v2, :cond_5

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 675
    new-instance v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v4, v8, v9, v3, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    :cond_5
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 679
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 683
    new-instance v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v14, v15, v7, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    :cond_6
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v2, :cond_7

    .line 686
    invoke-virtual {v2}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 690
    new-instance v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v14, v15, v7, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    :cond_7
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v2, :cond_8

    .line 696
    invoke-virtual {v2, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v14

    :cond_8
    iget-object v0, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 698
    array-length v2, v0

    :goto_3
    if-ge v7, v2, :cond_9

    aget-object v16, v0, v7

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v17, v14

    move/from16 v20, v1

    .line 699
    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private onLeafAtomRead(Landroidx/media3/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 475
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 476
    :cond_0
    iget v0, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    .line 477
    iget-object p1, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 478
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    iget-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 479
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/SeekMap;

    invoke-interface {p2, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    .line 481
    :cond_1
    iget p2, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const p3, 0x656d7367

    if-ne p2, p3, :cond_2

    .line 482
    iget-object p1, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Landroidx/media3/common/util/ParsableByteArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onMoofContainerAtomRead(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 570
    invoke-static {p1, v0, v1, v3, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    .line 572
    iget-object p1, p1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 574
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 576
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Landroidx/media3/common/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 581
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 583
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v0, v5, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput-wide v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_3
    return-void
.end method

.method private onMoovContainerAtomRead(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Unexpected moov box."

    .line 497
    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 499
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 502
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 503
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 505
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    .line 507
    iget-object v8, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 508
    iget v9, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_1

    .line 509
    iget-object v8, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v8

    .line 510
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 511
    :cond_1
    iget v9, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v10, 0x6d656864

    if-ne v9, v10, :cond_2

    .line 512
    iget-object v5, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 517
    :cond_3
    new-instance v4, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    new-instance v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    move-object v3, p1

    .line 518
    invoke-static/range {v3 .. v10}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 528
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    if-ge v2, v0, :cond_5

    .line 531
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 532
    iget-object v3, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 533
    new-instance v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v6, v3, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 535
    invoke-interface {v5, v2, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    iget v6, v3, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 537
    invoke-direct {p0, v11, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 538
    iget v5, v3, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 539
    iget-wide v6, v3, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 541
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto :goto_7

    :cond_6
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 543
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :goto_6
    if-ge v2, v0, :cond_8

    .line 545
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 546
    iget-object v3, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 547
    iget v5, v3, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 548
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v3, v3, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 549
    invoke-direct {p0, v11, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .locals 13

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 1504
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 1505
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1506
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1507
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    .line 1508
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    if-eqz v3, :cond_1

    add-long/2addr v1, p1

    :cond_1
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v3, :cond_2

    .line 1514
    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    :cond_2
    iget-object v10, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 1516
    array-length v11, v10

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 1517
    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static parseMehd(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 725
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 726
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 727
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseMoof(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 740
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 742
    iget v3, v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 743
    invoke-static {v2, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseSaio(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 891
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 892
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 893
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 895
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 905
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 906
    iget-wide v1, p1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_1

    .line 907
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    .line 901
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected saio entry count: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseSaiz(Landroidx/media3/extractor/mp4/TrackEncryptionBox;Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 846
    iget p0, p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v0, 0x8

    .line 847
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 848
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 849
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 851
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 853
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 855
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 856
    iget v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 867
    iget-object v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    .line 869
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    .line 871
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    mul-int v5, v0, v1

    .line 876
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 878
    :cond_4
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    .line 880
    invoke-virtual {p2, v5}, Landroidx/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    :cond_5
    return-void

    .line 857
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Saiz sample count "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseSampleGroups(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move v4, v3

    .line 1163
    :goto_0
    iget-object v7, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1164
    iget-object v7, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 1165
    iget-object v8, v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 1166
    iget v9, v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v10, 0x73626770

    const v11, 0x73656967

    const/16 v12, 0xc

    if-ne v9, v10, :cond_0

    .line 1167
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1168
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v11, :cond_1

    move-object v5, v8

    goto :goto_1

    .line 1171
    :cond_0
    iget v7, v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    .line 1172
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1173
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v11, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    .line 1182
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1183
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    const/4 v7, 0x4

    .line 1184
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    .line 1186
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1188
    :cond_4
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_c

    .line 1193
    invoke-virtual {v6, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1194
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1195
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v0, v8, :cond_6

    .line 1197
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 1198
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    .line 1202
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1204
    :cond_7
    :goto_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    .line 1210
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1211
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 1214
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v8, :cond_8

    move v10, v8

    goto :goto_3

    :cond_8
    move v10, v3

    :goto_3
    if-nez v10, :cond_9

    return-void

    .line 1218
    :cond_9
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    .line 1220
    invoke-virtual {v6, v13, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v12, :cond_a

    .line 1223
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1224
    new-array v2, v0, [B

    .line 1225
    invoke-virtual {v6, v2, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_a
    move-object/from16 v16, v2

    .line 1227
    iput-boolean v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1228
    new-instance v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    return-void

    :cond_b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 1205
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 1189
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method private static parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1128
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1129
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1130
    invoke-static {p1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1139
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 1142
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 1144
    :cond_1
    iget v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_2

    .line 1153
    iget-object v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1154
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1155
    invoke-virtual {p2, p0}, Landroidx/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media3/common/util/ParsableByteArray;)V

    return-void

    .line 1145
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Senc sample count "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 1134
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseSenc(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1123
    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static parseSidx(Landroidx/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media3/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1249
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1251
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1253
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 1265
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 1267
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1270
    new-array v7, v1, [I

    .line 1271
    new-array v8, v1, [J

    .line 1272
    new-array v5, v1, [J

    .line 1273
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v23, v11

    move v11, v3

    move-wide/from16 v3, v23

    :goto_1
    if-ge v11, v1, :cond_2

    .line 1278
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 1285
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 1287
    aput v12, v7, v11

    .line 1288
    aput-wide v13, v8, v11

    .line 1292
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 1294
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1295
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 1297
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1298
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move v2, v5

    move-object v5, v12

    move-object/from16 v8, v22

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    .line 1282
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 1302
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Landroidx/media3/extractor/ChunkIndex;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 1301
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTfdt(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 974
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 975
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 976
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 977
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseTfhd(Landroidx/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;Z)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 925
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 926
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 927
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 928
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 931
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    .line 936
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 937
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    .line 938
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 941
    :cond_2
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 944
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 945
    :cond_3
    iget v1, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 948
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    goto :goto_2

    .line 949
    :cond_4
    iget v2, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    .line 952
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    goto :goto_3

    .line 953
    :cond_5
    iget v3, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 956
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    goto :goto_4

    .line 957
    :cond_6
    iget p0, p2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    .line 958
    :goto_4
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    new-instance v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static parseTraf(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 756
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 757
    iget-object v0, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Landroidx/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 762
    :cond_0
    iget-object p2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 763
    iget-wide v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 764
    iget-boolean v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 765
    invoke-virtual {p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v3, 0x1

    .line 766
    invoke-static {p1, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    const v4, 0x74666474

    .line 767
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    .line 769
    iget-object v0, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 770
    iput-boolean v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_0

    .line 772
    :cond_1
    iput-wide v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 773
    iput-boolean v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 776
    :goto_0
    invoke-static {p0, p1, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 779
    iget-object p1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object p3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 781
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget p3, p3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 780
    invoke-virtual {p1, p3}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    const p3, 0x7361697a

    .line 783
    invoke-virtual {p0, p3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 785
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object p3, p3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0, p3, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Landroidx/media3/extractor/mp4/TrackEncryptionBox;Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_2
    const p3, 0x7361696f

    .line 788
    invoke-virtual {p0, p3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 790
    iget-object p3, p3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p3, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_3
    const p3, 0x73656e63

    .line 793
    invoke-virtual {p0, p3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 795
    iget-object p3, p3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p3, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 798
    iget-object p1, p1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Landroidx/media3/extractor/mp4/TrackFragment;)V

    .line 800
    iget-object p1, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    .line 802
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 803
    iget v1, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_6

    .line 804
    iget-object v0, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0, p2, p4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;[B)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static parseTrex(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 707
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 708
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 709
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 710
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 711
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 712
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 715
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 714
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseTrun(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroidx/media3/common/util/ParsableByteArray;I)I
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 1017
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1019
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 1021
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1022
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1023
    iget-object v5, v4, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1025
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    aput v7, v6, p1

    .line 1026
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v7, v4, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v7, v6, p1

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    .line 1028
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v7, v6, p1

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 1032
    :goto_0
    iget v9, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v6, :cond_2

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move v11, v7

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move v12, v7

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v7

    .line 1048
    :goto_4
    invoke-static {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isEdtsListDurationForEntireMediaTimeline(Landroidx/media3/extractor/mp4/Track;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1049
    iget-object v13, v3, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v13}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v13, v13, v7

    goto :goto_5

    :cond_7
    const-wide/16 v13, 0x0

    .line 1052
    :goto_5
    iget-object v15, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 1053
    iget-object v7, v4, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    .line 1054
    iget-object v8, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 1056
    iget v2, v3, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v16, v9

    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 1060
    :goto_6
    iget-object v9, v4, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    .line 1061
    iget-wide v2, v3, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    .line 1062
    iget-wide v7, v4, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move-wide/from16 v25, v2

    move-wide v2, v7

    move/from16 v7, p4

    :goto_7
    if-ge v7, v9, :cond_11

    if-eqz v10, :cond_9

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_8

    :cond_9
    iget v8, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_8
    invoke-static {v8}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v8

    if-eqz v11, :cond_a

    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    move/from16 v27, v10

    goto :goto_9

    :cond_a
    move/from16 v27, v10

    iget v10, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v17, v10

    :goto_9
    invoke-static/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v10

    if-eqz v12, :cond_b

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    move/from16 v28, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_b
    if-nez v7, :cond_c

    if-eqz v6, :cond_c

    move/from16 v28, v6

    move/from16 v6, v16

    goto :goto_a

    :cond_c
    move/from16 v28, v6

    .line 1072
    iget v6, v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_a
    if-eqz v1, :cond_d

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    move/from16 v29, v1

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v1, v17

    goto :goto_b

    :cond_d
    move/from16 v29, v1

    move/from16 v30, v11

    move/from16 v31, v12

    const/4 v1, 0x0

    :goto_b
    int-to-long v11, v1

    add-long/2addr v11, v2

    sub-long v17, v11, v13

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v25

    .line 1084
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    aput-wide v11, v23, v7

    .line 1085
    iget-boolean v1, v4, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v1, :cond_e

    .line 1086
    aget-wide v11, v23, v7

    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-wide v0, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long/2addr v11, v0

    aput-wide v11, v23, v7

    .line 1088
    :cond_e
    aput v10, v15, v7

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    if-eqz p2, :cond_f

    if-nez v7, :cond_10

    :cond_f
    move v0, v1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    .line 1089
    :goto_c
    aput-boolean v0, v24, v7

    int-to-long v10, v8

    add-long/2addr v2, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v27

    move/from16 v6, v28

    move/from16 v1, v29

    move/from16 v11, v30

    move/from16 v12, v31

    goto/16 :goto_7

    .line 1093
    :cond_11
    iput-wide v2, v4, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return v9
.end method

.method private static parseTruns(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 813
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 814
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    .line 816
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 817
    iget v7, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v7, v5, :cond_0

    .line 818
    iget-object v5, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 819
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 820
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_1
    iput v1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 828
    iput v1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 829
    iput v1, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 830
    iget-object v2, p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/extractor/mp4/TrackFragment;->initTables(II)V

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 835
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    .line 836
    iget v6, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 837
    iget-object v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 838
    invoke-static {p1, v2, p2, v4, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILandroidx/media3/common/util/ParsableByteArray;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static parseUuid(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1108
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1109
    invoke-virtual {p0, p2, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    sget-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 1112
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1119
    :cond_0
    invoke-static {p0, v1, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private processAtomEnded(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 361
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 365
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 366
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 367
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    :cond_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 373
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 375
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 379
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 380
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 384
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    :cond_4
    :goto_0
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    .line 393
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    :cond_5
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 397
    new-instance v8, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    :cond_6
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 404
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_7

    iget-object v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 406
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 407
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->atomPosition:J

    .line 408
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 409
    iput-wide v4, v8, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    iput-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v3

    .line 420
    :cond_8
    invoke-static {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 421
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 422
    new-instance v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    .line 424
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_2

    .line 427
    :cond_9
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    :cond_a
    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 429
    invoke-static {p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    iget p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_c

    iget-wide v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    .line 438
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 439
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    iput v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    :cond_b
    const-string p0, "Leaf atom with length > 2147483647 (unsupported)."

    .line 435
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_c
    const-string p0, "Leaf atom defines extended atom size (unsupported)."

    .line 431
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_d
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    iput-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    iput v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_2
    return v3

    :cond_e
    const-string p0, "Skipping atom with length > 2147483647 (unsupported)."

    .line 444
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_f
    const-string p0, "Atom size less than header length (unsupported)."

    .line 389
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v0

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 459
    new-instance v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Landroidx/media3/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 463
    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void
.end method

.method private readEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 1308
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 1310
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1311
    iget-boolean v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_0

    iget-wide v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v7, v2

    if-gez v7, :cond_0

    .line 1313
    iget-wide v2, v6, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iget-object v5, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 1314
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return-void

    .line 1321
    :cond_2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int p0, v2

    if-ltz p0, :cond_3

    .line 1326
    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1327
    iget-object p0, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V

    return-void

    :cond_3
    const-string p0, "Offset to encryption data was negative."

    .line 1323
    invoke-static {p0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 1348
    invoke-static {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_1

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 1352
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_0

    .line 1357
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return v4

    :cond_0
    const-string v0, "Offset to end of mdat was negative."

    .line 1354
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1362
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v5

    .line 1364
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    .line 1367
    invoke-static {v5, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1370
    :cond_2
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_3
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    .line 1374
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1376
    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v5, v9, :cond_5

    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1377
    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1378
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1379
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_4
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8

    .line 1386
    :cond_5
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v8, :cond_6

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1389
    invoke-interface {v1, v9}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1392
    :cond_6
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v9, 0x7

    .line 1395
    invoke-virtual {v2, v5, v9}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1396
    invoke-static {v5, v10}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1397
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v5, v10, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_0

    :cond_7
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1401
    invoke-virtual {v2, v5, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    :goto_0
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1408
    :cond_8
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 1409
    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1410
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v10

    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v12, :cond_9

    .line 1412
    invoke-virtual {v12, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    :cond_9
    move-wide v14, v10

    .line 1414
    iget v10, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v10, :cond_e

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 1417
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 1418
    aput-byte v4, v10, v4

    .line 1419
    aput-byte v4, v10, v8

    const/4 v11, 0x2

    .line 1420
    aput-byte v4, v10, v11

    .line 1421
    iget v11, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v11, v8

    .line 1422
    iget v12, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v12, v12, 0x4

    :goto_1
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v13, v6, :cond_f

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_c

    .line 1429
    invoke-interface {v1, v10, v12, v11}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 1430
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 1431
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lt v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 1438
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 1439
    invoke-interface {v9, v6, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    .line 1441
    invoke-interface {v9, v6, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 1442
    array-length v6, v6

    if-lez v6, :cond_a

    iget-object v6, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v6, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v13, v10, v7

    .line 1444
    invoke-static {v6, v13}, Landroidx/media3/container/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    iput-boolean v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v6, v12

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v6, 0x3

    goto :goto_1

    :cond_b
    const-string v0, "Invalid NAL length"

    .line 1433
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v13, :cond_d

    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1451
    invoke-virtual {v13, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1452
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v6, v4, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1453
    invoke-interface {v9, v6, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1457
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v7

    invoke-static {v13, v7}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v7

    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1459
    iget-object v8, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/hevc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 1460
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    .line 1461
    invoke-static {v14, v15, v3, v7}, Landroidx/media3/extractor/CeaUtil;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    goto :goto_3

    .line 1464
    :cond_d
    invoke-interface {v9, v1, v6, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v6

    :goto_3
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v6

    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_4
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v5, :cond_f

    sub-int/2addr v5, v3

    .line 1472
    invoke-interface {v9, v1, v5, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v3

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v3

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_4

    .line 1477
    :cond_f
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v12

    .line 1481
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1483
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :goto_5
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    .line 1486
    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1489
    invoke-direct {v0, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1490
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_11
    const/4 v1, 0x3

    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v0, 0x1

    return v0
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

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

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

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

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

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

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


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 12

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 288
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 289
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    iget v1, v1, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    .line 293
    invoke-interface {p1, v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    new-instance v1, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media3/extractor/mp4/Track;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    new-instance v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v3, v2, v2, v2, v2}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-direct {v0, p1, v1, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 307
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 308
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    :cond_0
    return-void
.end method

.method protected modifyTrack(Landroidx/media3/extractor/mp4/Track;)Landroidx/media3/extractor/mp4/Track;
    .locals 0

    return-object p1
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 346
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 343
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 335
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 314
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 316
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 322
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-static {p1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffFragmented(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
