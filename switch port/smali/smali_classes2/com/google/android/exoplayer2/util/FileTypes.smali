.class public final Lcom/google/android/exoplayer2/util/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FileTypes$Type;
    }
.end annotation


# static fields
.field public static final AC3:I = 0x0

.field public static final AC4:I = 0x1

.field public static final ADTS:I = 0x2

.field public static final AMR:I = 0x3

.field public static final AVI:I = 0x10

.field private static final EXTENSION_AAC:Ljava/lang/String; = ".aac"

.field private static final EXTENSION_AC3:Ljava/lang/String; = ".ac3"

.field private static final EXTENSION_AC4:Ljava/lang/String; = ".ac4"

.field private static final EXTENSION_ADTS:Ljava/lang/String; = ".adts"

.field private static final EXTENSION_AMR:Ljava/lang/String; = ".amr"

.field private static final EXTENSION_AVI:Ljava/lang/String; = ".avi"

.field private static final EXTENSION_EC3:Ljava/lang/String; = ".ec3"

.field private static final EXTENSION_FLAC:Ljava/lang/String; = ".flac"

.field private static final EXTENSION_FLV:Ljava/lang/String; = ".flv"

.field private static final EXTENSION_JPEG:Ljava/lang/String; = ".jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = ".jpg"

.field private static final EXTENSION_M2P:Ljava/lang/String; = ".m2p"

.field private static final EXTENSION_MID:Ljava/lang/String; = ".mid"

.field private static final EXTENSION_MIDI:Ljava/lang/String; = ".midi"

.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"

.field private static final EXTENSION_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_MPEG:Ljava/lang/String; = ".mpeg"

.field private static final EXTENSION_MPG:Ljava/lang/String; = ".mpg"

.field private static final EXTENSION_OPUS:Ljava/lang/String; = ".opus"

.field private static final EXTENSION_PREFIX_CMF:Ljava/lang/String; = ".cmf"

.field private static final EXTENSION_PREFIX_M4:Ljava/lang/String; = ".m4"

.field private static final EXTENSION_PREFIX_MK:Ljava/lang/String; = ".mk"

.field private static final EXTENSION_PREFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_PREFIX_OG:Ljava/lang/String; = ".og"

.field private static final EXTENSION_PREFIX_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_PS:Ljava/lang/String; = ".ps"

.field private static final EXTENSION_SMF:Ljava/lang/String; = ".smf"

.field private static final EXTENSION_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_VTT:Ljava/lang/String; = ".vtt"

.field private static final EXTENSION_WAV:Ljava/lang/String; = ".wav"

.field private static final EXTENSION_WAVE:Ljava/lang/String; = ".wave"

.field private static final EXTENSION_WEBM:Ljava/lang/String; = ".webm"

.field private static final EXTENSION_WEBVTT:Ljava/lang/String; = ".webvtt"

.field public static final FLAC:I = 0x4

.field public static final FLV:I = 0x5

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final JPEG:I = 0xe

.field public static final MATROSKA:I = 0x6

.field public static final MIDI:I = 0xf

.field public static final MP3:I = 0x7

.field public static final MP4:I = 0x8

.field public static final OGG:I = 0x9

.field public static final PS:I = 0xa

.field public static final TS:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field public static final WAV:I = 0xc

.field public static final WEBVTT:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inferFileTypeFromMimeType(Ljava/lang/String;)I
    .locals 19

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 141
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "video/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "audio/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "audio/eac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "audio/3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "audio/wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "audio/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    move v1, v4

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    move v1, v5

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    move v1, v6

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "audio/ac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    move v1, v7

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "video/x-flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    move v1, v8

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "application/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    move v1, v9

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "audio/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    move v1, v10

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "text/vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    move v1, v11

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    move v1, v12

    goto :goto_1

    :sswitch_13
    const-string v2, "application/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    move v1, v13

    goto :goto_1

    :sswitch_14
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    move v1, v14

    goto :goto_1

    :sswitch_15
    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    move v1, v15

    goto :goto_1

    :sswitch_16
    const-string v2, "video/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    move/from16 v1, v16

    goto :goto_1

    :sswitch_17
    const-string v2, "video/mp2t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_18
    const-string v2, "video/mp2p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    move/from16 v1, v17

    goto :goto_1

    :sswitch_19
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move/from16 v1, v18

    :goto_1
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v12

    :pswitch_1
    return v4

    :pswitch_2
    return v15

    :pswitch_3
    return v7

    :pswitch_4
    return v10

    :pswitch_5
    return v17

    :pswitch_6
    return v14

    :pswitch_7
    return v6

    :pswitch_8
    return v3

    :pswitch_9
    return v11

    :pswitch_a
    return v5

    :pswitch_b
    return v16

    :pswitch_c
    return v13

    :pswitch_d
    return v8

    :pswitch_e
    return v9

    :pswitch_f
    return v18

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_19
        -0x6315f78b -> :sswitch_18
        -0x6315f787 -> :sswitch_17
        -0x63118f53 -> :sswitch_16
        -0x5fc6f775 -> :sswitch_15
        -0x58a7d764 -> :sswitch_14
        -0x4a681e4e -> :sswitch_13
        -0x405dba54 -> :sswitch_12
        -0x3be2f26c -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_6
        :pswitch_f
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public static inferFileTypeFromResponseHeaders(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 126
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 129
    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferFileTypeFromUri(Landroid/net/Uri;)I
    .locals 6

    .line 192
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ".ac3"

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ".ec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string v1, ".ac4"

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v1, ".adts"

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, ".aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_9

    :cond_3
    const-string v1, ".amr"

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const-string v1, ".flac"

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_5

    return v2

    :cond_5
    const-string v1, ".flv"

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_6

    return v3

    :cond_6
    const-string v1, ".mid"

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ".midi"

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ".smf"

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_8

    .line 213
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v4, ".mk"

    .line 211
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, ".webm"

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_7

    :cond_8
    const-string v1, ".mp3"

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p0, 0x7

    return p0

    :cond_9
    const-string v1, ".mp4"

    .line 218
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const-string v5, ".m4"

    .line 219
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 222
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const-string v3, ".cmf"

    .line 225
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_6

    .line 231
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ".og"

    .line 229
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ".opus"

    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_5

    :cond_b
    const-string v1, ".ps"

    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".mpeg"

    .line 235
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".mpg"

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".m2p"

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    const-string v1, ".ts"

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 240
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    const-string v1, ".wav"

    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ".wave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2

    :cond_e
    const-string v1, ".vtt"

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ".webvtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1

    :cond_f
    const-string v1, ".jpg"

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, ".jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    :cond_10
    const-string v1, ".avi"

    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0x10

    return p0

    :cond_11
    return v0

    :cond_12
    :goto_0
    const/16 p0, 0xe

    return p0

    :cond_13
    :goto_1
    const/16 p0, 0xd

    return p0

    :cond_14
    :goto_2
    const/16 p0, 0xc

    return p0

    :cond_15
    :goto_3
    const/16 p0, 0xb

    return p0

    :cond_16
    :goto_4
    const/16 p0, 0xa

    return p0

    :cond_17
    :goto_5
    const/16 p0, 0x9

    return p0

    :cond_18
    :goto_6
    const/16 p0, 0x8

    return p0

    :cond_19
    :goto_7
    const/4 p0, 0x6

    return p0

    :cond_1a
    :goto_8
    const/16 p0, 0xf

    return p0

    :cond_1b
    :goto_9
    const/4 p0, 0x2

    return p0

    :cond_1c
    :goto_a
    const/4 p0, 0x0

    return p0
.end method
