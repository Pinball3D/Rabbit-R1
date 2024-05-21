.class final Landroidx/media3/extractor/text/ssa/SsaStyle$Format;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Format"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final boldIndex:I

.field public final borderStyleIndex:I

.field public final fontSizeIndex:I

.field public final italicIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final outlineColorIndex:I

.field public final primaryColorIndex:I

.field public final strikeoutIndex:I

.field public final underlineIndex:I


# direct methods
.method private constructor <init>(IIIIIIIIIII)V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    iput p3, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    iput p4, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    iput p6, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    iput p7, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    iput p8, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    iput p9, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    iput p10, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    iput p11, p0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaStyle$Format;
    .locals 17

    const/4 v0, 0x7

    move-object/from16 v1, p0

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move v4, v3

    .line 375
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_a

    .line 376
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move v0, v2

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "outlinecolour"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "alignment"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "borderstyle"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    goto :goto_2

    :sswitch_3
    const-string v0, "fontsize"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_2

    :sswitch_4
    const-string v0, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_5
    const-string v0, "bold"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_6
    const-string v0, "primarycolour"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_7
    const-string v0, "strikeout"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_8
    const-string v0, "underline"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_9
    const-string v0, "italic"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v9, v4

    goto :goto_3

    :pswitch_1
    move v7, v4

    goto :goto_3

    :pswitch_2
    move v15, v4

    goto :goto_3

    :pswitch_3
    move v10, v4

    goto :goto_3

    :pswitch_4
    move v6, v4

    goto :goto_3

    :pswitch_5
    move v11, v4

    goto :goto_3

    :pswitch_6
    move v8, v4

    goto :goto_3

    :pswitch_7
    move v14, v4

    goto :goto_3

    :pswitch_8
    move v13, v4

    goto :goto_3

    :pswitch_9
    move v12, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_a
    if-eq v6, v2, :cond_b

    .line 410
    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;

    array-length v1, v1

    move-object v5, v0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
