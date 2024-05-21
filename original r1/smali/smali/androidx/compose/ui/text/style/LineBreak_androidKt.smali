.class public final Landroidx/compose/ui/text/style/LineBreak_androidKt;
.super Ljava/lang/Object;
.source "LineBreak.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "packBytes",
        "",
        "i1",
        "i2",
        "i3",
        "unpackByte1",
        "mask",
        "unpackByte2",
        "unpackByte3",
        "ui-text_release"
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
.method public static final synthetic access$packBytes(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->packBytes(III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackByte1(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->unpackByte1(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackByte2(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->unpackByte2(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$unpackByte3(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak_androidKt;->unpackByte3(I)I

    move-result p0

    return p0
.end method

.method private static final packBytes(III)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private static final unpackByte1(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static final unpackByte2(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static final unpackByte3(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
