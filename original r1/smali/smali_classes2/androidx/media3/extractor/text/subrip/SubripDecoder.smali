.class public final Landroidx/media3/extractor/text/subrip/SubripDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SubripDecoder.java"


# static fields
.field private static final ALIGN_BOTTOM_LEFT:Ljava/lang/String; = "{\\an1}"

.field private static final ALIGN_BOTTOM_MID:Ljava/lang/String; = "{\\an2}"

.field private static final ALIGN_BOTTOM_RIGHT:Ljava/lang/String; = "{\\an3}"

.field private static final ALIGN_MID_LEFT:Ljava/lang/String; = "{\\an4}"

.field private static final ALIGN_MID_MID:Ljava/lang/String; = "{\\an5}"

.field private static final ALIGN_MID_RIGHT:Ljava/lang/String; = "{\\an6}"

.field private static final ALIGN_TOP_LEFT:Ljava/lang/String; = "{\\an7}"

.field private static final ALIGN_TOP_MID:Ljava/lang/String; = "{\\an8}"

.field private static final ALIGN_TOP_RIGHT:Ljava/lang/String; = "{\\an9}"

.field private static final END_FRACTION:F = 0.92f

.field private static final MID_FRACTION:F = 0.5f

.field private static final START_FRACTION:F = 0.08f

.field private static final SUBRIP_ALIGNMENT_TAG:Ljava/lang/String; = "\\{\\\\an[1-9]\\}"

.field private static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUBRIP_TIMECODE:Ljava/lang/String; = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?"

.field private static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SubripDecoder"


# instance fields
.field private final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SubripDecoder"

    .line 71
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    return-void
.end method

.method private buildCue(Landroid/text/Spanned;Ljava/lang/String;)Landroidx/media3/common/text/Cue;
    .locals 16

    move-object/from16 v0, p2

    .line 188
    new-instance v1, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v1}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v6, "{\\an9}"

    const-string v7, "{\\an8}"

    const-string v8, "{\\an7}"

    const-string v9, "{\\an6}"

    const-string v10, "{\\an5}"

    const-string v11, "{\\an4}"

    const-string v12, "{\\an3}"

    const-string v13, "{\\an2}"

    const-string v14, "{\\an1}"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v15, 0x2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v15

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_6
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_8
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_3

    if-eq v2, v15, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    .line 209
    invoke-virtual {v1, v3}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_2

    .line 203
    :cond_2
    invoke-virtual {v1, v15}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 198
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 214
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_4

    :sswitch_a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_4

    :sswitch_b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_4

    :sswitch_c
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :sswitch_d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_4

    :sswitch_e
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_4

    :sswitch_f
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v15

    goto :goto_4

    :sswitch_10
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    :sswitch_11
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v15, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    .line 229
    invoke-virtual {v1, v3}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 223
    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_5

    .line 218
    :cond_6
    invoke-virtual {v1, v15}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 233
    :goto_5
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->getPositionAnchor()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->getLineAnchor()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method

.method private detectUtfCharset(Landroidx/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .locals 0

    .line 151
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    sget-object p0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object p0
.end method

.method static getFractionalPositionForAnchorType(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 262
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3da3d70a    # 0.08f

    return p0
.end method

.method private static parseTimecode(Ljava/util/regex/Matcher;I)J
    .locals 6

    add-int/lit8 v0, p1, 0x1

    .line 239
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-int/lit8 v2, p1, 0x2

    .line 242
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    .line 243
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 244
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 246
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_1
    mul-long/2addr v0, v4

    return-wide v0
.end method

.method private processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 167
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    sub-int/2addr v2, v0

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v2, v1

    const-string v4, ""

    .line 173
    invoke-virtual {p1, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected decode([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 7

    const-string p3, "SubripDecoder"

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Landroidx/media3/common/util/LongArray;

    invoke-direct {v1}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 80
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 81
    invoke-direct {p0, v2}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->detectUtfCharset(Landroidx/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 84
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "Unexpected end"

    .line 101
    invoke-static {p3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    sget-object v4, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 105
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 p2, 0x1

    .line 107
    invoke-static {v4, p2}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/util/LongArray;->add(J)V

    const/4 p2, 0x6

    .line 108
    invoke-static {v4, p2}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/util/LongArray;->add(J)V

    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 117
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 118
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const-string v5, "<br>"

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 122
    invoke-direct {p0, p2, v5}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    :goto_2
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "\\{\\\\an[1-9]\\}"

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 137
    :goto_3
    invoke-direct {p0, p2, v4}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->buildCue(Landroid/text/Spanned;Ljava/lang/String;)Landroidx/media3/common/text/Cue;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object p2, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 110
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping invalid timing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping invalid index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :goto_4
    new-array p0, v3, [Landroidx/media3/common/text/Cue;

    .line 141
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/common/text/Cue;

    .line 142
    invoke-virtual {v1}, Landroidx/media3/common/util/LongArray;->toArray()[J

    move-result-object p1

    .line 143
    new-instance p2, Landroidx/media3/extractor/text/subrip/SubripSubtitle;

    invoke-direct {p2, p0, p1}, Landroidx/media3/extractor/text/subrip/SubripSubtitle;-><init>([Landroidx/media3/common/text/Cue;[J)V

    return-object p2
.end method
