.class public final Landroidx/compose/ui/node/HitTestResultKt;
.super Ljava/lang/Object;
.source "HitTestResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "DistanceAndInLayer",
        "Landroidx/compose/ui/node/DistanceAndInLayer;",
        "distance",
        "",
        "isInLayer",
        "",
        "(FZ)J",
        "ui_release"
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
.method private static final DistanceAndInLayer(FZ)J
    .locals 4

    .line 337
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 339
    invoke-static {p0, p1}, Landroidx/compose/ui/node/DistanceAndInLayer;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$DistanceAndInLayer(FZ)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndInLayer(FZ)J

    move-result-wide p0

    return-wide p0
.end method
