.class public final Ltech/rabbit/r1launcher/ui/theme/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\"\u0013\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0003\"\u0013\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0003\"\u0013\u0010\t\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\n\u0010\u0003\"\u0013\u0010\u000b\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0003\"\u0013\u0010\r\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "Pink40",
        "Landroidx/compose/ui/graphics/Color;",
        "getPink40",
        "()J",
        "J",
        "Pink80",
        "getPink80",
        "Purple40",
        "getPurple40",
        "Purple80",
        "getPurple80",
        "PurpleGrey40",
        "getPurpleGrey40",
        "PurpleGrey80",
        "getPurpleGrey80",
        "app_productionEnvRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Pink40:J

.field private static final Pink80:J

.field private static final Purple40:J

.field private static final Purple80:J

.field private static final PurpleGrey40:J

.field private static final PurpleGrey80:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xffd0bcffL

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Purple80:J

    const-wide v0, 0xffccc2dcL

    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->PurpleGrey80:J

    const-wide v0, 0xffefb8c8L

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Pink80:J

    const-wide v0, 0xff6650a4L

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Purple40:J

    const-wide v0, 0xff625b71L

    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->PurpleGrey40:J

    const-wide v0, 0xff7d5260L

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Pink40:J

    return-void
.end method

.method public static final getPink40()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Pink40:J

    return-wide v0
.end method

.method public static final getPink80()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Pink80:J

    return-wide v0
.end method

.method public static final getPurple40()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Purple40:J

    return-wide v0
.end method

.method public static final getPurple80()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->Purple80:J

    return-wide v0
.end method

.method public static final getPurpleGrey40()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->PurpleGrey40:J

    return-wide v0
.end method

.method public static final getPurpleGrey80()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->PurpleGrey80:J

    return-wide v0
.end method
