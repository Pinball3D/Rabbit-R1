.class public final Landroidx/compose/ui/unit/VelocityKt;
.super Ljava/lang/Object;
.source "Velocity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Velocity.kt\nandroidx/compose/ui/unit/VelocityKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,144:1\n25#2,3:145\n*S KotlinDebug\n*F\n+ 1 Velocity.kt\nandroidx/compose/ui/unit/VelocityKt\n*L\n32#1:145,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "Velocity",
        "Landroidx/compose/ui/unit/Velocity;",
        "x",
        "",
        "y",
        "(FF)J",
        "ui-unit_release"
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
.method public static final Velocity(FF)J
    .locals 4

    .line 145
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 146
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
