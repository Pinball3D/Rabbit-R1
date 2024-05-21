.class public final Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Landroid/media/MediaParser$OutputConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;,
        Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;
    }
.end annotation


# static fields
.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS:Ljava/lang/String; = "chunk-index-long-us-durations"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS:Ljava/lang/String; = "chunk-index-long-offsets"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES:Ljava/lang/String; = "chunk-index-int-sizes"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES:Ljava/lang/String; = "chunk-index-long-us-times"

.field private static final MEDIA_FORMAT_KEY_TRACK_TYPE:Ljava/lang/String; = "track-type-string"

.field private static final REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEEK_POINT_PAIR_START:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OConsumerAdapterV30"


# instance fields
.field private containerMimeType:Ljava/lang/String;

.field private dummySeekMap:Landroid/media/MediaParser$SeekMap;

.field private final expectDummySeekMap:Z

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private lastChunkIndex:Landroidx/media3/extractor/ChunkIndex;

.field private final lastOutputCryptoDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/TrackOutput$CryptoData;",
            ">;"
        }
    .end annotation
.end field

.field private final lastReceivedCryptoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekMap:Landroid/media/MediaParser$SeekMap;

.field private muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private primaryTrackIndex:I

.field private final primaryTrackManifestFormat:Landroidx/media3/common/Format;

.field private final primaryTrackType:I

.field private sampleTimestampUpperLimitFilterUs:J

.field private final scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

.field private seekingDisabled:Z

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final trackFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final trackOutputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/TrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private tracksFoundCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    sget-object v0, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    sget-object v1, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    .line 86
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->SEEK_POINT_PAIR_START:Landroid/util/Pair;

    const-string v0, "pattern \\(encrypt: (\\d+), skip: (\\d+)\\)"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;-><init>(Landroidx/media3/common/Format;IZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format;IZ)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->expectDummySeekMap:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackManifestFormat:Landroidx/media3/common/Format;

    iput p2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackType:I

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    .line 151
    new-instance p1, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;-><init>(Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 152
    new-instance p1, Landroidx/media3/extractor/DummyExtractorOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DummyExtractorOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    .line 154
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private ensureSpaceForTrackIndex(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-gt v0, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 374
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    .line 376
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    .line 377
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    return p2
.end method

.method private static getInitializationData(Landroid/media/MediaFormat;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 571
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "csd-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 575
    :cond_0
    invoke-static {v1}, Landroidx/media3/common/util/MediaFormatUtil;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 581
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.media.mediaparser.FlvParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "android.media.mediaparser.MatroskaParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "android.media.mediaparser.FlacParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "android.media.mediaparser.AmrParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "android.media.mediaparser.PsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "android.media.mediaparser.WavParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "android.media.mediaparser.AdtsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "android.media.mediaparser.TsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "android.media.mediaparser.OggParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_d
    const-string v0, "android.media.mediaparser.Mp4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal parser name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "video/x-flv"

    return-object p0

    :pswitch_1
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_2
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_3
    const-string p0, "video/webm"

    return-object p0

    :pswitch_4
    const-string p0, "audio/flac"

    return-object p0

    :pswitch_5
    const-string p0, "audio/amr"

    return-object p0

    :pswitch_6
    const-string p0, "audio/ac3"

    return-object p0

    :pswitch_7
    const-string p0, "video/mp2p"

    return-object p0

    :pswitch_8
    const-string p0, "audio/raw"

    return-object p0

    :pswitch_9
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :pswitch_a
    const-string p0, "video/mp2t"

    return-object p0

    :pswitch_b
    const-string p0, "audio/ogg"

    return-object p0

    :pswitch_c
    const-string p0, "video/mp4"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7afe9a64 -> :sswitch_d
        -0x6f828246 -> :sswitch_c
        -0x5d5dc92e -> :sswitch_b
        -0x35a8150b -> :sswitch_a
        -0x23289ea9 -> :sswitch_9
        0x31d8356 -> :sswitch_8
        0x6f5c06d -> :sswitch_7
        0x1676aefc -> :sswitch_6
        0x29eb04b1 -> :sswitch_5
        0x2dd08ffb -> :sswitch_4
        0x39936bdf -> :sswitch_3
        0x4b5cea3d -> :sswitch_2
        0x501b2a5b -> :sswitch_1
        0x7af8efdb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSelectionFlags(Landroid/media/MediaFormat;)I
    .locals 3

    const-string v0, "is-autoselect"

    const/4 v1, 0x4

    .line 546
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "is-default"

    const/4 v2, 0x1

    .line 551
    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "is-forced-subtitle"

    const/4 v2, 0x2

    .line 556
    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private maybeEndTracks()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksEnded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 424
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 426
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 430
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksEnded:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private maybeObtainChunkIndex(Landroid/media/MediaFormat;)Z
    .locals 7

    const-string v0, "chunk-index-int-sizes"

    .line 345
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 349
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    const-string v1, "chunk-index-long-offsets"

    .line 351
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    const-string v2, "chunk-index-long-us-durations"

    .line 354
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    const-string v3, "chunk-index-long-us-times"

    .line 357
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 358
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    .line 359
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [I

    .line 360
    invoke-virtual {v1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [J

    .line 361
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [J

    .line 362
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [J

    .line 363
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 364
    invoke-virtual {v1, v4}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 365
    invoke-virtual {v2, v5}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 366
    invoke-virtual {p1, v6}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 367
    new-instance p1, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {p1, v3, v4, v5, v6}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastChunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 368
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 p0, 0x1

    return p0
.end method

.method private toExoPlayerCryptoData(ILandroid/media/MediaCodec$CryptoInfo;)Landroidx/media3/extractor/TrackOutput$CryptoData;
    .locals 5

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$CryptoInfo;

    if-ne v0, p2, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    .line 392
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/TrackOutput$CryptoData;

    goto :goto_1

    :cond_1
    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

    .line 401
    invoke-virtual {p2}, Landroid/media/MediaCodec$CryptoInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    const/4 v1, 0x1

    .line 403
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 404
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while parsing CryptoInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OConsumerAdapterV30"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    move v0, v1

    .line 412
    :goto_0
    new-instance v2, Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v3, p2, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iget-object v4, p2, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-direct {v2, v3, v4, v1, v0}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    :goto_1
    return-object p0
.end method

.method private static toExoPlayerDrmInitData(Ljava/lang/String;Landroid/media/DrmInitData;)Landroidx/media3/common/DrmInitData;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/media/DrmInitData;->getSchemeInitDataCount()I

    move-result v0

    new-array v1, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 536
    invoke-virtual {p1, v2}, Landroid/media/DrmInitData;->getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;

    move-result-object v3

    .line 537
    new-instance v4, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v5, v3, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    iget-object v6, v3, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v3, v3, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-direct {v4, v5, v6, v3}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_1
    new-instance p1, Landroidx/media3/common/DrmInitData;

    invoke-direct {p1, p0, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object p1
.end method

.method private toExoPlayerFormat(Landroid/media/MediaParser$TrackData;)Landroidx/media3/common/Format;
    .locals 8

    .line 460
    iget-object v0, p1, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 461
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "caption-service-number"

    const/4 v3, -0x1

    .line 463
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 465
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "crypto-mode-fourcc"

    .line 469
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Landroid/media/MediaParser$TrackData;->drmInitData:Landroid/media/DrmInitData;

    .line 468
    invoke-static {v5, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerDrmInitData(Ljava/lang/String;Landroid/media/DrmInitData;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    .line 467
    invoke-virtual {v4, p1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v4, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->containerMimeType:Ljava/lang/String;

    .line 470
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "bitrate"

    .line 472
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 471
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "channel-count"

    .line 475
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 474
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 477
    invoke-static {v0}, Landroidx/media3/common/util/MediaFormatUtil;->getColorInfo(Landroid/media/MediaFormat;)Landroidx/media3/common/ColorInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "codecs-string"

    .line 479
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "frame-rate"

    const/high16 v5, -0x40800000    # -1.0f

    .line 481
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 480
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "width"

    .line 484
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 483
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "height"

    .line 486
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 485
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 487
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getInitializationData(Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "language"

    .line 488
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "max-input-size"

    .line 490
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 489
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "exo-pcm-encoding"

    .line 493
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 492
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "rotation-degrees"

    const/4 v5, 0x0

    .line 495
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 494
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "sample-rate"

    .line 497
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 496
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 499
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getSelectionFlags(Landroid/media/MediaFormat;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "encoder-delay"

    .line 501
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 500
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "encoder-padding"

    .line 503
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 502
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "pixel-width-height-ratio-float"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 505
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 504
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "subsample-offset-us-long"

    const-wide v6, 0x7fffffffffffffffL

    .line 507
    invoke-virtual {v0, v3, v6, v7}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 506
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 509
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    .line 510
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    .line 511
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    .line 512
    iget-object v3, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v3, v2, :cond_0

    .line 516
    iget-object p0, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 517
    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget v1, v0, Landroidx/media3/common/Format;->roleFlags:I

    .line 518
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget v1, v0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 519
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget-object v1, v0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 520
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget-object v0, v0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 521
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 525
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method private static toTrackTypeConstant(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v0

    goto :goto_1

    :sswitch_0
    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 451
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    return v3

    :pswitch_1
    return v4

    :pswitch_2
    return v2

    :pswitch_3
    return v0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ad284d1 -> :sswitch_4
        -0x10fa53b6 -> :sswitch_3
        0x36452d -> :sswitch_2
        0x58d9bd6 -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public disableSeeking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->seekingDisabled:Z

    return-void
.end method

.method public getChunkIndex()Landroidx/media3/extractor/ChunkIndex;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastChunkIndex:Landroidx/media3/extractor/ChunkIndex;

    return-object p0
.end method

.method public getDummySeekMap()Landroid/media/MediaParser$SeekMap;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    return-object p0
.end method

.method public getSampleFormats()[Landroidx/media3/common/Format;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Format;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSeekPoints(J)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastSeekMap:Landroid/media/MediaParser$SeekMap;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->SEEK_POINT_PAIR_START:Landroid/util/Pair;

    :goto_0
    return-object p0
.end method

.method public onSampleCompleted(IJIIILandroid/media/MediaCodec$CryptoInfo;)V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p2

    :cond_1
    move-wide v1, p2

    iget-object p2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/TrackOutput;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    .line 337
    invoke-direct {p0, p1, p7}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerCryptoData(ILandroid/media/MediaCodec$CryptoInfo;)Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-result-object v6

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public onSampleDataFound(ILandroid/media/MediaParser$InputReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->ensureSpaceForTrackIndex(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 311
    iput-object p2, v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;->input:Landroid/media/MediaParser$InputReader;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 312
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, -0x1

    .line 314
    invoke-interface {v0, p1, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 318
    invoke-interface {p2}, Landroid/media/MediaParser$InputReader;->getLength()J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x1

    .line 317
    invoke-interface {v0, p0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    return-void
.end method

.method public onSeekMapFound(Landroid/media/MediaParser$SeekMap;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->expectDummySeekMap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    goto :goto_2

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 261
    invoke-virtual {p1}, Landroid/media/MediaParser$SeekMap;->getDurationMicros()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->seekingDisabled:Z

    if-eqz p0, :cond_2

    .line 264
    new-instance p0, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide/32 v3, -0x80000000

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 265
    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    goto :goto_1

    .line 266
    :cond_2
    new-instance p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;-><init>(Landroid/media/MediaParser$SeekMap;)V

    .line 262
    :goto_1
    invoke-interface {v2, p0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :goto_2
    return-void
.end method

.method public onTrackCountFound(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    .line 251
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->maybeEndTracks()V

    return-void
.end method

.method public onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V
    .locals 3

    .line 272
    iget-object v0, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->maybeObtainChunkIndex(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->ensureSpaceForTrackIndex(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    if-nez v0, :cond_4

    .line 281
    iget-object v0, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "track-type-string"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    :goto_0
    invoke-static {v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toTrackTypeConstant(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackType:I

    if-ne v1, v2, :cond_2

    iput p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackIndex:I

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 290
    invoke-interface {v2, p1, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    move-object v0, v1

    .line 298
    :cond_4
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerFormat(Landroid/media/MediaParser$TrackData;)Landroidx/media3/common/Format;

    move-result-object p2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackManifestFormat:Landroidx/media3/common/Format;

    if-eqz v1, :cond_5

    iget v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackIndex:I

    if-ne p1, v2, :cond_5

    .line 301
    invoke-virtual {p2, v1}, Landroidx/media3/common/Format;->withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, p2

    .line 299
    :goto_1
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->maybeEndTracks()V

    return-void
.end method

.method public setExtractorOutput(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public setMuxedCaptionFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method public setSampleTimestampUpperLimitFilterUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    return-void
.end method

.method public setSelectedParserName(Ljava/lang/String;)V
    .locals 0

    .line 227
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->containerMimeType:Ljava/lang/String;

    return-void
.end method

.method public setTimestampAdjuster(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    return-void
.end method
