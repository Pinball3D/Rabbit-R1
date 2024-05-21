.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SpliceInfoDecoder.java"


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Landroidx/media3/common/util/ParsableByteArray;

.field private final sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    .line 45
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 46
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method protected decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 5

    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v0, :cond_0

    .line 53
    iget-wide v0, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 54
    invoke-virtual {v2}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v1, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 56
    iget-wide v1, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->timeUs:J

    iget-wide v3, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 59
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 61
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 62
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p2, 0x27

    .line 65
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 67
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v2, 0x14

    .line 69
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v2, 0xc

    .line 70
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v3, 0x8

    .line 71
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0xe

    .line 74
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v2, :cond_6

    const/16 v3, 0xff

    if-eq v2, v3, :cond_5

    const/4 p1, 0x4

    if-eq v2, p1, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    const/4 p1, 0x6

    if-eq v2, p1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 87
    invoke-static {p1, v0, v1, p0}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 84
    invoke-static {p1, v0, v1, p0}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 80
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 90
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;IJ)Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_6
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_0
    const/4 p1, 0x0

    if-nez p0, :cond_7

    .line 96
    new-instance p0, Landroidx/media3/common/Metadata;

    new-array p1, p1, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {p0, p1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_1

    :cond_7
    new-instance v0, Landroidx/media3/common/Metadata;

    new-array p2, p2, [Landroidx/media3/common/Metadata$Entry;

    aput-object p0, p2, p1

    invoke-direct {v0, p2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
