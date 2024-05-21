.class public final Landroidx/compose/ui/text/android/InlineClassUtilsKt;
.super Ljava/lang/Object;
.source "InlineClassUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\u0008\u001a\u0011\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0001H\u0080\u0008\u001a\u0011\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0001H\u0080\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "packInts",
        "",
        "val1",
        "",
        "val2",
        "unpackInt1",
        "value",
        "unpackInt2",
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
.method public static final packInts(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final unpackInt1(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final unpackInt2(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
