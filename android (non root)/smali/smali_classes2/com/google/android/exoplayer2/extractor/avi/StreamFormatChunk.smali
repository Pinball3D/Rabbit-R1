.class final Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;
.super Ljava/lang/Object;
.source "StreamFormatChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamFormatChunk"


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method private static getMimeTypeFromCompression(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "video/mjpeg"

    return-object p0

    :sswitch_1
    const-string p0, "video/mp43"

    return-object p0

    :sswitch_2
    const-string p0, "video/mp42"

    return-object p0

    :sswitch_3
    const-string p0, "video/avc"

    return-object p0

    :sswitch_4
    const-string p0, "video/mp4v-es"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x30355844 -> :sswitch_4
        0x31435641 -> :sswitch_3
        0x31637661 -> :sswitch_3
        0x3234504d -> :sswitch_2
        0x3334504d -> :sswitch_1
        0x34363248 -> :sswitch_3
        0x34504d46 -> :sswitch_4
        0x44495633 -> :sswitch_4
        0x44495658 -> :sswitch_4
        0x47504a4d -> :sswitch_0
        0x58564944 -> :sswitch_4
        0x64697678 -> :sswitch_4
        0x67706a6d -> :sswitch_0
        0x78766964 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getMimeTypeFromTag(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/16 v0, 0x55

    if-eq p0, v0, :cond_3

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2001

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_1
    const-string p0, "audio/ac3"

    return-object p0

    :cond_2
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_3
    const-string p0, "audio/mpeg"

    return-object p0

    :cond_4
    const-string p0, "audio/raw"

    return-object p0
.end method

.method private static parseBitmapInfoHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .locals 3

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p0

    .line 63
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->getMimeTypeFromCompression(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring track with unsupported compression "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamFormatChunk"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-object v0
.end method

.method public static parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->parseBitmapInfoHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->parseWaveFormatEx(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring strf box for unsupported track type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamFormatChunk"

    .line 38
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseWaveFormatEx(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .locals 7

    .line 77
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 78
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->getMimeTypeFromTag(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring track with unsupported format tag "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamFormatChunk"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const/4 v3, 0x6

    .line 85
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 87
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v3

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    .line 89
    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 90
    invoke-virtual {p0, v5, v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 92
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 94
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v6

    .line 95
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    const-string v0, "audio/raw"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_1
    const-string v0, "audio/mp4a-latm"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v4, :cond_2

    .line 101
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 103
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0x66727473

    return p0
.end method
