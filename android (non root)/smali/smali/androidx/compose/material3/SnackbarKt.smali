.class public final Landroidx/compose/material3/SnackbarKt;
.super Ljava/lang/Object;
.source "Snackbar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material3/SnackbarKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,435:1\n154#2:436\n154#2:508\n154#2:591\n154#2:734\n154#2:735\n154#2:736\n154#2:737\n154#2:738\n154#2:739\n154#2:740\n154#2:741\n74#3,6:437\n80#3:469\n84#3:590\n75#4:443\n76#4,11:445\n75#4:476\n76#4,11:478\n89#4:506\n75#4:515\n76#4,11:517\n75#4:549\n76#4,11:551\n89#4:579\n89#4:584\n89#4:589\n74#4:592\n75#4,11:594\n75#4:622\n76#4,11:624\n89#4:652\n75#4:660\n76#4,11:662\n89#4:690\n75#4:698\n76#4,11:700\n89#4:728\n88#4:733\n76#5:444\n76#5:477\n76#5:516\n76#5:550\n76#5:593\n76#5:623\n76#5:661\n76#5:699\n460#6,13:456\n460#6,13:489\n473#6,3:503\n460#6,13:528\n460#6,13:562\n473#6,3:576\n473#6,3:581\n473#6,3:586\n456#6,11:605\n460#6,13:635\n473#6,3:649\n460#6,13:673\n473#6,3:687\n460#6,13:711\n473#6,3:725\n467#6,3:730\n67#7,6:470\n73#7:502\n77#7:507\n67#7,6:509\n73#7:541\n77#7:585\n67#7,6:616\n73#7:648\n77#7:653\n67#7,6:654\n73#7:686\n77#7:691\n67#7,6:692\n73#7:724\n77#7:729\n74#8,7:542\n81#8:575\n85#8:580\n*S KotlinDebug\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material3/SnackbarKt\n*L\n238#1:436\n277#1:508\n331#1:591\n427#1:734\n428#1:735\n429#1:736\n430#1:737\n431#1:738\n432#1:739\n433#1:740\n434#1:741\n260#1:437,6\n260#1:469\n260#1:590\n260#1:443\n260#1:445,11\n270#1:476\n270#1:478,11\n270#1:506\n275#1:515\n275#1:517,11\n279#1:549\n279#1:551,11\n279#1:579\n275#1:584\n260#1:589\n308#1:592\n308#1:594,11\n310#1:622\n310#1:624,11\n310#1:652\n312#1:660\n312#1:662,11\n312#1:690\n321#1:698\n321#1:700,11\n321#1:728\n308#1:733\n260#1:444\n270#1:477\n275#1:516\n279#1:550\n308#1:593\n310#1:623\n312#1:661\n321#1:699\n260#1:456,13\n270#1:489,13\n270#1:503,3\n275#1:528,13\n279#1:562,13\n279#1:576,3\n275#1:581,3\n260#1:586,3\n308#1:605,11\n310#1:635,13\n310#1:649,3\n312#1:673,13\n312#1:687,3\n321#1:711,13\n321#1:725,3\n308#1:730,3\n270#1:470,6\n270#1:502\n270#1:507\n275#1:509,6\n275#1:541\n275#1:585\n310#1:616,6\n310#1:648\n310#1:653\n312#1:654,6\n312#1:686\n312#1:691\n321#1:692,6\n321#1:724\n321#1:729\n279#1:542,7\n279#1:575\n279#1:580\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u001ah\u0010\n\u001a\u00020\u000b2\u0011\u0010\u000c\u001a\r\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0002\u0008\u000e2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0002\u0008\u000e2\u0013\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001aj\u0010\u0018\u001a\u00020\u000b2\u0011\u0010\u000c\u001a\r\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0002\u0008\u000e2\u0013\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u000e2\u0013\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0014H\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u0017\u001am\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020\u00142\u0008\u0008\u0002\u0010&\u001a\u00020\u00142\u0008\u0008\u0002\u0010\'\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)\u001a\u009c\u0001\u0010\u001c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0015\u0008\u0002\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u000e2\u0015\u0008\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u00a2\u0006\u0002\u0008\u000e2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020\u00142\u0008\u0008\u0002\u0010&\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00142\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0007\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006-"
    }
    d2 = {
        "ContainerMaxWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "HeightToFirstLine",
        "HorizontalSpacing",
        "HorizontalSpacingButtonSide",
        "LongButtonVerticalOffset",
        "SeparateButtonExtraY",
        "SnackbarVerticalPadding",
        "TextEndExtraSpacing",
        "NewLineButtonSnackbar",
        "",
        "text",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "action",
        "dismissAction",
        "actionTextStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "actionContentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "dismissActionContentColor",
        "NewLineButtonSnackbar-kKq0p4A",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V",
        "OneRowSnackbar",
        "actionTextColor",
        "dismissActionColor",
        "OneRowSnackbar-kKq0p4A",
        "Snackbar",
        "snackbarData",
        "Landroidx/compose/material3/SnackbarData;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "actionOnNewLine",
        "",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "containerColor",
        "contentColor",
        "actionColor",
        "Snackbar-sDKtq54",
        "(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;II)V",
        "content",
        "Snackbar-eQBnUkQ",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
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
.field private static final ContainerMaxWidth:F

.field private static final HeightToFirstLine:F

.field private static final HorizontalSpacing:F

.field private static final HorizontalSpacingButtonSide:F

.field private static final LongButtonVerticalOffset:F

.field private static final SeparateButtonExtraY:F

.field private static final SnackbarVerticalPadding:F

.field private static final TextEndExtraSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x258

    int-to-float v0, v0

    .line 734
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->ContainerMaxWidth:F

    const/16 v0, 0x1e

    int-to-float v0, v0

    .line 735
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->HeightToFirstLine:F

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 736
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacing:F

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 737
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacingButtonSide:F

    const/4 v1, 0x2

    int-to-float v1, v1

    .line 738
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SnackbarKt;->SeparateButtonExtraY:F

    const/4 v1, 0x6

    int-to-float v1, v1

    .line 739
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/SnackbarKt;->SnackbarVerticalPadding:F

    .line 740
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->TextEndExtraSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 741
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->LongButtonVerticalOffset:F

    return-void
.end method

.method private static final NewLineButtonSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 30
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
            "Landroidx/compose/ui/text/TextStyle;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v9, p9

    const v0, -0x4f6c4929

    move-object/from16 v5, p8

    .line 259
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    const-string v6, "C(NewLineButtonSnackbar)P(5!1,3,2,1:c#ui.graphics.Color,4:c#ui.graphics.Color)259@11505L1173:Snackbar.kt#uh7d8r"

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v6, v9, 0xe

    if-nez v6, :cond_1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v9

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    and-int/lit8 v8, v9, 0x70

    if-nez v8, :cond_3

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :cond_3
    and-int/lit16 v8, v9, 0x380

    if-nez v8, :cond_5

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v6, v8

    :cond_5
    and-int/lit16 v8, v9, 0x1c00

    if-nez v8, :cond_7

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v6, v8

    :cond_7
    const v8, 0xe000

    and-int/2addr v8, v9

    move-wide/from16 v10, p4

    if-nez v8, :cond_9

    invoke-interface {v5, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v6, v8

    :cond_9
    const/high16 v8, 0x70000

    and-int/2addr v8, v9

    move-wide/from16 v12, p6

    if-nez v8, :cond_b

    invoke-interface {v5, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v6, v8

    :cond_b
    const v8, 0x5b6db

    and-int/2addr v8, v6

    const v14, 0x12492

    if-ne v8, v14, :cond_d

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_7

    .line 294
    :cond_c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v8, v2

    goto/16 :goto_d

    .line 259
    :cond_d
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, -0x1

    const-string v14, "androidx.compose.material3.NewLineButtonSnackbar (Snackbar.kt:251)"

    invoke-static {v0, v6, v8, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 261
    :cond_e
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    sget v8, Landroidx/compose/material3/SnackbarKt;->ContainerMaxWidth:F

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-static {v0, v14, v8, v15, v7}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 264
    invoke-static {v0, v14, v15, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    sget v17, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacing:F

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Landroidx/compose/material3/SnackbarKt;->SeparateButtonExtraY:F

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 265
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v7, -0x1cd0f17e

    .line 260
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo"

    invoke-static {v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 437
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v7

    .line 438
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v8

    const/4 v14, 0x0

    .line 441
    invoke-static {v7, v8, v5, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    const v8, -0x4ee9b9da

    .line 442
    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v5, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    const v14, 0x789c5f52

    const-string v9, "C:CompositionLocal.kt#9igjgp"

    .line 444
    invoke-static {v5, v14, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 443
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 445
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 444
    invoke-static {v5, v14, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 445
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 446
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 444
    invoke-static {v5, v14, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 446
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 448
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 455
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 456
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 457
    :cond_f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 458
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 459
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 461
    :cond_10
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 463
    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 464
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 450
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 451
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 452
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 453
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 465
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 466
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v5, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 467
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v7, 0x107e02c8

    const-string v8, "C79@4027L9:Column.kt#2w3rfo"

    .line 469
    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v7, Landroidx/compose/foundation/layout/ColumnScope;

    const v8, -0x36a215e3

    const-string v10, "C269@11812L171,274@11993L679:Snackbar.kt#uh7d8r"

    .line 270
    invoke-static {v5, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 271
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    sget v10, Landroidx/compose/material3/SnackbarKt;->HeightToFirstLine:F

    sget v11, Landroidx/compose/material3/SnackbarKt;->LongButtonVerticalOffset:F

    invoke-static {v8, v10, v11}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFromBaseline-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v8, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacingButtonSide:F

    const/16 v25, 0x0

    const/16 v26, 0xb

    const/16 v27, 0x0

    move/from16 v24, v8

    .line 272
    invoke-static/range {v21 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v11, 0x2bb5b5d7

    .line 270
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v5, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 470
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v13

    const/4 v14, 0x0

    .line 474
    invoke-static {v13, v14, v5, v14}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    const v14, -0x4ee9b9da

    .line 475
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const v11, 0x789c5f52

    .line 477
    invoke-static {v5, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 476
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 478
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .line 477
    invoke-static {v5, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 478
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 479
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v20

    move/from16 v22, v8

    move-object/from16 v8, v20

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .line 477
    invoke-static {v5, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 479
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 481
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 488
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 489
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 490
    :cond_11
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 491
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 492
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 494
    :cond_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 496
    :goto_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 497
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 483
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v2, v13, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 484
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v2, v14, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 485
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v2, v0, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 486
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 499
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v0, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 500
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x4ab8dd79

    const-string v2, "C72@3384L9:Box.kt#2w3rfo"

    .line 502
    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v8, Landroidx/compose/foundation/layout/BoxScope;

    const v8, 0x1205bf61

    const-string v10, "C272@11975L6:Snackbar.kt#uh7d8r"

    .line 273
    invoke-static {v5, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v8, v6, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v5, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 502
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 503
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 504
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 505
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 506
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 276
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Landroidx/compose/foundation/layout/ColumnScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    if-nez v3, :cond_13

    move/from16 v26, v22

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    int-to-float v8, v7

    .line 508
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    move/from16 v26, v8

    :goto_a
    const/16 v27, 0x0

    const/16 v28, 0xb

    const/16 v29, 0x0

    .line 277
    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v8, 0x2bb5b5d7

    .line 275
    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 509
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    const/4 v10, 0x0

    .line 513
    invoke-static {v8, v10, v5, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const v10, -0x4ee9b9da

    .line 514
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    const v11, 0x789c5f52

    .line 516
    invoke-static {v5, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 515
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 517
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .line 516
    invoke-static {v5, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 517
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 518
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    .line 516
    invoke-static {v5, v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 518
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 520
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 527
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v7

    .line 528
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 529
    :cond_14
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 530
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 531
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 533
    :cond_15
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 535
    :goto_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 536
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 522
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v8, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 523
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v13, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 524
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v13, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v13, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 537
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 538
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v8, v5, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7ab4aae9

    .line 539
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 541
    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, 0x1205c01b

    const-string v2, "C278@12161L501:Snackbar.kt#uh7d8r"

    .line 279
    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0x2952b718

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo"

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 542
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 543
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v2

    .line 544
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v7

    const/4 v8, 0x0

    .line 547
    invoke-static {v2, v7, v5, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v7, -0x4ee9b9da

    .line 548
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    const v8, 0x789c5f52

    .line 550
    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 549
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 551
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 550
    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 551
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 552
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 550
    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 552
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 554
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 561
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 562
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-nez v11, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 563
    :cond_16
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 564
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 565
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 567
    :cond_17
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 569
    :goto_c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 570
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .line 556
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v9, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 557
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v9, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 558
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v9, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 559
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v9, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 571
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 572
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v2, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 573
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x1378c6ab

    const-string v2, "C80@4021L9:Row.kt#2w3rfo"

    .line 575
    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    const v0, 0x19f6ab52    # 2.5505E-23f

    const-string v2, "C279@12183L208:Snackbar.kt#uh7d8r"

    .line 280
    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 281
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 282
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v0, v7

    and-int/lit8 v2, v6, 0x70

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v8, p1

    .line 280
    invoke-static {v0, v8, v5, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x1205c112

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "285@12457L173"

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v3, :cond_18

    new-array v0, v7, [Landroidx/compose/runtime/ProvidedValue;

    .line 287
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v0, v7

    shr-int/lit8 v2, v6, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x8

    .line 286
    invoke-static {v0, v3, v5, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_18
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 280
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 575
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 576
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 577
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 578
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 579
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 279
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 541
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 581
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 582
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 583
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 584
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 270
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 469
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 586
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 587
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 588
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 589
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 590
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 294
    :cond_19
    :goto_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_1a

    goto :goto_e

    :cond_1a
    new-instance v11, Landroidx/compose/material3/SnackbarKt$NewLineButtonSnackbar$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SnackbarKt$NewLineButtonSnackbar$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJI)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_e
    return-void
.end method

.method private static final OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 22
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
            "Landroidx/compose/ui/text/TextStyle;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v9, p9

    const v0, -0x35d64793

    move-object/from16 v5, p8

    .line 304
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    const-string v6, "C(OneRowSnackbar)P(5!1,3,2,1:c#ui.graphics.Color,4:c#ui.graphics.Color)307@13036L4435:Snackbar.kt#uh7d8r"

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v6, v9, 0xe

    if-nez v6, :cond_1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v9

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    and-int/lit8 v8, v9, 0x70

    if-nez v8, :cond_3

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :cond_3
    and-int/lit16 v8, v9, 0x380

    if-nez v8, :cond_5

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v6, v8

    :cond_5
    and-int/lit16 v8, v9, 0x1c00

    if-nez v8, :cond_7

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v6, v8

    :cond_7
    const v8, 0xe000

    and-int/2addr v8, v9

    move-wide/from16 v10, p4

    if-nez v8, :cond_9

    invoke-interface {v5, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v6, v8

    :cond_9
    const/high16 v8, 0x70000

    and-int/2addr v8, v9

    move-wide/from16 v12, p6

    if-nez v8, :cond_b

    invoke-interface {v5, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v6, v8

    :cond_b
    const v8, 0x5b6db

    and-int/2addr v8, v6

    const v14, 0x12492

    if-ne v8, v14, :cond_d

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_7

    .line 402
    :cond_c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v7, v3

    goto/16 :goto_d

    .line 304
    :cond_d
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, -0x1

    const-string v14, "androidx.compose.material3.OneRowSnackbar (Snackbar.kt:296)"

    invoke-static {v0, v6, v8, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 329
    :cond_e
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v14, v0

    check-cast v14, Landroidx/compose/ui/Modifier;

    sget v15, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacing:F

    const/16 v16, 0x0

    const/4 v0, 0x0

    if-nez v3, :cond_f

    sget v8, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacingButtonSide:F

    goto :goto_8

    :cond_f
    int-to-float v8, v0

    .line 591
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    :goto_8
    move/from16 v17, v8

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x0

    .line 329
    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 333
    new-instance v14, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;

    const-string v15, "action"

    const-string v7, "dismissAction"

    const-string/jumbo v0, "text"

    invoke-direct {v14, v15, v7, v0}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/ui/layout/MeasurePolicy;

    const v9, -0x4ee9b9da

    .line 308
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)73@2855L7,74@2910L7,75@2969L7,76@2981L460:Layout.kt#80mrfh"

    invoke-static {v5, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    const v10, 0x789c5f52

    const-string v11, "CC:CompositionLocal.kt#9igjgp"

    .line 593
    invoke-static {v5, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 592
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 594
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .line 593
    invoke-static {v5, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 594
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 595
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    .line 593
    invoke-static {v5, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 595
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 597
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 604
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v8

    .line 605
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 606
    :cond_10
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 607
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 608
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 610
    :cond_11
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 612
    :goto_9
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .line 599
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v10, v14, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 600
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v10, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 601
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v10, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 602
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v10, v11, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 613
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v9, v5, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0x7ab4aae9

    .line 614
    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v9, -0x9ff6cb1

    const-string v10, "C309@13066L86:Snackbar.kt#uh7d8r"

    .line 310
    invoke-static {v5, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    invoke-static {v9, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v9, Landroidx/compose/material3/SnackbarKt;->SnackbarVerticalPadding:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v0, v11, v9, v12, v10}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v9, 0x2bb5b5d7

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 616
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    const/4 v13, 0x0

    .line 620
    invoke-static {v11, v13, v5, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    const v13, -0x4ee9b9da

    .line 621
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const-string v12, "C:CompositionLocal.kt#9igjgp"

    const v9, 0x789c5f52

    .line 623
    invoke-static {v5, v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 622
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 624
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .line 623
    invoke-static {v5, v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 624
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 625
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v21, v7

    move-object/from16 v7, v18

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .line 623
    invoke-static {v5, v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 625
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 627
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 634
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 635
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 636
    :cond_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 637
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 638
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    .line 640
    :cond_13
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 642
    :goto_a
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 643
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .line 629
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v3, v11, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 630
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v3, v14, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 631
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v3, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 632
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v3, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 644
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 645
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v3, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 646
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x4ab8dd79

    const-string v3, "C72@3384L9:Box.kt#2w3rfo"

    .line 648
    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v7, Landroidx/compose/foundation/layout/BoxScope;

    const v7, 0x1ab8563e

    const-string v8, "C309@13144L6:Snackbar.kt#uh7d8r"

    .line 310
    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v7, v6, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 648
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 649
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 650
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 651
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 652
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v7, -0x9ff6c4e

    .line 653
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "311@13203L295"

    invoke-static {v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v2, :cond_16

    .line 312
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    invoke-static {v7, v15}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v8, 0x2bb5b5d7

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 654
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    const/4 v9, 0x0

    .line 658
    invoke-static {v8, v9, v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const v9, -0x4ee9b9da

    .line 659
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    const v11, 0x789c5f52

    .line 661
    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 660
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 662
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .line 661
    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 662
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 663
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/CompositionLocal;

    .line 661
    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 663
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 665
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 672
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v7

    .line 673
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 674
    :cond_14
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 675
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 676
    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 678
    :cond_15
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 680
    :goto_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 681
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 667
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v0, v8, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 668
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v0, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 669
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v0, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 670
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v0, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 682
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 683
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v0, v5, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 684
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x4ab8dd79

    .line 686
    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, 0x1ab856b1

    const-string v7, "C312@13259L221:Snackbar.kt#uh7d8r"

    .line 313
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 314
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 315
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    and-int/lit8 v7, v6, 0x70

    or-int/lit8 v7, v7, 0x8

    .line 313
    invoke-static {v0, v2, v5, v7}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 686
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 687
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 688
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 689
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 690
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 691
    :cond_16
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, 0x2aaa8f9

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "320@13570L247"

    invoke-static {v5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v7, p2

    if-eqz v7, :cond_19

    .line 321
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v8, v21

    invoke-static {v0, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v8, 0x2bb5b5d7

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 692
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    const/4 v9, 0x0

    .line 696
    invoke-static {v8, v9, v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const v9, -0x4ee9b9da

    .line 697
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    const v10, 0x789c5f52

    .line 699
    invoke-static {v5, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 698
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 700
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 699
    invoke-static {v5, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 700
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 701
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    .line 699
    invoke-static {v5, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 701
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 703
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 710
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 711
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 712
    :cond_17
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 713
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 714
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 716
    :cond_18
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 718
    :goto_c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 719
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 705
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 706
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 707
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 708
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 720
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 721
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v5, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 722
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x4ab8dd79

    .line 724
    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, 0x1ab85827

    const-string v3, "C321@13633L166:Snackbar.kt#uh7d8r"

    .line 322
    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 323
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v0, v8

    shr-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x8

    .line 322
    invoke-static {v0, v7, v5, v3}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 724
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 725
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 726
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 727
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 728
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 729
    :cond_19
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 310
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 730
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 731
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 732
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 733
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 402
    :cond_1a
    :goto_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_1b

    goto :goto_e

    :cond_1b
    new-instance v11, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJI)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_e
    return-void
.end method

.method public static final Snackbar-eQBnUkQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
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
            ">;Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJJJ",
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

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v12, p16

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x49a8a49b

    move-object/from16 v1, p14

    .line 106
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(Snackbar)P(8!1,6,2,9,3:c#ui.graphics.Color,5:c#ui.graphics.Color,1:c#ui.graphics.Color,7:c#ui.graphics.Color)99@4842L5,100@4894L5,101@4944L12,102@5007L18,103@5083L25,106@5154L1420:Snackbar.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v15, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

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
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v15

    :goto_1
    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v15, 0x70

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit8 v7, v12, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v8, v15, 0x380

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_5

    :cond_7
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v4, v9

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v8, p2

    :goto_7
    and-int/lit8 v9, v12, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v10, v15, 0x1c00

    if-nez v10, :cond_b

    move/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_8

    :cond_a
    const/16 v11, 0x400

    :goto_8
    or-int/2addr v4, v11

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v10, p3

    :goto_a
    const v11, 0xe000

    and-int/2addr v11, v15

    if-nez v11, :cond_e

    and-int/lit8 v11, v12, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p4

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_b

    :cond_c
    move-object/from16 v11, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_b
    or-int/2addr v4, v13

    goto :goto_c

    :cond_e
    move-object/from16 v11, p4

    :goto_c
    const/high16 v13, 0x70000

    and-int/2addr v13, v15

    if-nez v13, :cond_10

    and-int/lit8 v13, v12, 0x20

    move-wide/from16 v10, p5

    if-nez v13, :cond_f

    invoke-interface {v1, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x20000

    goto :goto_d

    :cond_f
    const/high16 v13, 0x10000

    :goto_d
    or-int/2addr v4, v13

    goto :goto_e

    :cond_10
    move-wide/from16 v10, p5

    :goto_e
    const/high16 v13, 0x380000

    and-int/2addr v13, v15

    if-nez v13, :cond_12

    and-int/lit8 v13, v12, 0x40

    move-wide/from16 v10, p7

    if-nez v13, :cond_11

    invoke-interface {v1, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x100000

    goto :goto_f

    :cond_11
    const/high16 v13, 0x80000

    :goto_f
    or-int/2addr v4, v13

    goto :goto_10

    :cond_12
    move-wide/from16 v10, p7

    :goto_10
    const/high16 v13, 0x1c00000

    and-int/2addr v13, v15

    if-nez v13, :cond_14

    and-int/lit16 v13, v12, 0x80

    move-wide/from16 v10, p9

    if-nez v13, :cond_13

    invoke-interface {v1, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_13

    const/high16 v13, 0x800000

    goto :goto_11

    :cond_13
    const/high16 v13, 0x400000

    :goto_11
    or-int/2addr v4, v13

    goto :goto_12

    :cond_14
    move-wide/from16 v10, p9

    :goto_12
    const/high16 v13, 0xe000000

    and-int/2addr v13, v15

    if-nez v13, :cond_16

    and-int/lit16 v13, v12, 0x100

    move-wide/from16 v10, p11

    if-nez v13, :cond_15

    invoke-interface {v1, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_15

    const/high16 v13, 0x4000000

    goto :goto_13

    :cond_15
    const/high16 v13, 0x2000000

    :goto_13
    or-int/2addr v4, v13

    goto :goto_14

    :cond_16
    move-wide/from16 v10, p11

    :goto_14
    and-int/lit16 v13, v12, 0x200

    if-eqz v13, :cond_17

    const/high16 v13, 0x30000000

    :goto_15
    or-int/2addr v4, v13

    goto :goto_16

    :cond_17
    const/high16 v13, 0x70000000

    and-int/2addr v13, v15

    if-nez v13, :cond_19

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/high16 v13, 0x20000000

    goto :goto_15

    :cond_18
    const/high16 v13, 0x10000000

    goto :goto_15

    :cond_19
    :goto_16
    const v13, 0x5b6db6db

    and-int/2addr v13, v4

    const v0, 0x12492492

    if-ne v13, v0, :cond_1b

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_17

    .line 145
    :cond_1a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v19, p7

    move-object v2, v6

    move-wide v12, v10

    move-wide/from16 v6, p5

    move-wide/from16 v10, p9

    goto/16 :goto_21

    .line 106
    :cond_1b
    :goto_17
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v13, -0xe000001

    const v17, -0x1c00001

    const v18, -0x380001

    const v19, -0x70001

    const v20, -0xe001

    if-eqz v0, :cond_22

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_18

    .line 104
    :cond_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1d

    and-int v4, v4, v20

    :cond_1d
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1e

    and-int v4, v4, v19

    :cond_1e
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_1f

    and-int v4, v4, v18

    :cond_1f
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_20

    and-int v4, v4, v17

    :cond_20
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_21

    and-int/2addr v4, v13

    :cond_21
    move-object/from16 v5, p4

    move-wide/from16 v19, p7

    move-wide/from16 v21, p9

    move-object v0, v3

    move-object v2, v8

    move/from16 v3, p3

    move-wide/from16 v8, p5

    goto/16 :goto_20

    :cond_22
    :goto_18
    if-eqz v2, :cond_23

    .line 96
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_19

    :cond_23
    move-object v0, v3

    :goto_19
    const/4 v2, 0x0

    if-eqz v5, :cond_24

    move-object v6, v2

    :cond_24
    if-eqz v7, :cond_25

    goto :goto_1a

    :cond_25
    move-object v2, v8

    :goto_1a
    if-eqz v9, :cond_26

    const/4 v3, 0x0

    goto :goto_1b

    :cond_26
    move/from16 v3, p3

    :goto_1b
    and-int/lit8 v5, v12, 0x10

    const/4 v7, 0x6

    if-eqz v5, :cond_27

    .line 100
    sget-object v5, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v5, v1, v7}, Landroidx/compose/material3/SnackbarDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int v4, v4, v20

    goto :goto_1c

    :cond_27
    move-object/from16 v5, p4

    :goto_1c
    and-int/lit8 v8, v12, 0x20

    if-eqz v8, :cond_28

    .line 101
    sget-object v8, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v8, v1, v7}, Landroidx/compose/material3/SnackbarDefaults;->getColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int v4, v4, v19

    goto :goto_1d

    :cond_28
    move-wide/from16 v8, p5

    :goto_1d
    and-int/lit8 v19, v12, 0x40

    if-eqz v19, :cond_29

    .line 102
    sget-object v13, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v13, v1, v7}, Landroidx/compose/material3/SnackbarDefaults;->getContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    and-int v4, v4, v18

    goto :goto_1e

    :cond_29
    move-wide/from16 v19, p7

    :goto_1e
    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_2a

    .line 103
    sget-object v13, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v13, v1, v7}, Landroidx/compose/material3/SnackbarDefaults;->getActionContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    and-int v4, v4, v17

    goto :goto_1f

    :cond_2a
    move-wide/from16 v21, p9

    :goto_1f
    and-int/lit16 v13, v12, 0x100

    if-eqz v13, :cond_2b

    .line 104
    sget-object v10, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v10, v1, v7}, Landroidx/compose/material3/SnackbarDefaults;->getDismissActionContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    const v7, -0xe000001

    and-int/2addr v4, v7

    :cond_2b
    :goto_20
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_2c

    const/4 v7, -0x1

    const-string v13, "androidx.compose.material3.Snackbar (Snackbar.kt:94)"

    const v12, -0x49a8a49b

    .line 106
    invoke-static {v12, v4, v7, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 112
    :cond_2c
    sget-object v12, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v12}, Landroidx/compose/material3/tokens/SnackbarTokens;->getContainerElevation-D9Ej5fM()F

    move-result v12

    .line 113
    new-instance v13, Landroidx/compose/material3/SnackbarKt$Snackbar$1;

    move-object/from16 p0, v13

    move-object/from16 p1, v6

    move-object/from16 p2, p13

    move-object/from16 p3, v2

    move-wide/from16 p4, v21

    move-wide/from16 p6, v10

    move/from16 p8, v4

    move/from16 p9, v3

    invoke-direct/range {p0 .. p9}, Landroidx/compose/material3/SnackbarKt$Snackbar$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJIZ)V

    const v7, -0x6d0e72d6

    move-object/from16 p14, v2

    const/4 v2, 0x1

    invoke-static {v1, v7, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/high16 v7, 0xc30000

    and-int/lit8 v13, v4, 0xe

    or-int/2addr v7, v13

    shr-int/lit8 v4, v4, 0x9

    and-int/lit8 v13, v4, 0x70

    or-int/2addr v7, v13

    and-int/lit16 v13, v4, 0x380

    or-int/2addr v7, v13

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v4, v7

    const/16 v7, 0x50

    move-object/from16 p0, v0

    move-object/from16 p1, v5

    move-wide/from16 p2, v8

    move-wide/from16 p4, v19

    const/4 v13, 0x0

    move/from16 p6, v13

    move/from16 p7, v12

    const/4 v12, 0x0

    move-object/from16 p8, v12

    move-object/from16 p9, v2

    move-object/from16 p10, v1

    move/from16 p11, v4

    move/from16 p12, v7

    .line 107
    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d
    move v4, v3

    move-object v2, v6

    move-wide v6, v8

    move-wide v12, v10

    move-wide/from16 v10, v21

    move-object/from16 v8, p14

    move-object v3, v0

    .line 145
    :goto_21
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-nez v9, :cond_2e

    goto :goto_22

    :cond_2e
    new-instance v17, Landroidx/compose/material3/SnackbarKt$Snackbar$2;

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v3, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v19

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/SnackbarKt$Snackbar$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v23

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_22
    return-void
.end method

.method public static final Snackbar-sDKtq54(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;II)V
    .locals 38

    move-object/from16 v1, p0

    move/from16 v15, p15

    move/from16 v13, p16

    const-string/jumbo v0, "snackbarData"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x105e641f

    move-object/from16 v2, p14

    .line 208
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(Snackbar)P(8,6,2,7,3:c#ui.graphics.Color,4:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color,5:c#ui.graphics.Color)201@9465L5,202@9517L5,203@9567L12,204@9623L11,205@9685L18,206@9761L25,236@10774L456:Snackbar.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit8 v6, v13, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v7, v15, 0x380

    if-nez v7, :cond_8

    move/from16 v7, p2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_5

    :cond_7
    const/16 v8, 0x80

    :goto_5
    or-int/2addr v3, v8

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v7, p2

    :goto_7
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    and-int/lit8 v8, v13, 0x8

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_8

    :cond_9
    move-object/from16 v8, p3

    :cond_a
    const/16 v9, 0x400

    :goto_8
    or-int/2addr v3, v9

    goto :goto_9

    :cond_b
    move-object/from16 v8, p3

    :goto_9
    const v9, 0xe000

    and-int v10, v15, v9

    if-nez v10, :cond_e

    and-int/lit8 v10, v13, 0x10

    if-nez v10, :cond_c

    move-wide/from16 v10, p4

    invoke-interface {v2, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_a

    :cond_c
    move-wide/from16 v10, p4

    :cond_d
    const/16 v12, 0x2000

    :goto_a
    or-int/2addr v3, v12

    goto :goto_b

    :cond_e
    move-wide/from16 v10, p4

    :goto_b
    const/high16 v12, 0x70000

    and-int v14, v15, v12

    if-nez v14, :cond_10

    and-int/lit8 v14, v13, 0x20

    move-wide/from16 v9, p6

    if-nez v14, :cond_f

    invoke-interface {v2, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_f

    const/high16 v11, 0x20000

    goto :goto_c

    :cond_f
    const/high16 v11, 0x10000

    :goto_c
    or-int/2addr v3, v11

    goto :goto_d

    :cond_10
    move-wide/from16 v9, p6

    :goto_d
    const/high16 v11, 0x380000

    and-int v14, v15, v11

    if-nez v14, :cond_12

    and-int/lit8 v14, v13, 0x40

    move-wide/from16 v11, p8

    if-nez v14, :cond_11

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x100000

    goto :goto_e

    :cond_11
    const/high16 v16, 0x80000

    :goto_e
    or-int v3, v3, v16

    goto :goto_f

    :cond_12
    move-wide/from16 v11, p8

    :goto_f
    const/high16 v18, 0x1c00000

    and-int v16, v15, v18

    if-nez v16, :cond_14

    and-int/lit16 v14, v13, 0x80

    move-wide/from16 v0, p10

    if-nez v14, :cond_13

    invoke-interface {v2, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x800000

    goto :goto_10

    :cond_13
    const/high16 v16, 0x400000

    :goto_10
    or-int v3, v3, v16

    goto :goto_11

    :cond_14
    move-wide/from16 v0, p10

    :goto_11
    const/high16 v20, 0xe000000

    and-int v16, v15, v20

    if-nez v16, :cond_16

    and-int/lit16 v14, v13, 0x100

    move-wide/from16 v0, p12

    if-nez v14, :cond_15

    invoke-interface {v2, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v14

    if-eqz v14, :cond_15

    const/high16 v14, 0x4000000

    goto :goto_12

    :cond_15
    const/high16 v14, 0x2000000

    :goto_12
    or-int/2addr v3, v14

    goto :goto_13

    :cond_16
    move-wide/from16 v0, p12

    :goto_13
    const v14, 0xb6db6db

    and-int/2addr v14, v3

    const v0, 0x2492492

    if-ne v14, v0, :cond_18

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_14

    .line 249
    :cond_17
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p0

    move-wide/from16 v33, p10

    move-wide/from16 v35, p12

    move v3, v7

    move-object v4, v8

    move-wide/from16 v7, p4

    goto/16 :goto_1e

    .line 208
    :cond_18
    :goto_14
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v1, -0x1c00001

    const v14, -0x380001

    const v21, -0x70001

    const v22, -0xe001

    if-eqz v0, :cond_20

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_15

    .line 207
    :cond_19
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_1a

    and-int/lit16 v3, v3, -0x1c01

    :cond_1a
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_1b

    and-int v3, v3, v22

    :cond_1b
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_1c

    and-int v3, v3, v21

    :cond_1c
    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_1d

    and-int/2addr v3, v14

    :cond_1d
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_1e

    and-int/2addr v3, v1

    :cond_1e
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_1f

    const v0, -0xe000001

    and-int/2addr v3, v0

    :cond_1f
    move-wide/from16 v33, p10

    move-wide/from16 v35, p12

    move-object v0, v5

    move v4, v7

    move-object v5, v8

    move-wide/from16 v7, p4

    goto/16 :goto_1b

    :cond_20
    :goto_15
    if-eqz v4, :cond_21

    .line 200
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_16

    :cond_21
    move-object v0, v5

    :goto_16
    if-eqz v6, :cond_22

    const/4 v4, 0x0

    goto :goto_17

    :cond_22
    move v4, v7

    :goto_17
    and-int/lit8 v5, v13, 0x8

    const/4 v6, 0x6

    if-eqz v5, :cond_23

    .line 202
    sget-object v5, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v5, v2, v6}, Landroidx/compose/material3/SnackbarDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_18

    :cond_23
    move-object v5, v8

    :goto_18
    and-int/lit8 v7, v13, 0x10

    if-eqz v7, :cond_24

    .line 203
    sget-object v7, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v7, v2, v6}, Landroidx/compose/material3/SnackbarDefaults;->getColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    and-int v3, v3, v22

    goto :goto_19

    :cond_24
    move-wide/from16 v7, p4

    :goto_19
    and-int/lit8 v22, v13, 0x20

    if-eqz v22, :cond_25

    .line 204
    sget-object v9, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v9, v2, v6}, Landroidx/compose/material3/SnackbarDefaults;->getContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int v3, v3, v21

    :cond_25
    and-int/lit8 v21, v13, 0x40

    if-eqz v21, :cond_26

    .line 205
    sget-object v11, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v11, v2, v6}, Landroidx/compose/material3/SnackbarDefaults;->getActionColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    and-int/2addr v3, v14

    :cond_26
    and-int/lit16 v14, v13, 0x80

    if-eqz v14, :cond_27

    .line 206
    sget-object v14, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v14, v2, v6}, Landroidx/compose/material3/SnackbarDefaults;->getActionContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    and-int/2addr v1, v3

    move v3, v1

    goto :goto_1a

    :cond_27
    move-wide/from16 v21, p10

    :goto_1a
    and-int/lit16 v1, v13, 0x100

    if-eqz v1, :cond_28

    .line 207
    sget-object v1, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v1, v2, v6}, Landroidx/compose/material3/SnackbarDefaults;->getDismissActionContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    const v1, -0xe000001

    and-int/2addr v3, v1

    move-wide/from16 v33, v21

    move-wide/from16 v35, v23

    goto :goto_1b

    :cond_28
    move-wide/from16 v35, p12

    move-wide/from16 v33, v21

    :goto_1b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, -0x1

    const-string v6, "androidx.compose.material3.Snackbar (Snackbar.kt:197)"

    const v14, 0x105e641f

    .line 208
    invoke-static {v14, v3, v1, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 209
    :cond_29
    invoke-interface/range {p0 .. p0}, Landroidx/compose/material3/SnackbarData;->getVisuals()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/material3/SnackbarVisuals;->getActionLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    if-eqz v1, :cond_2a

    .line 211
    new-instance v14, Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1;

    move-object/from16 p1, v14

    move-wide/from16 p2, v11

    move/from16 p4, v3

    move-object/from16 p5, p0

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1;-><init>(JILandroidx/compose/material3/SnackbarData;Ljava/lang/String;)V

    const v1, -0x5227657f

    invoke-static {v2, v1, v6, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    goto :goto_1c

    :cond_2a
    const/4 v1, 0x0

    .line 222
    :goto_1c
    invoke-interface/range {p0 .. p0}, Landroidx/compose/material3/SnackbarData;->getVisuals()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/material3/SnackbarVisuals;->getWithDismissAction()Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 223
    new-instance v14, Landroidx/compose/material3/SnackbarKt$Snackbar$dismissActionComposable$1;

    move-object/from16 v6, p0

    invoke-direct {v14, v6, v3}, Landroidx/compose/material3/SnackbarKt$Snackbar$dismissActionComposable$1;-><init>(Landroidx/compose/material3/SnackbarData;I)V

    move-wide/from16 p2, v11

    const v11, -0x6c0a98b1

    const/4 v12, 0x1

    invoke-static {v2, v11, v12, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function2;

    goto :goto_1d

    :cond_2b
    move-object/from16 v6, p0

    move-wide/from16 p2, v11

    const/4 v11, 0x0

    :goto_1d
    const/16 v12, 0xc

    int-to-float v12, v12

    .line 436
    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    .line 238
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 247
    new-instance v12, Landroidx/compose/material3/SnackbarKt$Snackbar$3;

    invoke-direct {v12, v6}, Landroidx/compose/material3/SnackbarKt$Snackbar$3;-><init>(Landroidx/compose/material3/SnackbarData;)V

    const v14, -0x4b7b9086

    move-object/from16 p4, v0

    const/4 v0, 0x1

    invoke-static {v2, v14, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v3, 0x3

    and-int/lit16 v12, v0, 0x1c00

    const/high16 v14, 0x30000000

    or-int/2addr v12, v14

    const v14, 0xe000

    and-int/2addr v14, v0

    or-int/2addr v12, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v0

    or-int/2addr v12, v14

    const/high16 v14, 0x380000

    and-int/2addr v0, v14

    or-int/2addr v0, v12

    and-int v12, v3, v18

    or-int/2addr v0, v12

    and-int v3, v3, v20

    or-int v31, v0, v3

    const/16 v32, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    move-wide/from16 v23, v9

    move-wide/from16 v25, v33

    move-wide/from16 v27, v35

    move-object/from16 v30, v2

    .line 237
    invoke-static/range {v16 .. v32}, Landroidx/compose/material3/SnackbarKt;->Snackbar-eQBnUkQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    move-wide/from16 v11, p2

    move v3, v4

    move-object v4, v5

    move-object/from16 v5, p4

    .line 249
    :goto_1e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_2d

    goto :goto_1f

    :cond_2d
    new-instance v17, Landroidx/compose/material3/SnackbarKt$Snackbar$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide/from16 v11, v33

    move-object/from16 v37, v14

    move-wide/from16 v13, v35

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/SnackbarKt$Snackbar$4;-><init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJII)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v37

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1f
    return-void
.end method

.method public static final synthetic access$NewLineButtonSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/SnackbarKt;->NewLineButtonSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/SnackbarKt;->OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getContainerMaxWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SnackbarKt;->ContainerMaxWidth:F

    return v0
.end method

.method public static final synthetic access$getHeightToFirstLine$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SnackbarKt;->HeightToFirstLine:F

    return v0
.end method

.method public static final synthetic access$getTextEndExtraSpacing$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SnackbarKt;->TextEndExtraSpacing:F

    return v0
.end method
