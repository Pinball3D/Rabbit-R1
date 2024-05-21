.class public final Ltech/rabbit/r1launcher/ui/theme/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Theme.kt\ntech/rabbit/r1launcher/ui/theme/ThemeKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,70:1\n76#2:71\n76#2:72\n*S KotlinDebug\n*F\n+ 1 Theme.kt\ntech/rabbit/r1launcher/ui/theme/ThemeKt\n*L\n49#1:71\n56#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a4\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0011\u0010\u0008\u001a\r\u0012\u0004\u0012\u00020\u00040\t\u00a2\u0006\u0002\u0008\nH\u0007\u00a2\u0006\u0002\u0010\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "DarkColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "LightColorScheme",
        "R1LauncherTheme",
        "",
        "darkTheme",
        "",
        "dynamicColor",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
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
.field private static final DarkColorScheme:Landroidx/compose/material3/ColorScheme;

.field private static final LightColorScheme:Landroidx/compose/material3/ColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 19
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->getPurple80()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 20
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->getPurpleGrey80()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 21
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->getPink80()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const v58, 0x1ffffdde

    const/16 v59, 0x0

    .line 18
    invoke-static/range {v0 .. v59}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-G1PFc-w$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 25
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->getPurple40()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    .line 26
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->getPurpleGrey40()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    .line 27
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/ColorKt;->getPink40()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const v59, 0x1ffffdde

    const/16 v60, 0x0

    .line 24
    invoke-static/range {v1 .. v60}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-G1PFc-w$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/ui/theme/ThemeKt;->LightColorScheme:Landroidx/compose/material3/ColorScheme;

    return-void
.end method

.method public static final R1LauncherTheme(ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x321d67eb

    .line 46
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    and-int/lit8 v1, p4, 0xe

    if-nez v1, :cond_1

    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_0

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v3, p4, 0x70

    if-nez v3, :cond_4

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_4
    :goto_3
    and-int/lit8 v3, p5, 0x4

    if-eqz v3, :cond_5

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_5
    and-int/lit16 v3, p4, 0x380

    if-nez v3, :cond_7

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x100

    goto :goto_4

    :cond_6
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    :cond_7
    :goto_5
    and-int/lit16 v3, v1, 0x2db

    const/16 v4, 0x92

    if-ne v3, v4, :cond_a

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_7

    .line 70
    :cond_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_9
    :goto_6
    move v2, p0

    move v3, p1

    goto/16 :goto_b

    .line 46
    :cond_a
    :goto_7
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, p4, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_8

    .line 44
    :cond_b
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_e

    and-int/lit8 v1, v1, -0xf

    goto :goto_9

    :cond_c
    :goto_8
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_d

    .line 42
    invoke-static {p3, v4}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result p0

    and-int/lit8 v1, v1, -0xf

    :cond_d
    if-eqz v2, :cond_e

    const/4 p1, 0x1

    .line 44
    :cond_e
    :goto_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, -0x1

    const-string v3, "tech.rabbit.r1launcher.ui.theme.R1LauncherTheme (Theme.kt:45)"

    .line 46
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    const v0, -0x4eb0a1c2

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    const v2, 0x789c5f52

    if-eqz p1, :cond_11

    .line 49
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .line 71
    invoke-static {p3, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 49
    check-cast v3, Landroid/content/Context;

    if-eqz p0, :cond_10

    .line 50
    invoke-static {v3}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    goto :goto_a

    :cond_10
    invoke-static {v3}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    goto :goto_a

    :cond_11
    if-eqz p0, :cond_12

    sget-object v3, Ltech/rabbit/r1launcher/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    goto :goto_a

    :cond_12
    sget-object v3, Ltech/rabbit/r1launcher/ui/theme/ThemeKt;->LightColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 47
    :goto_a
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 56
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 72
    invoke-static {p3, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 56
    check-cast v0, Landroid/view/View;

    const v2, -0x4eb0a063

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_13

    .line 58
    new-instance v2, Ltech/rabbit/r1launcher/ui/theme/ThemeKt$R1LauncherTheme$1;

    invoke-direct {v2, v0, v3, p0}, Ltech/rabbit/r1launcher/ui/theme/ThemeKt$R1LauncherTheme$1;-><init>(Landroid/view/View;Landroidx/compose/material3/ColorScheme;Z)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, p3, v4}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_13
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x0

    .line 67
    invoke-static {}, Ltech/rabbit/r1launcher/ui/theme/TypeKt;->getTypography()Landroidx/compose/material3/Typography;

    move-result-object v0

    shl-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit16 v6, v1, 0x180

    const/4 v7, 0x2

    move-object v1, v3

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    .line 65
    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto/16 :goto_6

    .line 70
    :goto_b
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_14

    new-instance p1, Ltech/rabbit/r1launcher/ui/theme/ThemeKt$R1LauncherTheme$2;

    move-object v1, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/ui/theme/ThemeKt$R1LauncherTheme$2;-><init>(ZZLkotlin/jvm/functions/Function2;II)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method
