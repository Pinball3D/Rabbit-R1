.class public final Landroidx/compose/ui/graphics/vector/FastFloatParserKt;
.super Ljava/lang/Object;
.source "FastFloatParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u001a\u0019\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0082\u0008\u001a\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0082\u0008\u001a\u0019\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0008H\u0082\u0008\"\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\u00a8\u0006\u0010"
    }
    d2 = {
        "isDigit",
        "",
        "",
        "(C)Z",
        "charAt",
        "s",
        "",
        "index",
        "",
        "fullMultiplicationHighBits",
        "",
        "x",
        "y",
        "parseFourDigits",
        "str",
        "offset",
        "ui-graphics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final charAt(Ljava/lang/CharSequence;I)C
    .locals 1

    .line 592
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 593
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final fullMultiplicationHighBits(JJ)J
    .locals 9

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    const/16 v4, 0x20

    ushr-long/2addr p0, v4

    and-long v5, p2, v0

    ushr-long/2addr p2, v4

    mul-long v7, p0, p2

    mul-long/2addr p2, v2

    mul-long/2addr p0, v5

    mul-long/2addr v2, v5

    ushr-long/2addr v2, v4

    add-long/2addr p0, v2

    and-long/2addr v0, p2

    add-long/2addr p0, v0

    ushr-long/2addr p0, v4

    add-long/2addr v7, p0

    ushr-long p0, p2, v4

    add-long/2addr v7, p0

    return-wide v7
.end method

.method private static final isDigit(C)Z
    .locals 1

    add-int/lit8 p0, p0, -0x30

    int-to-char p0, p0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final parseFourDigits(Ljava/lang/CharSequence;I)I
    .locals 5

    .line 618
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    .line 619
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 620
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    .line 621
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x30

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    const-wide v0, 0x30003000300030L

    sub-long v0, p0, v0

    const-wide v3, 0x46004600460046L    # 2.447700077935472E-307

    add-long/2addr p0, v3

    or-long/2addr p0, v0

    const-wide v3, -0x7f007f007f0080L

    and-long/2addr p0, v3

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const-wide p0, 0x3e80064000a0001L

    mul-long/2addr v0, p0

    ushr-long p0, v0, v2

    long-to-int p0, p0

    :goto_0
    return p0
.end method
