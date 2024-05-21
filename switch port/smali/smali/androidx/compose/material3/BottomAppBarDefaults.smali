.class public final Landroidx/compose/material3/BottomAppBarDefaults;
.super Ljava/lang/Object;
.source "AppBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\r8G\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\r8G\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00138G\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/BottomAppBarDefaults;",
        "",
        "()V",
        "ContainerElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "getContainerElevation-D9Ej5fM",
        "()F",
        "F",
        "ContentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "getContentPadding",
        "()Landroidx/compose/foundation/layout/PaddingValues;",
        "bottomAppBarFabColor",
        "Landroidx/compose/ui/graphics/Color;",
        "getBottomAppBarFabColor",
        "(Landroidx/compose/runtime/Composer;I)J",
        "containerColor",
        "getContainerColor",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "getWindowInsets",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;",
        "material3_release"
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
.field public static final $stable:I

.field private static final ContainerElevation:F

.field private static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public static final INSTANCE:Landroidx/compose/material3/BottomAppBarDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/material3/BottomAppBarDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/BottomAppBarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/BottomAppBarDefaults;->INSTANCE:Landroidx/compose/material3/BottomAppBarDefaults;

    .line 976
    sget-object v0, Landroidx/compose/material3/tokens/BottomAppBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/BottomAppBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/BottomAppBarTokens;->getContainerElevation-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/BottomAppBarDefaults;->ContainerElevation:F

    .line 983
    invoke-static {}, Landroidx/compose/material3/AppBarKt;->access$getBottomAppBarHorizontalPadding$p()F

    move-result v1

    .line 984
    invoke-static {}, Landroidx/compose/material3/AppBarKt;->getBottomAppBarVerticalPadding()F

    move-result v2

    .line 985
    invoke-static {}, Landroidx/compose/material3/AppBarKt;->access$getBottomAppBarHorizontalPadding$p()F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 982
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/BottomAppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBottomAppBarFabColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    const p0, -0x574b6f4e

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C1000@45991L9:AppBar.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.BottomAppBarDefaults.<get-bottomAppBarFabColor> (AppBar.kt:999)"

    .line 1001
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/FabSecondaryTokens;->INSTANCE:Landroidx/compose/material3/tokens/FabSecondaryTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FabSecondaryTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method

.method public final getContainerColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    const p0, -0x15f46c6e

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C972@45013L9:AppBar.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.BottomAppBarDefaults.<get-containerColor> (AppBar.kt:972)"

    .line 973
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/BottomAppBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/BottomAppBarTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/BottomAppBarTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-wide v0
.end method

.method public final getContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/BottomAppBarDefaults;->ContainerElevation:F

    return p0
.end method

.method public final getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    sget-object p0, Landroidx/compose/material3/BottomAppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public final getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 2

    const p0, 0x290fb999

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C993@45695L29:AppBar.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.BottomAppBarDefaults.<get-windowInsets> (AppBar.kt:992)"

    .line 993
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 994
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    const/16 p2, 0x8

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SystemBarsDefaultInsets_androidKt;->getSystemBarsForVisualComponents(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    .line 995
    sget-object p2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result p2

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getBottom-JoeWqyM()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
