.class public final Landroidx/compose/material/ripple/RippleTheme$Companion;
.super Ljava/lang/Object;
.source "RippleTheme.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/ripple/RippleTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\r\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material/ripple/RippleTheme$Companion;",
        "",
        "()V",
        "defaultRippleAlpha",
        "Landroidx/compose/material/ripple/RippleAlpha;",
        "contentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "lightTheme",
        "",
        "defaultRippleAlpha-DxMtmZc",
        "(JZ)Landroidx/compose/material/ripple/RippleAlpha;",
        "defaultRippleColor",
        "defaultRippleColor-5vOe2sY",
        "(JZ)J",
        "material-ripple_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/material/ripple/RippleTheme$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/ripple/RippleTheme$Companion;

    invoke-direct {v0}, Landroidx/compose/material/ripple/RippleTheme$Companion;-><init>()V

    sput-object v0, Landroidx/compose/material/ripple/RippleTheme$Companion;->$$INSTANCE:Landroidx/compose/material/ripple/RippleTheme$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final defaultRippleAlpha-DxMtmZc(JZ)Landroidx/compose/material/ripple/RippleAlpha;
    .locals 0

    if-eqz p3, :cond_1

    .line 89
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    .line 90
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->access$getLightThemeHighContrastRippleAlpha$p()Landroidx/compose/material/ripple/RippleAlpha;

    move-result-object p0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->access$getLightThemeLowContrastRippleAlpha$p()Landroidx/compose/material/ripple/RippleAlpha;

    move-result-object p0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->access$getDarkThemeRippleAlpha$p()Landroidx/compose/material/ripple/RippleAlpha;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final defaultRippleColor-5vOe2sY(JZ)J
    .locals 4

    .line 67
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    move-result p0

    if-nez p3, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    .line 71
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method
