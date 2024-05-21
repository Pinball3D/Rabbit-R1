.class public final Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "Mp4WebvttDecoder.java"


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I = 0x7061796c

.field private static final TYPE_sttg:I = 0x73747467

.field private static final TYPE_vttc:I = 0x76747463


# instance fields
.field private final sampleData:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 49
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private static parseVttCueBox(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/text/Cue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    if-lez p1, :cond_3

    const/16 v3, 0x8

    if-lt p1, v3, :cond_2

    .line 84
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 85
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 p1, p1, -0x8

    sub-int/2addr v4, v3

    .line 89
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v3, v6, v4}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr p1, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_1

    .line 93
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v4, 0x7061796c

    if-ne v5, v4, :cond_0

    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-static {v0, v1, v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_2
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    if-eqz v2, :cond_5

    .line 106
    invoke-virtual {v2, v1}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object p0

    goto :goto_1

    .line 107
    :cond_5
    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->newCueForText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method protected decode([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 58
    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 60
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 61
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_1

    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 64
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p2

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 65
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p3

    const v0, 0x76747463

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    add-int/lit8 p2, p2, -0x8

    .line 67
    invoke-static {p3, p2}, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->parseVttCueBox(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/text/Cue;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttDecoder;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    add-int/lit8 p2, p2, -0x8

    .line 70
    invoke-virtual {p3, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string p1, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_2
    new-instance p0, Landroidx/media3/extractor/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object p0
.end method
