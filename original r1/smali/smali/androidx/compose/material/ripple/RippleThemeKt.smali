.class public final Landroidx/compose/material/ripple/RippleThemeKt;
.super Ljava/lang/Object;
.source "RippleTheme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "DarkThemeRippleAlpha",
        "Landroidx/compose/material/ripple/RippleAlpha;",
        "LightThemeHighContrastRippleAlpha",
        "LightThemeLowContrastRippleAlpha",
        "LocalRippleTheme",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/material/ripple/RippleTheme;",
        "getLocalRippleTheme",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "material-ripple_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DarkThemeRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field private static final LightThemeHighContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field private static final LightThemeLowContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field private static final LocalRippleTheme:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/ripple/RippleTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 163
    sget-object v0, Landroidx/compose/material/ripple/RippleThemeKt$LocalRippleTheme$1;->INSTANCE:Landroidx/compose/material/ripple/RippleThemeKt$LocalRippleTheme$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LocalRippleTheme:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 174
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3e75c28f    # 0.24f

    const v3, 0x3da3d70a    # 0.08f

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LightThemeHighContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    .line 190
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3d23d70a    # 0.04f

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LightThemeLowContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    .line 200
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->DarkThemeRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-void
.end method

.method public static final synthetic access$getDarkThemeRippleAlpha$p()Landroidx/compose/material/ripple/RippleAlpha;
    .locals 1

    sget-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->DarkThemeRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object v0
.end method

.method public static final synthetic access$getLightThemeHighContrastRippleAlpha$p()Landroidx/compose/material/ripple/RippleAlpha;
    .locals 1

    sget-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LightThemeHighContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object v0
.end method

.method public static final synthetic access$getLightThemeLowContrastRippleAlpha$p()Landroidx/compose/material/ripple/RippleAlpha;
    .locals 1

    sget-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LightThemeLowContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object v0
.end method

.method public static final getLocalRippleTheme()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/ripple/RippleTheme;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material/ripple/RippleThemeKt;->LocalRippleTheme:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
