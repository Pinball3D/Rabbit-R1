.class Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    .locals 3

    .line 94
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p0, :cond_c

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "application/ttml+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "application/x-subrip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "application/cea-708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "application/cea-608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "text/x-exoplayer-cues"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "text/x-ssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "text/vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "application/pgs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "application/dvbsubs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 104
    :pswitch_0
    new-instance p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;-><init>()V

    return-object p0

    .line 106
    :pswitch_1
    new-instance p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;-><init>()V

    return-object p0

    .line 116
    :pswitch_2
    new-instance p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    return-object p0

    .line 122
    :pswitch_3
    new-instance p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;-><init>()V

    return-object p0

    .line 111
    :pswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    const-wide/16 v1, 0x3e80

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    .line 100
    :pswitch_5
    new-instance p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    return-object p0

    .line 108
    :pswitch_6
    new-instance p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;-><init>(Ljava/util/List;)V

    return-object p0

    .line 98
    :pswitch_7
    new-instance p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;-><init>()V

    return-object p0

    .line 102
    :pswitch_8
    new-instance p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;-><init>()V

    return-object p0

    .line 120
    :pswitch_9
    new-instance p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;-><init>()V

    return-object p0

    .line 118
    :pswitch_a
    new-instance p0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;-><init>(Ljava/util/List;)V

    return-object p0

    .line 127
    :cond_c
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_b
        -0x4a6813e3 -> :sswitch_a
        -0x3d28a9ba -> :sswitch_9
        -0x3be2f26c -> :sswitch_8
        0x2935f49f -> :sswitch_7
        0x310bebca -> :sswitch_6
        0x37713300 -> :sswitch_5
        0x47a1c707 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    .line 77
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string p1, "text/vtt"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "text/x-ssa"

    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/ttml+xml"

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-mp4-vtt"

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-subrip"

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-quicktime-tx3g"

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/cea-608"

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-mp4-cea-608"

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/cea-708"

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/dvbsubs"

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/pgs"

    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "text/x-exoplayer-cues"

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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
