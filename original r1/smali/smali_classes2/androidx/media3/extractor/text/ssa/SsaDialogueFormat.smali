.class final Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SsaDialogueFormat.java"


# instance fields
.field public final endTimeIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    iput p3, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    iput p4, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
    .locals 9

    const-string v0, "Format:"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x7

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v2, v1

    .line 63
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 64
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v3, v0

    goto :goto_2

    :sswitch_0
    const-string v8, "style"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "start"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string v8, "text"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "end"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v6, v2

    goto :goto_3

    :pswitch_1
    move v4, v2

    goto :goto_3

    :pswitch_2
    move v7, v2

    goto :goto_3

    :pswitch_3
    move v5, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eq v4, v0, :cond_5

    if-eq v5, v0, :cond_5

    if-eq v7, v0, :cond_5

    .line 82
    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    array-length v8, p0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;-><init>(IIIII)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_3
        0x36452d -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
