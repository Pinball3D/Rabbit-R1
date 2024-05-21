.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QualityLevelParser"
.end annotation


# static fields
.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_NAME:Ljava/lang/String; = "Name"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "Subtype"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    const-string v0, "QualityLevel"

    .line 685
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 758
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 759
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object p0

    .line 760
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->splitNalUnits([B)[[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 762
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "H264"

    .line 772
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "X264"

    .line 773
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "AVC1"

    .line 774
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "DAVC"

    .line 775
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "AAC"

    .line 777
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AACL"

    .line 778
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AACH"

    .line 779
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AACP"

    .line 780
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "TTML"

    .line 782
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "DFXP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "ac-3"

    .line 784
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "ec-3"

    .line 786
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "dtsc"

    .line 788
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_5
    const-string v0, "dtsh"

    .line 790
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "dtse"

    .line 792
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "audio/vnd.dts.hd;profile=lbr"

    return-object p0

    :cond_7
    const-string v0, "opus"

    .line 794
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "audio/opus"

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0

    :cond_9
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "audio/eac3"

    return-object p0

    :cond_b
    :goto_2
    const-string p0, "audio/ac3"

    return-object p0

    :cond_c
    :goto_3
    const-string p0, "application/ttml+xml"

    return-object p0

    :cond_d
    :goto_4
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_e
    :goto_5
    const-string p0, "video/avc"

    return-object p0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 690
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "FourCC"

    .line 692
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Type"

    .line 693
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "CodecPrivateData"

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 696
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "video/mp4"

    .line 698
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    const-string v4, "MaxWidth"

    .line 699
    invoke-virtual {p0, p1, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    const-string v4, "MaxHeight"

    .line 700
    invoke-virtual {p0, p1, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 701
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "audio/mp4a-latm"

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "Channels"

    .line 707
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    const-string v6, "SamplingRate"

    .line 708
    invoke-virtual {p0, p1, v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 710
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 711
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 714
    invoke-static {v6, v3}, Lcom/google/android/exoplayer2/audio/AacUtil;->buildAacLcAudioSpecificConfig(II)[B

    move-result-object v2

    .line 713
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_2
    const-string v2, "audio/mp4"

    .line 717
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 718
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 719
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 720
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    const-string v4, "application/mp4"

    if-ne v2, v3, :cond_7

    const-string v2, "Subtype"

    .line 723
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 725
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "CAPT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "DESC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x400

    goto :goto_1

    :cond_5
    const/16 v2, 0x40

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v2, 0x0

    .line 736
    :goto_1
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_2

    .line 738
    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    :goto_2
    const-string v2, "Index"

    .line 743
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v2, "Name"

    .line 744
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 745
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v1, "Bitrate"

    .line 746
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const-string v0, "Language"

    .line 747
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 748
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
