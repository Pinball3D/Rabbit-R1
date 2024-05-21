.class public final Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    iput-object p2, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private buildSeiReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/SeiReader;
    .locals 1

    .line 209
    new-instance v0, Landroidx/media3/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/UserDataReader;
    .locals 1

    .line 222
    new-instance v0, Landroidx/media3/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 235
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p0

    .line 238
    :cond_0
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object p1, p1, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 240
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lez p1, :cond_6

    .line 241
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 242
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 243
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v1, 0x86

    if-ne p1, v1, :cond_5

    .line 246
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_5

    const/4 v4, 0x3

    .line 249
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-eqz v6, :cond_2

    and-int/lit8 v5, v5, 0x3f

    const-string v8, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v8, "application/cea-608"

    move v5, v7

    .line 263
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-byte v9, v9

    .line 265
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v6, :cond_4

    and-int/lit8 v6, v9, 0x40

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move v7, v1

    .line 272
    :goto_4
    invoke-static {v7}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    .line 275
    :goto_5
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 277
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    .line 278
    invoke-virtual {v7, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 279
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 280
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    .line 275
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 286
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method private isSet(I)Z
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public createPayloadReader(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_c

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a

    const/16 v1, 0x24

    if-eq p1, v1, :cond_9

    const/16 v1, 0x59

    if-eq p1, v1, :cond_8

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_7

    const/16 v1, 0xac

    if-eq p1, v1, :cond_6

    const/16 v1, 0x101

    if-eq p1, v1, :cond_5

    const/16 v1, 0x86

    if-eq p1, v1, :cond_3

    const/16 v1, 0x87

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v3

    :pswitch_0
    const/16 p1, 0x40

    .line 163
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-nez p0, :cond_7

    return-object v3

    .line 154
    :pswitch_1
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v3, Landroidx/media3/extractor/ts/PesReader;

    new-instance p0, Landroidx/media3/extractor/ts/LatmReader;

    iget-object p1, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_0
    return-object v3

    .line 173
    :pswitch_2
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/UserDataReader;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 150
    :pswitch_3
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    new-instance v3, Landroidx/media3/extractor/ts/PesReader;

    new-instance p0, Landroidx/media3/extractor/ts/AdtsReader;

    const/4 p1, 0x0

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_1
    return-object v3

    .line 159
    :cond_2
    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/Ac3Reader;

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    :cond_3
    const/16 p1, 0x10

    .line 185
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    .line 187
    :cond_4
    new-instance v3, Landroidx/media3/extractor/ts/SectionReader;

    new-instance p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;

    const-string p1, "application/x-scte35"

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    :goto_2
    return-object v3

    .line 193
    :cond_5
    new-instance p0, Landroidx/media3/extractor/ts/SectionReader;

    new-instance p1, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    return-object p0

    .line 161
    :cond_6
    new-instance p0, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/Ac4Reader;

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 168
    :cond_7
    new-instance p0, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/DtsReader;

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 191
    :cond_8
    new-instance p0, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 183
    :cond_9
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/SeiReader;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/H265Reader;-><init>(Landroidx/media3/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 175
    :cond_a
    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 177
    :cond_b
    new-instance v3, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/H264Reader;

    .line 179
    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    .line 181
    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    invoke-direct {p1, p2, v0, p0}, Landroidx/media3/extractor/ts/H264Reader;-><init>(Landroidx/media3/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_3
    return-object v3

    .line 189
    :cond_c
    new-instance p0, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/Id3Reader;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 148
    :cond_d
    new-instance p0, Landroidx/media3/extractor/ts/PesReader;

    new-instance p1, Landroidx/media3/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 171
    :cond_e
    :pswitch_5
    new-instance p1, Landroidx/media3/extractor/ts/PesReader;

    new-instance v0, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/UserDataReader;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
