.class public final Landroidx/media3/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final AUD_NUT:I = 0x23

.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Landroidx/media3/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field private final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 83
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 84
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 86
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 89
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

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

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 271
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    .line 272
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 206
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->endNalUnit(JIZ)V

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 208
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 209
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 210
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 211
    invoke-virtual {p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object p2, p0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object p3, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 212
    invoke-static {p2, p3, v0, v1}, Landroidx/media3/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;)Landroidx/media3/common/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 216
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 217
    iget-object p1, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget p3, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    iget-object p3, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 218
    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 221
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iget-object p3, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 222
    invoke-virtual {p1, p5, p6, p3}, Landroidx/media3/extractor/ts/SeiReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 224
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 225
    iget-object p1, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget p3, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    iget-object p3, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p4, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 226
    iget-object p4, p4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, p4, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 229
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    .line 230
    invoke-virtual {p1, p5, p6, p0}, Landroidx/media3/extractor/ts/SeiReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_2
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    .line 194
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 196
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 197
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 198
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 200
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;Landroidx/media3/extractor/ts/NalUnitTargetBuffer;)Landroidx/media3/common/Format;
    .locals 7

    .line 240
    iget v0, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v1, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v1

    iget v1, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 241
    iget-object v1, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v1, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v1, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p1, p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v2, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr p1, v2

    iget p3, p3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v3, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object p1, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 p3, 0x3

    iget p2, p2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 247
    invoke-static {p1, p3, p2}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p1

    .line 249
    iget v1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iget-boolean v2, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    iget v3, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    iget v4, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    iget-object v5, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    iget v6, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 250
    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object p2

    .line 258
    new-instance p3, Landroidx/media3/common/Format$Builder;

    invoke-direct {p3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 259
    invoke-virtual {p3, p0}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const-string p3, "video/hevc"

    .line 260
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 261
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget p2, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 262
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget p2, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 263
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget p1, p1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 264
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 265
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method private startNalUnit(JIIJ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v7, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 182
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJZ)V

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 184
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 185
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 186
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 188
    invoke-virtual {p1, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 189
    invoke-virtual {p0, p4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 16

    move-object/from16 v7, p0

    .line 126
    invoke-direct/range {p0 .. p0}, Landroidx/media3/extractor/ts/H265Reader;->assertTracksCreated()V

    .line 128
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v8

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v9

    iget-wide v1, v7, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    iget-object v1, v7, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v1, v7, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 139
    invoke-static {v9, v0, v8, v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v11

    if-ne v11, v8, :cond_1

    .line 143
    invoke-direct {v7, v9, v0, v8}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData([BII)V

    return-void

    .line 148
    :cond_1
    invoke-static {v9, v11}, Landroidx/media3/container/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 154
    invoke-direct {v7, v9, v0, v11}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_2
    sub-int v13, v8, v11

    iget-wide v2, v7, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v4, v0

    iget-wide v5, v7, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    .line 162
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    iget-wide v5, v7, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v12

    .line 168
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 109
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 110
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 112
    new-instance v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Landroidx/media3/extractor/ts/SeiReader;

    .line 113
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

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 96
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 97
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 98
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 99
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 100
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 101
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->reset()V

    :cond_0
    return-void
.end method
