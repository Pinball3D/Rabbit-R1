.class public final Landroidx/compose/material3/ColorSchemeKt;
.super Ljava/lang/Object;
.source "ColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ColorSchemeKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorScheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorScheme.kt\nandroidx/compose/material3/ColorSchemeKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,615:1\n658#2:616\n646#2:617\n76#3:618\n154#4:619\n*S KotlinDebug\n*F\n+ 1 ColorScheme.kt\nandroidx/compose/material3/ColorSchemeKt\n*L\n475#1:616\n475#1:617\n476#1:618\n504#1:619\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u001d\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u00b5\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00082\u0008\u0008\u0002\u0010!\u001a\u00020\u00082\u0008\u0008\u0002\u0010\"\u001a\u00020\u00082\u0008\u0008\u0002\u0010#\u001a\u00020\u00082\u0008\u0008\u0002\u0010$\u001a\u00020\u00082\u0008\u0008\u0002\u0010%\u001a\u00020\u00082\u0008\u0008\u0002\u0010&\u001a\u00020\u00082\u0008\u0008\u0002\u0010\'\u001a\u00020\u00082\u0008\u0008\u0002\u0010(\u001a\u00020\u00082\u0008\u0008\u0002\u0010)\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010+\u001a\u00b5\u0002\u0010,\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00082\u0008\u0008\u0002\u0010!\u001a\u00020\u00082\u0008\u0008\u0002\u0010\"\u001a\u00020\u00082\u0008\u0008\u0002\u0010#\u001a\u00020\u00082\u0008\u0008\u0002\u0010$\u001a\u00020\u00082\u0008\u0008\u0002\u0010%\u001a\u00020\u00082\u0008\u0008\u0002\u0010&\u001a\u00020\u00082\u0008\u0008\u0002\u0010\'\u001a\u00020\u00082\u0008\u0008\u0002\u0010(\u001a\u00020\u00082\u0008\u0008\u0002\u0010)\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008-\u0010+\u001a)\u0010.\u001a\u00020\u0008*\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010/\u001a\u000200H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00081\u00102\u001a\u001f\u0010\u0007\u001a\u00020\u0008*\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00083\u00104\u001a\u001c\u00105\u001a\u00020\u0008*\u00020\u00042\u0006\u00106\u001a\u000207H\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u00108\u001a\u001f\u00109\u001a\u00020\u0008*\u00020\u00042\u0006\u0010/\u001a\u000200\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008:\u0010;\u001a\u0014\u0010<\u001a\u00020\u0008*\u000207H\u0001\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010=\u001a\u0014\u0010>\u001a\u00020?*\u00020\u00042\u0006\u0010@\u001a\u00020\u0004H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006A"
    }
    d2 = {
        "DisabledAlpha",
        "",
        "LocalColorScheme",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/material3/ColorScheme;",
        "getLocalColorScheme",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "contentColorFor",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "contentColorFor-ek8zF_U",
        "(JLandroidx/compose/runtime/Composer;I)J",
        "darkColorScheme",
        "primary",
        "onPrimary",
        "primaryContainer",
        "onPrimaryContainer",
        "inversePrimary",
        "secondary",
        "onSecondary",
        "secondaryContainer",
        "onSecondaryContainer",
        "tertiary",
        "onTertiary",
        "tertiaryContainer",
        "onTertiaryContainer",
        "background",
        "onBackground",
        "surface",
        "onSurface",
        "surfaceVariant",
        "onSurfaceVariant",
        "surfaceTint",
        "inverseSurface",
        "inverseOnSurface",
        "error",
        "onError",
        "errorContainer",
        "onErrorContainer",
        "outline",
        "outlineVariant",
        "scrim",
        "darkColorScheme-G1PFc-w",
        "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;",
        "lightColorScheme",
        "lightColorScheme-G1PFc-w",
        "applyTonalElevation",
        "elevation",
        "Landroidx/compose/ui/unit/Dp;",
        "applyTonalElevation-Hht5A8o",
        "(Landroidx/compose/material3/ColorScheme;JF)J",
        "contentColorFor-4WTKRHQ",
        "(Landroidx/compose/material3/ColorScheme;J)J",
        "fromToken",
        "value",
        "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J",
        "surfaceColorAtElevation",
        "surfaceColorAtElevation-3ABfNKs",
        "(Landroidx/compose/material3/ColorScheme;F)J",
        "toColor",
        "(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J",
        "updateColorSchemeFrom",
        "",
        "other",
        "material3_release"
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
.field public static final DisabledAlpha:F = 0.38f

.field private static final LocalColorScheme:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/ColorScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 602
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt$LocalColorScheme$1;->INSTANCE:Landroidx/compose/material3/ColorSchemeKt$LocalColorScheme$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final applyTonalElevation-Hht5A8o(Landroidx/compose/material3/ColorScheme;JF)J
    .locals 2

    const-string v0, "$this$applyTonalElevation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p0, p3}, Landroidx/compose/material3/ColorSchemeKt;->surfaceColorAtElevation-3ABfNKs(Landroidx/compose/material3/ColorScheme;F)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public static final contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J
    .locals 2

    const-string v0, "$this$contentColorFor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSecondary-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSecondary-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getTertiary-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnTertiary-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 443
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnBackground-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 444
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnError-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 445
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 446
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 447
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 448
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSecondaryContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 449
    :cond_8
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getTertiaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnTertiaryContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 450
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getErrorContainer-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnErrorContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 451
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getInverseSurface-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getInverseOnSurface-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 452
    :cond_b
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J
    .locals 3

    const-string v0, "C(contentColorFor)P(0:c#ui.graphics.Color)*474@21497L11,475@21581L7:ColorScheme.kt#uh7d8r"

    const v1, 0x1e5fb886

    .line 475
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.contentColorFor (ColorScheme.kt:473)"

    invoke-static {v1, p3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p3, p2, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p3

    invoke-static {p3, p0, p1}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide p0

    .line 617
    sget-object p3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    cmp-long p3, p0, v0

    if-eqz p3, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/CompositionLocal;

    const p1, 0x789c5f52

    const-string p3, "CC:CompositionLocal.kt#9igjgp"

    .line 618
    invoke-static {p2, p1, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 476
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide p0

    .line 475
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-wide p0
.end method

.method public static final darkColorScheme-G1PFc-w(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;
    .locals 61

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-wide/from16 v21, p20

    move-wide/from16 v23, p22

    move-wide/from16 v25, p24

    move-wide/from16 v27, p26

    move-wide/from16 v29, p28

    move-wide/from16 v31, p30

    move-wide/from16 v33, p32

    move-wide/from16 v35, p34

    move-wide/from16 v37, p36

    move-wide/from16 v39, p38

    move-wide/from16 v41, p40

    move-wide/from16 v43, p42

    move-wide/from16 v45, p44

    move-wide/from16 v47, p46

    move-wide/from16 v49, p48

    move-wide/from16 v51, p50

    move-wide/from16 v53, p52

    move-wide/from16 v55, p54

    move-wide/from16 v57, p56

    .line 389
    new-instance v60, Landroidx/compose/material3/ColorScheme;

    move-object/from16 v0, v60

    const/16 v59, 0x0

    invoke-direct/range {v0 .. v59}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v60
.end method

.method public static synthetic darkColorScheme-G1PFc-w$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;
    .locals 45

    move/from16 v0, p58

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 359
    sget-object v1, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getPrimary-0d7_KjU()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p0

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 360
    sget-object v3, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnPrimary-0d7_KjU()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 361
    sget-object v5, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    .line 362
    sget-object v7, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v7

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    .line 363
    sget-object v9, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v9}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getInversePrimary-0d7_KjU()J

    move-result-wide v9

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    .line 364
    sget-object v11, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v11}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getSecondary-0d7_KjU()J

    move-result-wide v11

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p10

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    .line 365
    sget-object v13, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v13}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnSecondary-0d7_KjU()J

    move-result-wide v13

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p12

    :goto_6
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_7

    .line 366
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p14

    :goto_7
    move-wide/from16 p14, v15

    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_8

    .line 367
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnSecondaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_8

    :cond_8
    move-wide/from16 v15, p16

    :goto_8
    move-wide/from16 p16, v15

    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    .line 368
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getTertiary-0d7_KjU()J

    move-result-wide v15

    goto :goto_9

    :cond_9
    move-wide/from16 v15, p18

    :goto_9
    move-wide/from16 p18, v15

    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    .line 369
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnTertiary-0d7_KjU()J

    move-result-wide v15

    goto :goto_a

    :cond_a
    move-wide/from16 v15, p20

    :goto_a
    move-wide/from16 p20, v15

    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    .line 370
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getTertiaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_b

    :cond_b
    move-wide/from16 v15, p22

    :goto_b
    move-wide/from16 p22, v15

    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    .line 371
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnTertiaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_c

    :cond_c
    move-wide/from16 v15, p24

    :goto_c
    move-wide/from16 p24, v15

    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 372
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getBackground-0d7_KjU()J

    move-result-wide v15

    goto :goto_d

    :cond_d
    move-wide/from16 v15, p26

    :goto_d
    move-wide/from16 p26, v15

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    .line 373
    sget-object v15, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnBackground-0d7_KjU()J

    move-result-wide v15

    goto :goto_e

    :cond_e
    move-wide/from16 v15, p28

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    .line 374
    sget-object v17, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getSurface-0d7_KjU()J

    move-result-wide v17

    goto :goto_f

    :cond_f
    move-wide/from16 v17, p30

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    .line 375
    sget-object v19, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnSurface-0d7_KjU()J

    move-result-wide v19

    goto :goto_10

    :cond_10
    move-wide/from16 v19, p32

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    .line 376
    sget-object v21, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v21

    goto :goto_11

    :cond_11
    move-wide/from16 v21, p34

    :goto_11
    const/high16 v23, 0x40000

    and-int v23, v0, v23

    if-eqz v23, :cond_12

    .line 377
    sget-object v23, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v23

    goto :goto_12

    :cond_12
    move-wide/from16 v23, p36

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    move-wide/from16 v25, v1

    goto :goto_13

    :cond_13
    move-wide/from16 v25, p38

    :goto_13
    const/high16 v27, 0x100000

    and-int v27, v0, v27

    if-eqz v27, :cond_14

    .line 379
    sget-object v27, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getInverseSurface-0d7_KjU()J

    move-result-wide v27

    goto :goto_14

    :cond_14
    move-wide/from16 v27, p40

    :goto_14
    const/high16 v29, 0x200000

    and-int v29, v0, v29

    if-eqz v29, :cond_15

    .line 380
    sget-object v29, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getInverseOnSurface-0d7_KjU()J

    move-result-wide v29

    goto :goto_15

    :cond_15
    move-wide/from16 v29, p42

    :goto_15
    const/high16 v31, 0x400000

    and-int v31, v0, v31

    if-eqz v31, :cond_16

    .line 381
    sget-object v31, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getError-0d7_KjU()J

    move-result-wide v31

    goto :goto_16

    :cond_16
    move-wide/from16 v31, p44

    :goto_16
    const/high16 v33, 0x800000

    and-int v33, v0, v33

    if-eqz v33, :cond_17

    .line 382
    sget-object v33, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnError-0d7_KjU()J

    move-result-wide v33

    goto :goto_17

    :cond_17
    move-wide/from16 v33, p46

    :goto_17
    const/high16 v35, 0x1000000

    and-int v35, v0, v35

    if-eqz v35, :cond_18

    .line 383
    sget-object v35, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getErrorContainer-0d7_KjU()J

    move-result-wide v35

    goto :goto_18

    :cond_18
    move-wide/from16 v35, p48

    :goto_18
    const/high16 v37, 0x2000000

    and-int v37, v0, v37

    if-eqz v37, :cond_19

    .line 384
    sget-object v37, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOnErrorContainer-0d7_KjU()J

    move-result-wide v37

    goto :goto_19

    :cond_19
    move-wide/from16 v37, p50

    :goto_19
    const/high16 v39, 0x4000000

    and-int v39, v0, v39

    if-eqz v39, :cond_1a

    .line 385
    sget-object v39, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOutline-0d7_KjU()J

    move-result-wide v39

    goto :goto_1a

    :cond_1a
    move-wide/from16 v39, p52

    :goto_1a
    const/high16 v41, 0x8000000

    and-int v41, v0, v41

    if-eqz v41, :cond_1b

    .line 386
    sget-object v41, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getOutlineVariant-0d7_KjU()J

    move-result-wide v41

    goto :goto_1b

    :cond_1b
    move-wide/from16 v41, p54

    :goto_1b
    const/high16 v43, 0x10000000

    and-int v0, v0, v43

    if-eqz v0, :cond_1c

    .line 387
    sget-object v0, Landroidx/compose/material3/tokens/ColorDarkTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorDarkTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ColorDarkTokens;->getScrim-0d7_KjU()J

    move-result-wide v43

    goto :goto_1c

    :cond_1c
    move-wide/from16 v43, p56

    :goto_1c
    move-wide/from16 p0, v1

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p12, v13

    move-wide/from16 p28, v15

    move-wide/from16 p30, v17

    move-wide/from16 p32, v19

    move-wide/from16 p34, v21

    move-wide/from16 p36, v23

    move-wide/from16 p38, v25

    move-wide/from16 p40, v27

    move-wide/from16 p42, v29

    move-wide/from16 p44, v31

    move-wide/from16 p46, v33

    move-wide/from16 p48, v35

    move-wide/from16 p50, v37

    move-wide/from16 p52, v39

    move-wide/from16 p54, v41

    move-wide/from16 p56, v43

    .line 358
    invoke-static/range {p0 .. p57}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-G1PFc-w(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static final fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 590
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getTertiaryContainer-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 589
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getTertiary-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 588
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 587
    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 586
    :pswitch_4
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 585
    :pswitch_5
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSecondary-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 584
    :pswitch_6
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getScrim-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 583
    :pswitch_7
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 582
    :pswitch_8
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 581
    :pswitch_9
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOutlineVariant-0d7_KjU()J

    move-result-wide p0

    goto/16 :goto_0

    .line 580
    :pswitch_a
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 579
    :pswitch_b
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnTertiaryContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 578
    :pswitch_c
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnTertiary-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 577
    :pswitch_d
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurfaceTint-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 576
    :pswitch_e
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 575
    :pswitch_f
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 574
    :pswitch_10
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSecondaryContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 573
    :pswitch_11
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnSecondary-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 572
    :pswitch_12
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 571
    :pswitch_13
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 570
    :pswitch_14
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnErrorContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 569
    :pswitch_15
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnError-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 568
    :pswitch_16
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getOnBackground-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 567
    :pswitch_17
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getInverseSurface-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 566
    :pswitch_18
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getInversePrimary-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 565
    :pswitch_19
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getInverseOnSurface-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 564
    :pswitch_1a
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getErrorContainer-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 563
    :pswitch_1b
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide p0

    goto :goto_0

    .line 562
    :pswitch_1c
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide p0

    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getLocalColorScheme()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/ColorScheme;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final lightColorScheme-G1PFc-w(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;
    .locals 61

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-wide/from16 v21, p20

    move-wide/from16 v23, p22

    move-wide/from16 v25, p24

    move-wide/from16 v27, p26

    move-wide/from16 v29, p28

    move-wide/from16 v31, p30

    move-wide/from16 v33, p32

    move-wide/from16 v35, p34

    move-wide/from16 v37, p36

    move-wide/from16 v39, p38

    move-wide/from16 v41, p40

    move-wide/from16 v43, p42

    move-wide/from16 v45, p44

    move-wide/from16 v47, p46

    move-wide/from16 v49, p48

    move-wide/from16 v51, p50

    move-wide/from16 v53, p52

    move-wide/from16 v55, p54

    move-wide/from16 v57, p56

    .line 323
    new-instance v60, Landroidx/compose/material3/ColorScheme;

    move-object/from16 v0, v60

    const/16 v59, 0x0

    invoke-direct/range {v0 .. v59}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v60
.end method

.method public static synthetic lightColorScheme-G1PFc-w$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;
    .locals 45

    move/from16 v0, p58

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ColorLightTokens;->getPrimary-0d7_KjU()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p0

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 294
    sget-object v3, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnPrimary-0d7_KjU()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 295
    sget-object v5, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/ColorLightTokens;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    .line 296
    sget-object v7, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v7

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    .line 297
    sget-object v9, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v9}, Landroidx/compose/material3/tokens/ColorLightTokens;->getInversePrimary-0d7_KjU()J

    move-result-wide v9

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    .line 298
    sget-object v11, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v11}, Landroidx/compose/material3/tokens/ColorLightTokens;->getSecondary-0d7_KjU()J

    move-result-wide v11

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p10

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    .line 299
    sget-object v13, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v13}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnSecondary-0d7_KjU()J

    move-result-wide v13

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p12

    :goto_6
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_7

    .line 300
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p14

    :goto_7
    move-wide/from16 p14, v15

    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_8

    .line 301
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnSecondaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_8

    :cond_8
    move-wide/from16 v15, p16

    :goto_8
    move-wide/from16 p16, v15

    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    .line 302
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getTertiary-0d7_KjU()J

    move-result-wide v15

    goto :goto_9

    :cond_9
    move-wide/from16 v15, p18

    :goto_9
    move-wide/from16 p18, v15

    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    .line 303
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnTertiary-0d7_KjU()J

    move-result-wide v15

    goto :goto_a

    :cond_a
    move-wide/from16 v15, p20

    :goto_a
    move-wide/from16 p20, v15

    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    .line 304
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getTertiaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_b

    :cond_b
    move-wide/from16 v15, p22

    :goto_b
    move-wide/from16 p22, v15

    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    .line 305
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnTertiaryContainer-0d7_KjU()J

    move-result-wide v15

    goto :goto_c

    :cond_c
    move-wide/from16 v15, p24

    :goto_c
    move-wide/from16 p24, v15

    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 306
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getBackground-0d7_KjU()J

    move-result-wide v15

    goto :goto_d

    :cond_d
    move-wide/from16 v15, p26

    :goto_d
    move-wide/from16 p26, v15

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    .line 307
    sget-object v15, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnBackground-0d7_KjU()J

    move-result-wide v15

    goto :goto_e

    :cond_e
    move-wide/from16 v15, p28

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    .line 308
    sget-object v17, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/tokens/ColorLightTokens;->getSurface-0d7_KjU()J

    move-result-wide v17

    goto :goto_f

    :cond_f
    move-wide/from16 v17, p30

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    .line 309
    sget-object v19, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnSurface-0d7_KjU()J

    move-result-wide v19

    goto :goto_10

    :cond_10
    move-wide/from16 v19, p32

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    .line 310
    sget-object v21, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/ColorLightTokens;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v21

    goto :goto_11

    :cond_11
    move-wide/from16 v21, p34

    :goto_11
    const/high16 v23, 0x40000

    and-int v23, v0, v23

    if-eqz v23, :cond_12

    .line 311
    sget-object v23, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v23

    goto :goto_12

    :cond_12
    move-wide/from16 v23, p36

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    move-wide/from16 v25, v1

    goto :goto_13

    :cond_13
    move-wide/from16 v25, p38

    :goto_13
    const/high16 v27, 0x100000

    and-int v27, v0, v27

    if-eqz v27, :cond_14

    .line 313
    sget-object v27, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/material3/tokens/ColorLightTokens;->getInverseSurface-0d7_KjU()J

    move-result-wide v27

    goto :goto_14

    :cond_14
    move-wide/from16 v27, p40

    :goto_14
    const/high16 v29, 0x200000

    and-int v29, v0, v29

    if-eqz v29, :cond_15

    .line 314
    sget-object v29, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/material3/tokens/ColorLightTokens;->getInverseOnSurface-0d7_KjU()J

    move-result-wide v29

    goto :goto_15

    :cond_15
    move-wide/from16 v29, p42

    :goto_15
    const/high16 v31, 0x400000

    and-int v31, v0, v31

    if-eqz v31, :cond_16

    .line 315
    sget-object v31, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/material3/tokens/ColorLightTokens;->getError-0d7_KjU()J

    move-result-wide v31

    goto :goto_16

    :cond_16
    move-wide/from16 v31, p44

    :goto_16
    const/high16 v33, 0x800000

    and-int v33, v0, v33

    if-eqz v33, :cond_17

    .line 316
    sget-object v33, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnError-0d7_KjU()J

    move-result-wide v33

    goto :goto_17

    :cond_17
    move-wide/from16 v33, p46

    :goto_17
    const/high16 v35, 0x1000000

    and-int v35, v0, v35

    if-eqz v35, :cond_18

    .line 317
    sget-object v35, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/material3/tokens/ColorLightTokens;->getErrorContainer-0d7_KjU()J

    move-result-wide v35

    goto :goto_18

    :cond_18
    move-wide/from16 v35, p48

    :goto_18
    const/high16 v37, 0x2000000

    and-int v37, v0, v37

    if-eqz v37, :cond_19

    .line 318
    sget-object v37, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOnErrorContainer-0d7_KjU()J

    move-result-wide v37

    goto :goto_19

    :cond_19
    move-wide/from16 v37, p50

    :goto_19
    const/high16 v39, 0x4000000

    and-int v39, v0, v39

    if-eqz v39, :cond_1a

    .line 319
    sget-object v39, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOutline-0d7_KjU()J

    move-result-wide v39

    goto :goto_1a

    :cond_1a
    move-wide/from16 v39, p52

    :goto_1a
    const/high16 v41, 0x8000000

    and-int v41, v0, v41

    if-eqz v41, :cond_1b

    .line 320
    sget-object v41, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/material3/tokens/ColorLightTokens;->getOutlineVariant-0d7_KjU()J

    move-result-wide v41

    goto :goto_1b

    :cond_1b
    move-wide/from16 v41, p54

    :goto_1b
    const/high16 v43, 0x10000000

    and-int v0, v0, v43

    if-eqz v0, :cond_1c

    .line 321
    sget-object v0, Landroidx/compose/material3/tokens/ColorLightTokens;->INSTANCE:Landroidx/compose/material3/tokens/ColorLightTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ColorLightTokens;->getScrim-0d7_KjU()J

    move-result-wide v43

    goto :goto_1c

    :cond_1c
    move-wide/from16 v43, p56

    :goto_1c
    move-wide/from16 p0, v1

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p12, v13

    move-wide/from16 p28, v15

    move-wide/from16 p30, v17

    move-wide/from16 p32, v19

    move-wide/from16 p34, v21

    move-wide/from16 p36, v23

    move-wide/from16 p38, v25

    move-wide/from16 p40, v27

    move-wide/from16 p42, v29

    move-wide/from16 p44, v31

    move-wide/from16 p46, v33

    move-wide/from16 p48, v35

    move-wide/from16 p50, v37

    move-wide/from16 p52, v39

    move-wide/from16 p54, v41

    move-wide/from16 p56, v43

    .line 292
    invoke-static/range {p0 .. p57}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-G1PFc-w(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static final surfaceColorAtElevation-3ABfNKs(Landroidx/compose/material3/ColorScheme;F)J
    .locals 9

    const-string v0, "$this$surfaceColorAtElevation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    int-to-float v0, v0

    .line 619
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 504
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v0, 0x1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-double v0, p1

    .line 505
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x40900000    # 4.5f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v3, p1, v0

    .line 506
    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurfaceTint-0d7_KjU()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toColor(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C(toColor)612@27498L11:ColorScheme.kt#uh7d8r"

    const v1, 0x4f54ace3    # 3.5681E9f

    .line 612
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.toColor (ColorScheme.kt:611)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 613
    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p2

    invoke-static {p2, p0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 612
    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-wide v0
.end method

.method public static final updateColorSchemeFrom(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/ColorScheme;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setPrimary-8_81llA$material3_release(J)V

    .line 525
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnPrimary-8_81llA$material3_release(J)V

    .line 526
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setPrimaryContainer-8_81llA$material3_release(J)V

    .line 527
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnPrimaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnPrimaryContainer-8_81llA$material3_release(J)V

    .line 528
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getInversePrimary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setInversePrimary-8_81llA$material3_release(J)V

    .line 529
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getSecondary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setSecondary-8_81llA$material3_release(J)V

    .line 530
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnSecondary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnSecondary-8_81llA$material3_release(J)V

    .line 531
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setSecondaryContainer-8_81llA$material3_release(J)V

    .line 532
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnSecondaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnSecondaryContainer-8_81llA$material3_release(J)V

    .line 533
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getTertiary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setTertiary-8_81llA$material3_release(J)V

    .line 534
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnTertiary-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnTertiary-8_81llA$material3_release(J)V

    .line 535
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getTertiaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setTertiaryContainer-8_81llA$material3_release(J)V

    .line 536
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnTertiaryContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnTertiaryContainer-8_81llA$material3_release(J)V

    .line 537
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setBackground-8_81llA$material3_release(J)V

    .line 538
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnBackground-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnBackground-8_81llA$material3_release(J)V

    .line 539
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setSurface-8_81llA$material3_release(J)V

    .line 540
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnSurface-8_81llA$material3_release(J)V

    .line 541
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setSurfaceVariant-8_81llA$material3_release(J)V

    .line 542
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnSurfaceVariant-8_81llA$material3_release(J)V

    .line 543
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getSurfaceTint-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setSurfaceTint-8_81llA$material3_release(J)V

    .line 544
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getInverseSurface-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setInverseSurface-8_81llA$material3_release(J)V

    .line 545
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getInverseOnSurface-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setInverseOnSurface-8_81llA$material3_release(J)V

    .line 546
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setError-8_81llA$material3_release(J)V

    .line 547
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnError-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnError-8_81llA$material3_release(J)V

    .line 548
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getErrorContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setErrorContainer-8_81llA$material3_release(J)V

    .line 549
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOnErrorContainer-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOnErrorContainer-8_81llA$material3_release(J)V

    .line 550
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOutline-8_81llA$material3_release(J)V

    .line 551
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getOutlineVariant-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setOutlineVariant-8_81llA$material3_release(J)V

    .line 552
    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getScrim-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ColorScheme;->setScrim-8_81llA$material3_release(J)V

    return-void
.end method
