.class public final Landroidx/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private randomAccessIndicator:Z

.field private sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

.field private final sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Landroidx/media3/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field private final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;ZZ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 84
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 86
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 88
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private assertTracksCreated()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 256
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 257
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 197
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 198
    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 199
    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 201
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 203
    iget-object v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 204
    iget-object v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 205
    iget-object v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v3}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 206
    iget-object v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v4, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v1, v4}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object v1

    .line 207
    iget v3, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    iget v4, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 208
    invoke-static {v3, v4, v5}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 212
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v6, p0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 214
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    const-string v6, "video/avc"

    .line 215
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 216
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 217
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 218
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 219
    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 220
    invoke-virtual {v3, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 212
    invoke-interface {v4, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 223
    invoke-virtual {v0, v2}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->putSps(Landroidx/media3/container/NalUnitUtil$SpsData;)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 224
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->putPps(Landroidx/media3/container/NalUnitUtil$PpsData;)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 225
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 226
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 228
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 229
    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1, v2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 230
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->putSps(Landroidx/media3/container/NalUnitUtil$SpsData;)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 231
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 232
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 233
    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1, v2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 234
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->putPps(Landroidx/media3/container/NalUnitUtil$PpsData;)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 235
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 238
    invoke-virtual {v0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 239
    iget-object p4, p4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p4, v0}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result p4

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 240
    iget-object v1, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v0, v1, p4}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    .line 241
    invoke-virtual {p4, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 242
    invoke-virtual {p4, p5, p6, v0}, Landroidx/media3/extractor/ts/SeiReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_4
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-boolean v6, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    move-wide v2, p1

    move v4, p3

    .line 245
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->endNalUnit(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    :cond_5
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 187
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 188
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 189
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 191
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 177
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 178
    invoke-virtual {v0, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 179
    invoke-virtual {v0, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 181
    invoke-virtual {v0, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    .line 182
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 14

    .line 124
    invoke-direct {p0}, Landroidx/media3/extractor/ts/H264Reader;->assertTracksCreated()V

    .line 126
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 127
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 128
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 131
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 132
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 136
    invoke-static {v2, v0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 140
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/extractor/ts/H264Reader;->nalUnitData([BII)V

    return-void

    .line 145
    :cond_0
    invoke-static {v2, p1}, Landroidx/media3/container/NalUnitUtil;->getNalUnitType([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 151
    invoke-direct {p0, v2, v0, p1}, Landroidx/media3/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_1
    sub-int v10, v1, p1

    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    iget-wide v12, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v7, p0

    move-wide v8, v4

    .line 158
    invoke-direct/range {v7 .. v13}, Landroidx/media3/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    iget-wide v7, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v3, p0

    .line 164
    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    .line 107
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 108
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 110
    new-instance v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    .line 111
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/SeiReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 96
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 97
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 98
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 99
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->reset()V

    :cond_0
    return-void
.end method
