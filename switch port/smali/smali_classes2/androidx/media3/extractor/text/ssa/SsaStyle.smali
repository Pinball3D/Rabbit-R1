.class final Landroidx/media3/extractor/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ssa/SsaStyle$Format;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$SsaBorderStyle;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation


# static fields
.field public static final SSA_ALIGNMENT_BOTTOM_CENTER:I = 0x2

.field public static final SSA_ALIGNMENT_BOTTOM_LEFT:I = 0x1

.field public static final SSA_ALIGNMENT_BOTTOM_RIGHT:I = 0x3

.field public static final SSA_ALIGNMENT_MIDDLE_CENTER:I = 0x5

.field public static final SSA_ALIGNMENT_MIDDLE_LEFT:I = 0x4

.field public static final SSA_ALIGNMENT_MIDDLE_RIGHT:I = 0x6

.field public static final SSA_ALIGNMENT_TOP_CENTER:I = 0x8

.field public static final SSA_ALIGNMENT_TOP_LEFT:I = 0x7

.field public static final SSA_ALIGNMENT_TOP_RIGHT:I = 0x9

.field public static final SSA_ALIGNMENT_UNKNOWN:I = -0x1

.field public static final SSA_BORDER_STYLE_BOX:I = 0x3

.field public static final SSA_BORDER_STYLE_OUTLINE:I = 0x1

.field public static final SSA_BORDER_STYLE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SsaStyle"


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final borderStyle:I

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final outlineColor:Ljava/lang/Integer;

.field public final primaryColor:Ljava/lang/Integer;

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->alignment:I

    iput-object p3, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    iput-object p4, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    iput-boolean p6, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->bold:Z

    iput-boolean p7, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->italic:Z

    iput-boolean p8, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->underline:Z

    iput-boolean p9, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    iput p10, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 44
    invoke-static {p0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fromStyleLine(Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaStyle$Format;)Landroidx/media3/extractor/text/ssa/SsaStyle;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Style:"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v2, 0x6

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    array-length v3, v2

    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    const-string v5, "SsaStyle"

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    .line 160
    iget v0, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 162
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 168
    :cond_0
    :try_start_0
    new-instance v3, Landroidx/media3/extractor/text/ssa/SsaStyle;

    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v4, v2, v4

    .line 169
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 170
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 171
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v7

    .line 173
    :goto_0
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v4, v7, :cond_2

    .line 174
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object v10, v6

    .line 176
    :goto_1
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    if-eq v4, v7, :cond_3

    .line 177
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v11, v4

    goto :goto_2

    :cond_3
    move-object v11, v6

    .line 179
    :goto_2
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v4, v7, :cond_4

    .line 180
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseFontSize(Ljava/lang/String;)F

    move-result v4

    goto :goto_3

    :cond_4
    const v4, -0x800001

    :goto_3
    move v12, v4

    .line 181
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    const/4 v14, 0x0

    if-eq v4, v7, :cond_5

    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    aget-object v4, v2, v4

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v14

    :goto_4
    iget v15, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v15, v7, :cond_6

    iget v15, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    aget-object v15, v2, v15

    .line 185
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    move v15, v14

    :goto_5
    iget v13, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v13, v7, :cond_7

    iget v13, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    aget-object v13, v2, v13

    .line 187
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v17, 0x1

    goto :goto_6

    :cond_7
    move/from16 v17, v14

    :goto_6
    iget v13, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v13, v7, :cond_8

    iget v13, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    aget-object v13, v2, v13

    .line 189
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    move/from16 v16, v14

    .line 190
    :goto_7
    iget v13, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    if-eq v13, v7, :cond_9

    .line 191
    iget v0, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBorderStyle(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_9
    move v0, v7

    :goto_8
    move-object v7, v3

    move v13, v4

    move v14, v15

    move/from16 v15, v17

    move/from16 v17, v0

    .line 192
    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping malformed \'Style:\' line: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method private static isValidAlignment(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidBorderStyle(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static parseAlignment(Ljava/lang/String;)I
    .locals 2

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->isValidAlignment(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 208
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring unknown alignment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static parseBooleanValue(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse boolean value: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static parseBorderStyle(Ljava/lang/String;)I
    .locals 2

    .line 232
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->isValidBorderStyle(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 239
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring unknown BorderStyle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    :try_start_0
    const-string v0, "&H"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 279
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    .line 285
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    .line 286
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    .line 287
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    and-long/2addr v2, v6

    .line 288
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    .line 289
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse color expression: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFontSize(Ljava/lang/String;)F
    .locals 3

    .line 294
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse font size: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method
