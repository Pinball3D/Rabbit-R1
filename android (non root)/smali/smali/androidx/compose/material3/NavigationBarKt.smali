.class public final Landroidx/compose/material3/NavigationBarKt;
.super Ljava/lang/Object;
.source "NavigationBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationBar.kt\nandroidx/compose/material3/NavigationBarKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,637:1\n25#2:638\n25#2:645\n36#2:652\n460#2,13:677\n50#2:692\n49#2:693\n473#2,3:700\n456#2,11:721\n460#2,13:751\n473#2,3:765\n460#2,13:790\n473#2,3:804\n467#2,3:809\n1114#3,6:639\n1114#3,6:646\n1114#3,6:653\n1114#3,6:694\n68#4,5:659\n73#4:690\n77#4:704\n67#4,6:732\n73#4:764\n77#4:769\n67#4,6:771\n73#4:803\n77#4:808\n75#5:664\n76#5,11:666\n89#5:703\n71#5,4:705\n75#5,11:710\n75#5:738\n76#5,11:740\n89#5:768\n75#5:777\n76#5,11:779\n89#5:807\n88#5:812\n76#6:665\n76#6:691\n76#6:709\n76#6:739\n76#6:778\n75#7:770\n58#7:819\n75#7:820\n58#7:821\n75#7:822\n76#8:813\n102#8,2:814\n76#8:816\n154#9:817\n154#9:818\n154#9:823\n*S KotlinDebug\n*F\n+ 1 NavigationBar.kt\nandroidx/compose/material3/NavigationBarKt\n*L\n169#1:638\n190#1:645\n203#1:652\n192#1:677,13\n224#1:692\n224#1:693\n192#1:700,3\n435#1:721,11\n441#1:751,13\n441#1:765,3\n444#1:790,13\n444#1:804,3\n435#1:809,3\n169#1:639,6\n190#1:646,6\n203#1:653,6\n224#1:694,6\n192#1:659,5\n192#1:690\n192#1:704\n441#1:732,6\n441#1:764\n441#1:769\n444#1:771,6\n444#1:803\n444#1:808\n192#1:664\n192#1:666,11\n192#1:703\n435#1:705,4\n435#1:710,11\n441#1:738\n441#1:740,11\n441#1:768\n444#1:777\n444#1:779,11\n444#1:807\n435#1:812\n192#1:665\n217#1:691\n435#1:709\n441#1:739\n444#1:778\n448#1:770\n632#1:819\n632#1:820\n635#1:821\n635#1:822\n190#1:813\n190#1:814,2\n208#1:816\n626#1:817\n629#1:818\n637#1:823\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001ae\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00130\u001d\u00a2\u0006\u0002\u0008\u001f\u00a2\u0006\u0002\u0008 H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"\u001ak\u0010#\u001a\u00020\u00132\u0011\u0010$\u001a\r\u0012\u0004\u0012\u00020\u00130%\u00a2\u0006\u0002\u0008\u001f2\u0011\u0010&\u001a\r\u0012\u0004\u0012\u00020\u00130%\u00a2\u0006\u0002\u0008\u001f2\u0011\u0010\'\u001a\r\u0012\u0004\u0012\u00020\u00130%\u00a2\u0006\u0002\u0008\u001f2\u0013\u0010(\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010%\u00a2\u0006\u0002\u0008\u001f2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0003\u00a2\u0006\u0002\u0010-\u001a\u0083\u0001\u0010.\u001a\u00020\u0013*\u00020\u001e2\u0006\u0010/\u001a\u00020*2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00130%2\u0011\u0010\'\u001a\r\u0012\u0004\u0012\u00020\u00130%\u00a2\u0006\u0002\u0008\u001f2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u00101\u001a\u00020*2\u0015\u0008\u0002\u0010(\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010%\u00a2\u0006\u0002\u0008\u001f2\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0008\u0008\u0002\u00102\u001a\u0002032\u0008\u0008\u0002\u00104\u001a\u000205H\u0007\u00a2\u0006\u0002\u00106\u001a;\u00107\u001a\u000208*\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020;2\u0008\u0010=\u001a\u0004\u0018\u00010;2\u0006\u0010>\u001a\u00020?H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010A\u001aS\u0010B\u001a\u000208*\u0002092\u0006\u0010C\u001a\u00020;2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020;2\u0008\u0010=\u001a\u0004\u0018\u00010;2\u0006\u0010>\u001a\u00020?2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010E\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0019\u0010\r\u001a\u00020\u0003X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u000f\"\u0019\u0010\u0010\u001a\u00020\u0003X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u000f\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006F"
    }
    d2 = {
        "IconLayoutIdTag",
        "",
        "IndicatorHorizontalPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "IndicatorLayoutIdTag",
        "IndicatorRippleLayoutIdTag",
        "IndicatorVerticalOffset",
        "IndicatorVerticalPadding",
        "ItemAnimationDurationMillis",
        "",
        "LabelLayoutIdTag",
        "NavigationBarHeight",
        "NavigationBarItemHorizontalPadding",
        "getNavigationBarItemHorizontalPadding",
        "()F",
        "NavigationBarItemVerticalPadding",
        "getNavigationBarItemVerticalPadding",
        "NavigationBar",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "NavigationBar-HsRjFd4",
        "(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "NavigationBarItemBaselineLayout",
        "indicatorRipple",
        "Lkotlin/Function0;",
        "indicator",
        "icon",
        "label",
        "alwaysShowLabel",
        "",
        "animationProgress",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V",
        "NavigationBarItem",
        "selected",
        "onClick",
        "enabled",
        "colors",
        "Landroidx/compose/material3/NavigationBarItemColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "placeIcon",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "iconPlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "indicatorRipplePlaceable",
        "indicatorPlaceable",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "placeIcon-X9ElhV4",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "placeLabelAndIcon",
        "labelPlaceable",
        "placeLabelAndIcon-zUg2_y0",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;",
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
.field private static final IconLayoutIdTag:Ljava/lang/String; = "icon"

.field private static final IndicatorHorizontalPadding:F

.field private static final IndicatorLayoutIdTag:Ljava/lang/String; = "indicator"

.field private static final IndicatorRippleLayoutIdTag:Ljava/lang/String; = "indicatorRipple"

.field private static final IndicatorVerticalOffset:F

.field private static final IndicatorVerticalPadding:F

.field private static final ItemAnimationDurationMillis:I = 0x64

.field private static final LabelLayoutIdTag:Ljava/lang/String; = "label"

.field private static final NavigationBarHeight:F

.field private static final NavigationBarItemHorizontalPadding:F

.field private static final NavigationBarItemVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 621
    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarHeight:F

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 817
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemHorizontalPadding:F

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 818
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemVerticalPadding:F

    .line 632
    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v0

    sget-object v1, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    sub-float/2addr v0, v1

    .line 819
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 820
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorHorizontalPadding:F

    .line 635
    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getActiveIndicatorHeight-D9Ej5fM()F

    move-result v0

    sget-object v2, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getIconSize-D9Ej5fM()F

    move-result v2

    sub-float/2addr v0, v2

    .line 821
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    div-float/2addr v0, v1

    .line 822
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 823
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalOffset:F

    return-void
.end method

.method public static final NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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

    move-object/from16 v8, p7

    move/from16 v9, p9

    const-string v0, "content"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5f2d444b

    move-object/from16 v1, p8

    .line 106
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(NavigationBar)P(3,0:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.unit.Dp,5)100@4715L14,101@4771L11,103@4929L12,106@4996L503:NavigationBar.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v9, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v9

    :goto_1
    and-int/lit8 v5, v9, 0x70

    if-nez v5, :cond_5

    and-int/lit8 v5, p10, 0x2

    if-nez v5, :cond_3

    move-wide/from16 v5, p1

    invoke-interface {v1, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    goto :goto_3

    :cond_5
    move-wide/from16 v5, p1

    :goto_3
    and-int/lit16 v7, v9, 0x380

    if-nez v7, :cond_7

    and-int/lit8 v7, p10, 0x4

    move-wide/from16 v10, p3

    if-nez v7, :cond_6

    invoke-interface {v1, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v4, v7

    goto :goto_5

    :cond_7
    move-wide/from16 v10, p3

    :goto_5
    and-int/lit8 v7, p10, 0x8

    if-eqz v7, :cond_8

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_8
    and-int/lit16 v12, v9, 0x1c00

    if-nez v12, :cond_a

    move/from16 v12, p5

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v4, v13

    goto :goto_8

    :cond_a
    :goto_7
    move/from16 v12, p5

    :goto_8
    const v13, 0xe000

    and-int v14, v9, v13

    if-nez v14, :cond_d

    and-int/lit8 v14, p10, 0x10

    if-nez v14, :cond_b

    move-object/from16 v14, p6

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/16 v15, 0x4000

    goto :goto_9

    :cond_b
    move-object/from16 v14, p6

    :cond_c
    const/16 v15, 0x2000

    :goto_9
    or-int/2addr v4, v15

    goto :goto_a

    :cond_d
    move-object/from16 v14, p6

    :goto_a
    and-int/lit8 v15, p10, 0x20

    if-eqz v15, :cond_e

    const/high16 v15, 0x30000

    :goto_b
    or-int/2addr v4, v15

    goto :goto_c

    :cond_e
    const/high16 v15, 0x70000

    and-int/2addr v15, v9

    if-nez v15, :cond_10

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x20000

    goto :goto_b

    :cond_f
    const/high16 v15, 0x10000

    goto :goto_b

    :cond_10
    :goto_c
    const v15, 0x5b6db

    and-int/2addr v15, v4

    const v13, 0x12492

    if-ne v15, v13, :cond_12

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_d

    .line 123
    :cond_11
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v3

    move v7, v12

    goto/16 :goto_12

    .line 106
    :cond_12
    :goto_d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v13, v9, 0x1

    const v15, -0xe001

    if-eqz v13, :cond_18

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_f

    .line 104
    :cond_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_14

    and-int/lit8 v4, v4, -0x71

    :cond_14
    and-int/lit8 v2, p10, 0x4

    if-eqz v2, :cond_15

    and-int/lit16 v4, v4, -0x381

    :cond_15
    and-int/lit8 v2, p10, 0x10

    if-eqz v2, :cond_16

    and-int/2addr v4, v15

    :cond_16
    move-object v2, v3

    :cond_17
    :goto_e
    move v7, v12

    move-wide/from16 v23, v10

    move v10, v4

    move-wide/from16 v3, v23

    goto :goto_11

    :cond_18
    :goto_f
    if-eqz v2, :cond_19

    .line 100
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_10

    :cond_19
    move-object v2, v3

    :goto_10
    and-int/lit8 v3, p10, 0x2

    const/4 v13, 0x6

    if-eqz v3, :cond_1a

    .line 101
    sget-object v3, Landroidx/compose/material3/NavigationBarDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarDefaults;

    invoke-virtual {v3, v1, v13}, Landroidx/compose/material3/NavigationBarDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    and-int/lit8 v4, v4, -0x71

    :cond_1a
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_1b

    .line 102
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v3, v1, v13}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v10

    and-int/lit16 v3, v4, -0x381

    move v4, v3

    :cond_1b
    if-eqz v7, :cond_1c

    .line 103
    sget-object v3, Landroidx/compose/material3/NavigationBarDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/NavigationBarDefaults;->getElevation-D9Ej5fM()F

    move-result v3

    move v12, v3

    :cond_1c
    and-int/lit8 v3, p10, 0x10

    if-eqz v3, :cond_17

    .line 104
    sget-object v3, Landroidx/compose/material3/NavigationBarDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarDefaults;

    invoke-virtual {v3, v1, v13}, Landroidx/compose/material3/NavigationBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v3

    and-int/2addr v4, v15

    move-object v14, v3

    goto :goto_e

    :goto_11
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_1d

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material3.NavigationBar (NavigationBar.kt:98)"

    .line 106
    invoke-static {v0, v10, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 112
    new-instance v0, Landroidx/compose/material3/NavigationBarKt$NavigationBar$1;

    invoke-direct {v0, v14, v8, v10}, Landroidx/compose/material3/NavigationBarKt$NavigationBar$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;I)V

    const v12, 0x64c4a90

    const/4 v13, 0x1

    invoke-static {v1, v12, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/high16 v0, 0xc00000

    and-int/lit8 v12, v10, 0xe

    or-int/2addr v0, v12

    shl-int/lit8 v10, v10, 0x3

    and-int/lit16 v12, v10, 0x380

    or-int/2addr v0, v12

    and-int/lit16 v12, v10, 0x1c00

    or-int/2addr v0, v12

    const v12, 0xe000

    and-int/2addr v10, v12

    or-int v21, v0, v10

    const/16 v22, 0x62

    move-object v10, v2

    move-wide v12, v5

    move-object v0, v14

    move-wide v14, v3

    move/from16 v16, v7

    move-object/from16 v20, v1

    .line 107
    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1e
    move-object v14, v0

    move-wide v10, v3

    .line 123
    :goto_12
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_1f

    goto :goto_13

    :cond_1f
    new-instance v13, Landroidx/compose/material3/NavigationBarKt$NavigationBar$2;

    move-object v0, v13

    move-object v1, v2

    move-wide v2, v5

    move-wide v4, v10

    move v6, v7

    move-object v7, v14

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/NavigationBarKt$NavigationBar$2;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_13
    return-void
.end method

.method public static final NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/NavigationBarItemColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p11

    move/from16 v14, p12

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x278c5fbe

    move-object/from16 v2, p10

    .line 170
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v2, "C(NavigationBarItem)P(8,7,3,6,2,5)167@7728L8,168@7788L39,189@8761L30,202@9139L52,191@8797L2501:NavigationBar.kt#uh7d8r"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v2, -0x80000000

    and-int/2addr v2, v14

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v13, 0x380

    if-nez v3, :cond_8

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v2, v3

    :cond_8
    :goto_5
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_9

    or-int/lit16 v2, v2, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v13, 0x1c00

    if-nez v3, :cond_b

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x800

    goto :goto_6

    :cond_a
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v2, v3

    :cond_b
    :goto_7
    and-int/lit8 v3, v14, 0x8

    const v33, 0xe000

    if-eqz v3, :cond_c

    or-int/lit16 v2, v2, 0x6000

    goto :goto_9

    :cond_c
    and-int v4, v13, v33

    if-nez v4, :cond_e

    move-object/from16 v4, p4

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v2, v5

    goto :goto_a

    :cond_e
    :goto_9
    move-object/from16 v4, p4

    :goto_a
    and-int/lit8 v5, v14, 0x10

    if-eqz v5, :cond_f

    const/high16 v6, 0x30000

    or-int/2addr v2, v6

    goto :goto_c

    :cond_f
    const/high16 v6, 0x70000

    and-int/2addr v6, v13

    if-nez v6, :cond_11

    move/from16 v6, p5

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_10

    const/high16 v7, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v7, 0x10000

    :goto_b
    or-int/2addr v2, v7

    goto :goto_d

    :cond_11
    :goto_c
    move/from16 v6, p5

    :goto_d
    and-int/lit8 v7, v14, 0x20

    if-eqz v7, :cond_12

    const/high16 v15, 0x180000

    or-int/2addr v2, v15

    goto :goto_f

    :cond_12
    const/high16 v15, 0x380000

    and-int/2addr v15, v13

    if-nez v15, :cond_14

    move-object/from16 v15, p6

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v16, 0x80000

    :goto_e
    or-int v2, v2, v16

    goto :goto_10

    :cond_14
    :goto_f
    move-object/from16 v15, p6

    :goto_10
    and-int/lit8 v16, v14, 0x40

    if-eqz v16, :cond_15

    const/high16 v17, 0xc00000

    or-int v2, v2, v17

    move/from16 v8, p7

    goto :goto_12

    :cond_15
    const/high16 v17, 0x1c00000

    and-int v17, v13, v17

    move/from16 v8, p7

    if-nez v17, :cond_17

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v17, 0x400000

    :goto_11
    or-int v2, v2, v17

    :cond_17
    :goto_12
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    if-nez v17, :cond_1a

    and-int/lit16 v0, v14, 0x80

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_13

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v17, 0x2000000

    :goto_13
    or-int v2, v2, v17

    goto :goto_14

    :cond_1a
    move-object/from16 v0, p8

    :goto_14
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_1b

    const/high16 v17, 0x30000000

    or-int v2, v2, v17

    move-object/from16 v1, p9

    goto :goto_16

    :cond_1b
    const/high16 v17, 0x70000000

    and-int v17, v13, v17

    move-object/from16 v1, p9

    if-nez v17, :cond_1d

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_15
    or-int v2, v2, v17

    :cond_1d
    :goto_16
    const v17, 0x5b6db6db

    and-int v1, v2, v17

    const v4, 0x12492492

    if-ne v1, v4, :cond_1f

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_17

    .line 258
    :cond_1e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v11, p9

    move-object v13, v9

    move-object v7, v15

    move-object/from16 v9, p8

    goto/16 :goto_22

    .line 170
    :cond_1f
    :goto_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v13, 0x1

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    const v34, -0xe000001

    const/4 v11, 0x1

    if-eqz v1, :cond_22

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_18

    .line 638
    :cond_20
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_21

    and-int v2, v2, v34

    :cond_21
    move-object/from16 v1, p4

    move-object/from16 v7, p9

    move v0, v6

    move/from16 v16, v8

    move-object/from16 v8, p8

    move v6, v2

    goto/16 :goto_1d

    :cond_22
    :goto_18
    if-eqz v3, :cond_23

    .line 164
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    goto :goto_19

    :cond_23
    move-object/from16 v1, p4

    :goto_19
    if-eqz v5, :cond_24

    move v6, v11

    :cond_24
    if-eqz v7, :cond_25

    const/4 v3, 0x0

    goto :goto_1a

    :cond_25
    move-object v3, v15

    :goto_1a
    if-eqz v16, :cond_26

    move v8, v11

    :cond_26
    and-int/lit16 v5, v14, 0x80

    if-eqz v5, :cond_27

    .line 168
    sget-object v15, Landroidx/compose/material3/NavigationBarItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarItemDefaults;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/high16 v31, 0xc00000

    const/16 v32, 0x7f

    move-object/from16 v30, v9

    invoke-virtual/range {v15 .. v32}, Landroidx/compose/material3/NavigationBarItemDefaults;->colors-69fazGs(JJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/NavigationBarItemColors;

    move-result-object v5

    and-int v2, v2, v34

    goto :goto_1b

    :cond_27
    move-object/from16 v5, p8

    :goto_1b
    if-eqz v0, :cond_29

    const v0, -0x1d58f75c

    .line 169
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 639
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 640
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v0, v7, :cond_28

    .line 169
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 642
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 638
    :cond_28
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v7, v0

    goto :goto_1c

    :cond_29
    move-object/from16 v7, p9

    :goto_1c
    move-object v15, v3

    move v0, v6

    move/from16 v16, v8

    move v6, v2

    move-object v8, v5

    :goto_1d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:159)"

    const v5, -0x278c5fbe

    .line 170
    invoke-static {v5, v6, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 171
    :cond_2a
    new-instance v5, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledIcon$1;

    move-object v2, v5

    move-object v3, v8

    move-object/from16 v35, v4

    move/from16 v4, p1

    move-object v12, v5

    move v5, v0

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object v7, v15

    move-object/from16 v19, v8

    move/from16 v8, v16

    move-object v13, v9

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledIcon$1;-><init>(Landroidx/compose/material3/NavigationBarItemColors;ZZILkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;)V

    const v2, -0x549d0324

    invoke-static {v13, v2, v11, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function2;

    if-eqz v15, :cond_2b

    .line 181
    new-instance v2, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledLabel$1$1;

    move-object/from16 p4, v2

    move-object/from16 p5, v19

    move/from16 p6, p1

    move/from16 p7, v0

    move/from16 p8, v17

    move-object/from16 p9, v15

    invoke-direct/range {p4 .. p9}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$styledLabel$1$1;-><init>(Landroidx/compose/material3/NavigationBarItemColors;ZZILkotlin/jvm/functions/Function2;)V

    const v3, 0x620c84c8

    invoke-static {v13, v3, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object/from16 v20, v2

    const v2, -0x1d58f75c

    goto :goto_1e

    :cond_2b
    const v2, -0x1d58f75c

    const/16 v20, 0x0

    .line 190
    :goto_1e
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v2, v35

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 646
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 647
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2c

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v9, 0x2

    invoke-static {v2, v3, v9, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 649
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_2c
    const/4 v9, 0x2

    .line 645
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 190
    move-object v8, v2

    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 198
    sget-object v2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v2

    move-object/from16 p4, v1

    move/from16 p5, p1

    move-object/from16 p6, v18

    move-object/from16 p7, v3

    move/from16 p8, v0

    move-object/from16 p9, v2

    move-object/from16 p10, p2

    .line 194
    invoke-static/range {p4 .. p10}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v5

    move/from16 p8, v6

    move-object/from16 p9, v7

    .line 202
    invoke-static/range {p4 .. p9}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x44faf204

    .line 203
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 652
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 653
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_2d

    .line 654
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_2e

    .line 203
    :cond_2d
    new-instance v3, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$2$1;

    invoke-direct {v3, v8}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 656
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 652
    :cond_2e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 203
    invoke-static {v2, v5}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 206
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    const v5, 0x2bb5b5d7

    .line 192
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x6

    .line 662
    invoke-static {v3, v4, v13, v5}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    const v6, -0x4ee9b9da

    .line 663
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    const v7, 0x789c5f52

    const-string v9, "C:CompositionLocal.kt#9igjgp"

    .line 665
    invoke-static {v13, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 664
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 666
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v21

    move-object/from16 v11, v21

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 665
    invoke-static {v13, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 666
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 667
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 665
    invoke-static {v13, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 667
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 669
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 676
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    .line 677
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-nez v7, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 678
    :cond_2f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 679
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 680
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    .line 682
    :cond_30
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 684
    :goto_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 685
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .line 671
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v7, v3, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 672
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 673
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 674
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 686
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 687
    invoke-static {v13}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v13, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    .line 688
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v2, -0x4ab8dd79

    const-string v3, "C72@3384L9:Box.kt#2w3rfo"

    .line 690
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v2, Landroidx/compose/foundation/layout/BoxScope;

    const v2, 0x3db32117

    const-string v3, "C207@9285L145,*216@9714L7,223@10014L120,248@11007L285:NavigationBar.kt#uh7d8r"

    .line 208
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-eqz v10, :cond_31

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_31
    const/4 v2, 0x0

    :goto_21
    const/16 v3, 0x64

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 210
    invoke-static {v3, v4, v6, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x30

    const/16 v11, 0x1c

    move-object v7, v13

    move-object/from16 v21, v8

    move v8, v9

    move/from16 p4, v0

    const/4 v0, 0x2

    move v9, v11

    .line 208
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 217
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    const v5, 0x789c5f52

    .line 691
    invoke-static {v13, v5, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 217
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 218
    sget-object v4, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getActiveIndicatorWidth-D9Ej5fM()F

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    .line 220
    invoke-static/range {v21 .. v21}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem$lambda$3(Landroidx/compose/runtime/MutableState;)I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v4, v5

    int-to-float v0, v0

    div-float/2addr v4, v0

    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalOffset:F

    .line 221
    invoke-interface {v3, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .line 219
    invoke-static {v4, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    .line 223
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 224
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    const v5, 0x1e7b2b64

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v11, v18

    .line 692
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    .line 694
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_32

    .line 695
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_33

    .line 225
    :cond_32
    new-instance v5, Landroidx/compose/material3/MappedInteractionSource;

    move-object v7, v11

    check-cast v7, Landroidx/compose/foundation/interaction/InteractionSource;

    const/4 v0, 0x0

    invoke-direct {v5, v7, v3, v4, v0}, Landroidx/compose/material3/MappedInteractionSource;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 697
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 693
    :cond_33
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 224
    check-cast v5, Landroidx/compose/material3/MappedInteractionSource;

    .line 230
    new-instance v0, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicatorRipple$1;

    invoke-direct {v0, v5}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicatorRipple$1;-><init>(Landroidx/compose/material3/MappedInteractionSource;)V

    const v3, 0x293afa35

    const/4 v4, 0x1

    invoke-static {v13, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 238
    new-instance v3, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicator$1;

    move-object/from16 v9, v19

    invoke-direct {v3, v9, v2}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$3$indicator$1;-><init>(Landroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/runtime/State;)V

    const v5, -0x1c472dfb

    invoke-static {v13, v5, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 255
    invoke-static {v2}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem$lambda$9$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v7

    shr-int/lit8 v2, v17, 0x9

    and-int v2, v2, v33

    or-int/lit16 v8, v2, 0x1b6

    move-object v2, v0

    move-object v4, v12

    move-object/from16 v5, v20

    move/from16 v6, v16

    move v0, v8

    move-object v8, v13

    move-object v12, v9

    move v9, v0

    .line 249
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V

    .line 208
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 690
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 700
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 701
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 702
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 703
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 704
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    move/from16 v6, p4

    move-object v5, v1

    move-object v9, v12

    move-object v7, v15

    move/from16 v8, v16

    .line 258
    :goto_22
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_35

    goto :goto_23

    :cond_35
    new-instance v15, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$4;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v10, v11

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItem$4;-><init>(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_23
    return-void
.end method

.method private static final NavigationBarItem$lambda$3(Landroidx/compose/runtime/MutableState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 190
    check-cast p0, Landroidx/compose/runtime/State;

    .line 813
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final NavigationBarItem$lambda$4(Landroidx/compose/runtime/MutableState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 814
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final NavigationBarItem$lambda$9$lambda$6(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 816
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final NavigationBarItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;ZF",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    const v0, 0x233ba47b

    move-object/from16 v8, p6

    .line 434
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    const-string v9, "C(NavigationBarItemBaselineLayout)P(4,3,2,5)434@18867L2465:NavigationBar.kt#uh7d8r"

    invoke-static {v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v9, v7, 0xe

    if-nez v9, :cond_1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v7

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    and-int/lit8 v11, v7, 0x70

    if-nez v11, :cond_3

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v9, v11

    :cond_3
    and-int/lit16 v11, v7, 0x380

    if-nez v11, :cond_5

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_3

    :cond_4
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v9, v11

    :cond_5
    and-int/lit16 v11, v7, 0x1c00

    if-nez v11, :cond_7

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_4

    :cond_6
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v9, v11

    :cond_7
    const v11, 0xe000

    and-int/2addr v11, v7

    if-nez v11, :cond_9

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_5

    :cond_8
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v9, v11

    :cond_9
    const/high16 v11, 0x70000

    and-int/2addr v11, v7

    if-nez v11, :cond_b

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v11, 0x10000

    :goto_6
    or-int/2addr v9, v11

    :cond_b
    const v11, 0x5b6db

    and-int/2addr v11, v9

    const v12, 0x12492

    if-ne v11, v12, :cond_d

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_7

    .line 502
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_c

    .line 434
    :cond_d
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material3.NavigationBarItemBaselineLayout (NavigationBar.kt:426)"

    invoke-static {v0, v9, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 451
    :cond_e
    new-instance v0, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemBaselineLayout$2;

    invoke-direct {v0, v6, v4, v5}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemBaselineLayout$2;-><init>(FLkotlin/jvm/functions/Function2;Z)V

    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    const v11, -0x4ee9b9da

    .line 435
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)73@2855L7,74@2910L7,75@2969L7,76@2981L460:Layout.kt#80mrfh"

    invoke-static {v8, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 705
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 708
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    const v14, 0x789c5f52

    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    .line 709
    invoke-static {v8, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 708
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 710
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 709
    invoke-static {v8, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 710
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 711
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 709
    invoke-static {v8, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 711
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 713
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 720
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    .line 721
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 722
    :cond_f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 723
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 724
    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 726
    :cond_10
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 728
    :goto_8
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .line 715
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v0, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 716
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 717
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 718
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 729
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v0, v8, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 730
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v11, -0x1294b099

    const-string v12, "C435@18884L17,440@18982L50:NavigationBar.kt#uh7d8r"

    .line 436
    invoke-static {v8, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v11, v9, 0xe

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v8, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v11, -0x1294b07f

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "437@18951L11"

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v11, 0x0

    cmpl-float v12, v6, v11

    if-lez v12, :cond_11

    shr-int/lit8 v12, v9, 0x3

    and-int/lit8 v12, v12, 0xe

    .line 438
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v8, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 441
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    const-string v13, "icon"

    invoke-static {v12, v13}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v13, 0x2bb5b5d7

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 732
    sget-object v15, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v15

    .line 736
    invoke-static {v15, v10, v8, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    const v13, -0x4ee9b9da

    .line 737
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v8, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    const-string v0, "C:CompositionLocal.kt#9igjgp"

    const v10, 0x789c5f52

    .line 739
    invoke-static {v8, v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 738
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 740
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .line 739
    invoke-static {v8, v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 740
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 741
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .line 739
    invoke-static {v8, v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 741
    check-cast v2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 743
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    .line 750
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    .line 751
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 752
    :cond_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 753
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 754
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 756
    :cond_13
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 758
    :goto_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 759
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 745
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v6, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 746
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v6, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 747
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v6, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 748
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 760
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 761
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v1, v8, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 762
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, -0x4ab8dd79

    const-string v2, "C72@3384L9:Box.kt#2w3rfo"

    .line 764
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v6, Landroidx/compose/foundation/layout/BoxScope;

    const v6, 0x4a6ff594    # 3931493.0f

    const-string v10, "C440@19024L6:NavigationBar.kt#uh7d8r"

    .line 441
    invoke-static {v8, v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v6, v9, 0x6

    and-int/lit8 v6, v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 764
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 765
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 766
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 767
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 768
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v6, 0x47cc00e4

    .line 769
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "443@19075L260"

    invoke-static {v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v4, :cond_17

    .line 445
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    const-string v10, "label"

    .line 446
    invoke-static {v6, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v5, :cond_14

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_14
    move/from16 v10, p5

    .line 447
    :goto_a
    invoke-static {v6, v10}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget v10, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemHorizontalPadding:F

    const/4 v11, 0x2

    int-to-float v12, v11

    div-float/2addr v10, v12

    .line 770
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 448
    invoke-static {v6, v10, v15, v11, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v10, 0x2bb5b5d7

    .line 444
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 771
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v10

    const/4 v11, 0x0

    .line 775
    invoke-static {v10, v11, v8, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    const v11, -0x4ee9b9da

    .line 776
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    const v12, 0x789c5f52

    .line 778
    invoke-static {v8, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 777
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 779
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    .line 778
    invoke-static {v8, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 779
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 780
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .line 778
    invoke-static {v8, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 780
    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 782
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 789
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v6

    .line 790
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 791
    :cond_15
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 792
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 793
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 795
    :cond_16
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 797
    :goto_b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 798
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 784
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v12, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 785
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v12, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 786
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v12, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 787
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v12, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 799
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 800
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v0, v8, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 801
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 803
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, 0x4a6ff6c2    # 3931568.5f

    const-string v1, "C448@19326L7:NavigationBar.kt#uh7d8r"

    .line 449
    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v9, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 803
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 804
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 805
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 806
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 807
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 808
    :cond_17
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 436
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 809
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 810
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 811
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 812
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 502
    :cond_18
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-nez v8, :cond_19

    goto :goto_d

    :cond_19
    new-instance v9, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemBaselineLayout$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/NavigationBarKt$NavigationBarItemBaselineLayout$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFI)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_d
    return-void
.end method

.method public static final synthetic access$NavigationBarItem$lambda$4(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem$lambda$4(Landroidx/compose/runtime/MutableState;I)V

    return-void
.end method

.method public static final synthetic access$NavigationBarItem$lambda$9$lambda$6(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem$lambda$9$lambda$6(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$NavigationBarItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getIndicatorHorizontalPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getIndicatorVerticalPadding$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    return v0
.end method

.method public static final synthetic access$getNavigationBarHeight$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarHeight:F

    return v0
.end method

.method public static final synthetic access$placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/NavigationBarKt;->placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/NavigationBarKt;->placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final getNavigationBarItemHorizontalPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemHorizontalPadding:F

    return v0
.end method

.method public static final getNavigationBarItemVerticalPadding()F
    .locals 1

    sget v0, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemVerticalPadding:F

    return v0
.end method

.method private static final placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    .line 513
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v10

    .line 514
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v11

    .line 516
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v10, v0

    div-int/lit8 v3, v0, 0x2

    .line 517
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v11, v0

    div-int/lit8 v4, v0, 0x2

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v10, v0

    div-int/lit8 v6, v0, 0x2

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v11, v0

    div-int/lit8 v7, v0, 0x2

    const/4 v12, 0x0

    .line 522
    new-instance v13, Landroidx/compose/material3/NavigationBarKt$placeIcon$1;

    move-object v0, v13

    move-object/from16 v1, p3

    move-object v2, p1

    move-object/from16 v5, p2

    move v8, v10

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/NavigationBarKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IIII)V

    move-object v4, v13

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final placeLabelAndIcon-zUg2_y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20

    move-object/from16 v15, p0

    .line 574
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v16

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v16, v0

    sget v1, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItemVerticalPadding:F

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    sub-int v6, v0, v2

    .line 580
    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v10

    if-eqz p7, :cond_0

    move v0, v10

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v16, v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    sub-int/2addr v0, v10

    int-to-float v0, v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float v1, v1, p8

    mul-float/2addr v0, v1

    .line 589
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    .line 591
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v17

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v17, v0

    div-int/lit8 v5, v0, 0x2

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v17, v0

    div-int/lit8 v9, v0, 0x2

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v17, v0

    div-int/lit8 v12, v0, 0x2

    sget v0, Landroidx/compose/material3/NavigationBarKt;->IndicatorVerticalPadding:F

    .line 597
    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    sub-int v13, v10, v0

    const/16 v18, 0x0

    .line 599
    new-instance v19, Landroidx/compose/material3/NavigationBarKt$placeLabelAndIcon$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v14, v17

    move-object/from16 v15, p0

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/NavigationBarKt$placeLabelAndIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    const/4 v2, 0x0

    move/from16 p1, v17

    move/from16 p2, v16

    move-object/from16 p3, v18

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
