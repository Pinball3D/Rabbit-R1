.class public final Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "BasicText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,436:1\n76#2:437\n76#2:438\n76#2:447\n76#2:448\n76#2:477\n76#2:478\n76#2:487\n76#2:523\n50#3:439\n49#3:440\n286#3,8:454\n294#3,2:474\n50#3:479\n49#3:480\n286#3,8:493\n294#3,2:513\n25#3:516\n36#3:524\n36#3:531\n456#3,8:549\n464#3,6:563\n1097#4,6:441\n1097#4,6:481\n1097#4,6:517\n1097#4,6:525\n1097#4,6:532\n123#5,5:449\n129#5,5:462\n134#5:473\n136#5:476\n123#5,5:488\n129#5,5:501\n134#5:512\n136#5:515\n78#5,11:538\n91#5:569\n4144#6,6:467\n4144#6,6:506\n4144#6,6:557\n*S KotlinDebug\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n*L\n95#1:437\n97#1:438\n119#1:447\n131#1:448\n184#1:477\n186#1:478\n210#1:487\n239#1:523\n98#1:439\n98#1:440\n139#1:454,8\n139#1:474,2\n187#1:479\n187#1:480\n198#1:493,8\n198#1:513,2\n223#1:516\n241#1:524\n245#1:531\n226#1:549,8\n226#1:563,6\n98#1:441,6\n187#1:481,6\n223#1:517,6\n241#1:525,6\n245#1:532,6\n139#1:449,5\n139#1:462,5\n139#1:473\n139#1:476\n198#1:488,5\n198#1:501,5\n198#1:512\n198#1:515\n226#1:538,11\n226#1:569\n139#1:467,6\n198#1:506,6\n226#1:557,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0087\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0093\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001a}\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0014\u0008\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001ag\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001aq\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010 \u001a}\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010!\u001a\u001e\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$0#2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002\u001a\u00af\u0001\u0010\'\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010(\u001a\u00020)2\u0014\u0010*\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0,\u0018\u00010+2\u001c\u0010.\u001a\u0018\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010/0+\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0008\u00100\u001a\u0004\u0018\u0001012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00082\u00103\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00064"
    }
    d2 = {
        "BasicText",
        "",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "onTextLayout",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "softWrap",
        "",
        "maxLines",
        "",
        "minLines",
        "inlineContent",
        "",
        "",
        "Landroidx/compose/foundation/text/InlineTextContent;",
        "BasicText-VhcvRP8",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "color",
        "Landroidx/compose/ui/graphics/ColorProducer;",
        "BasicText-RWo7tUw",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V",
        "BasicText-4YKlhWE",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "BasicText-BpD7jsM",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V",
        "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V",
        "selectionIdSaver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "",
        "selectionRegistrar",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
        "textModifier",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "placeholders",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/Placeholder;",
        "onPlaceholderLayout",
        "Landroidx/compose/ui/geometry/Rect;",
        "selectionController",
        "Landroidx/compose/foundation/text/modifiers/SelectionController;",
        "textModifier-RWo7tUw",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;",
        "foundation_release"
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
.method public static final synthetic BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p9

    move/from16 v15, p10

    const-string/jumbo v0, "text"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x26a8f0e8

    move-object/from16 v1, p8

    .line 284
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const-string v1, "C(BasicText)P(7,2,6,3,4:c#ui.text.style.TextOverflow,5,1)284@12151L273:BasicText.kt#423gt5"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v14, 0xe

    if-nez v1, :cond_2

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, v15, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v1, v7

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v6, p2

    :goto_7
    and-int/lit8 v7, v15, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_8

    :cond_a
    const/16 v9, 0x400

    :goto_8
    or-int/2addr v1, v9

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v8, p3

    :goto_a
    and-int/lit8 v9, v15, 0x10

    const v10, 0xe000

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_c

    :cond_c
    and-int v11, v14, v10

    if-nez v11, :cond_e

    move/from16 v11, p4

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_b

    :cond_d
    const/16 v16, 0x2000

    :goto_b
    or-int v1, v1, v16

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v11, p4

    :goto_d
    and-int/lit8 v16, v15, 0x20

    const/high16 v17, 0x70000

    if-eqz v16, :cond_f

    const/high16 v18, 0x30000

    or-int v1, v1, v18

    move/from16 v10, p5

    goto :goto_f

    :cond_f
    and-int v18, v14, v17

    move/from16 v10, p5

    if-nez v18, :cond_11

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v18, 0x10000

    :goto_e
    or-int v1, v1, v18

    :cond_11
    :goto_f
    and-int/lit8 v18, v15, 0x40

    const/high16 v19, 0x380000

    if-eqz v18, :cond_12

    const/high16 v20, 0x180000

    or-int v1, v1, v20

    move/from16 v0, p6

    goto :goto_11

    :cond_12
    and-int v20, v14, v19

    move/from16 v0, p6

    if-nez v20, :cond_14

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v21, 0x80000

    :goto_10
    or-int v1, v1, v21

    :cond_14
    :goto_11
    and-int/lit16 v5, v15, 0x80

    if-eqz v5, :cond_15

    const/high16 v22, 0x400000

    or-int v1, v1, v22

    :cond_15
    const/16 v0, 0x80

    if-ne v5, v0, :cond_17

    const v0, 0x16db6db

    and-int/2addr v0, v1

    const v3, 0x492492

    if-ne v0, v3, :cond_17

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_12

    .line 296
    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v7, p6

    move-object v3, v6

    move-object v4, v8

    move v6, v10

    move v5, v11

    move-object/from16 v19, v12

    move-object/from16 v8, p7

    goto/16 :goto_1a

    :cond_17
    :goto_12
    if-eqz v2, :cond_18

    .line 277
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v0

    goto :goto_13

    :cond_18
    move-object/from16 v21, p1

    :goto_13
    if-eqz v4, :cond_19

    .line 278
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_14

    :cond_19
    move-object/from16 v22, v6

    :goto_14
    if-eqz v7, :cond_1a

    const/4 v0, 0x0

    move-object/from16 v23, v0

    goto :goto_15

    :cond_1a
    move-object/from16 v23, v8

    :goto_15
    if-eqz v9, :cond_1b

    .line 280
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move/from16 v24, v0

    goto :goto_16

    :cond_1b
    move/from16 v24, v11

    :goto_16
    if-eqz v16, :cond_1c

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_17

    :cond_1c
    move/from16 v16, v10

    :goto_17
    if-eqz v18, :cond_1d

    const v0, 0x7fffffff

    move/from16 v18, v0

    goto :goto_18

    :cond_1d
    move/from16 v18, p6

    :goto_18
    if-eqz v5, :cond_1e

    .line 283
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_19

    :cond_1e
    move-object/from16 v25, p7

    :goto_19
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:274)"

    const v3, -0x26a8f0e8

    .line 284
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/high16 v0, 0x8c00000

    and-int/lit8 v2, v1, 0xe

    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v2, v1, v17

    or-int/2addr v0, v2

    and-int v1, v1, v19

    or-int v11, v0, v1

    const/16 v17, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v16

    move/from16 v6, v18

    move-object/from16 v8, v25

    move-object v10, v12

    move-object/from16 v19, v12

    move/from16 v12, v17

    .line 285
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_20
    move/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move/from16 v5, v24

    move-object/from16 v8, v25

    .line 296
    :goto_1a
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_21

    goto :goto_1b

    :cond_21
    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;II)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1b
    return-void
.end method

.method public static final synthetic BasicText-4YKlhWE(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V
    .locals 27
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compat"
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p9

    move/from16 v14, p10

    const-string/jumbo v0, "text"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5bf3fbc9

    move-object/from16 v1, p8

    .line 309
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    const-string v1, "C(BasicText)P(7,2,6,3,4:c#ui.text.style.TextOverflow,5)308@12822L86:BasicText.kt#423gt5"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v2, v14, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, v14, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_5

    :cond_7
    const/16 v6, 0x80

    :goto_5
    or-int/2addr v1, v6

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v5, p2

    :goto_7
    and-int/lit8 v6, v14, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_8

    :cond_a
    const/16 v8, 0x400

    :goto_8
    or-int/2addr v1, v8

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v7, p3

    :goto_a
    and-int/lit8 v8, v14, 0x10

    const v9, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_c

    :cond_c
    and-int v10, v13, v9

    if-nez v10, :cond_e

    move/from16 v10, p4

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_b

    :cond_d
    const/16 v11, 0x2000

    :goto_b
    or-int/2addr v1, v11

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v10, p4

    :goto_d
    and-int/lit8 v11, v14, 0x20

    const/high16 v16, 0x70000

    if-eqz v11, :cond_f

    const/high16 v17, 0x30000

    or-int v1, v1, v17

    move/from16 v9, p5

    goto :goto_f

    :cond_f
    and-int v17, v13, v16

    move/from16 v9, p5

    if-nez v17, :cond_11

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v17, 0x10000

    :goto_e
    or-int v1, v1, v17

    :cond_11
    :goto_f
    and-int/lit8 v17, v14, 0x40

    const/high16 v18, 0x380000

    if-eqz v17, :cond_12

    const/high16 v19, 0x180000

    or-int v1, v1, v19

    move/from16 v0, p6

    goto :goto_11

    :cond_12
    and-int v19, v13, v18

    move/from16 v0, p6

    if-nez v19, :cond_14

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v20, 0x80000

    :goto_10
    or-int v1, v1, v20

    :cond_14
    :goto_11
    and-int/lit16 v0, v14, 0x80

    const/high16 v20, 0x1c00000

    if-eqz v0, :cond_15

    const/high16 v21, 0xc00000

    or-int v1, v1, v21

    move/from16 v3, p7

    goto :goto_13

    :cond_15
    and-int v21, v13, v20

    move/from16 v3, p7

    if-nez v21, :cond_17

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v21, 0x400000

    :goto_12
    or-int v1, v1, v21

    :cond_17
    :goto_13
    const v21, 0x16db6db

    and-int v3, v1, v21

    const v5, 0x492492

    if-ne v3, v5, :cond_19

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_14

    :cond_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p7

    move-object v4, v7

    move v6, v9

    move v5, v10

    move/from16 v7, p6

    goto/16 :goto_1c

    :cond_19
    :goto_14
    if-eqz v2, :cond_1a

    .line 302
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v2

    goto :goto_15

    :cond_1a
    move-object/from16 v21, p1

    :goto_15
    if-eqz v4, :cond_1b

    .line 303
    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_16

    :cond_1b
    move-object/from16 v22, p2

    :goto_16
    if-eqz v6, :cond_1c

    const/4 v2, 0x0

    move-object/from16 v23, v2

    goto :goto_17

    :cond_1c
    move-object/from16 v23, v7

    :goto_17
    if-eqz v8, :cond_1d

    .line 305
    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v2

    move/from16 v24, v2

    goto :goto_18

    :cond_1d
    move/from16 v24, v10

    :goto_18
    const/4 v2, 0x1

    if-eqz v11, :cond_1e

    move/from16 v25, v2

    goto :goto_19

    :cond_1e
    move/from16 v25, v9

    :goto_19
    if-eqz v17, :cond_1f

    const v3, 0x7fffffff

    move/from16 v17, v3

    goto :goto_1a

    :cond_1f
    move/from16 v17, p6

    :goto_1a
    if-eqz v0, :cond_20

    move/from16 v26, v2

    goto :goto_1b

    :cond_20
    move/from16 v26, p7

    .line 308
    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:299)"

    const v3, 0x5bf3fbc9

    .line 309
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21
    const/4 v8, 0x0

    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v2, v1, v16

    or-int/2addr v0, v2

    and-int v2, v1, v18

    or-int/2addr v0, v2

    and-int v1, v1, v20

    or-int v10, v0, v1

    const/16 v11, 0x100

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v17

    move/from16 v7, v26

    move-object v9, v15

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    move/from16 v7, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v8, v26

    :goto_1c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_23

    goto :goto_1d

    :cond_23
    new-instance v15, Landroidx/compose/foundation/text/BasicTextKt$BasicText$8;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$8;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIII)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1d
    return-void
.end method

.method public static final synthetic BasicText-BpD7jsM(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V
    .locals 23
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p8

    const-string/jumbo v0, "text"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3cf10926

    move-object/from16 v1, p7

    .line 260
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    const-string v1, "C(BasicText)P(6,1,5,2,3:c#ui.text.style.TextOverflow,4)260@11460L234:BasicText.kt#423gt5"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_5

    :cond_7
    const/16 v6, 0x80

    :goto_5
    or-int/2addr v1, v6

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v5, p2

    :goto_7
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v7, v13, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_8

    :cond_a
    const/16 v8, 0x400

    :goto_8
    or-int/2addr v1, v8

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v7, p3

    :goto_a
    and-int/lit8 v8, p9, 0x10

    const v9, 0xe000

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_c

    :cond_c
    and-int v10, v13, v9

    if-nez v10, :cond_e

    move/from16 v10, p4

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_b

    :cond_d
    const/16 v11, 0x2000

    :goto_b
    or-int/2addr v1, v11

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v10, p4

    :goto_d
    and-int/lit8 v11, p9, 0x20

    const/high16 v15, 0x70000

    if-eqz v11, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v15, p5

    goto :goto_f

    :cond_f
    and-int v16, v13, v15

    move/from16 v15, p5

    if-nez v16, :cond_11

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v16, 0x10000

    :goto_e
    or-int v1, v1, v16

    :cond_11
    :goto_f
    and-int/lit8 v16, p9, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move/from16 v9, p6

    goto :goto_11

    :cond_12
    and-int v18, v13, v17

    move/from16 v9, p6

    if-nez v18, :cond_14

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v19, 0x80000

    :goto_10
    or-int v1, v1, v19

    :cond_14
    :goto_11
    const v19, 0x2db6db

    and-int v0, v1, v19

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_12

    .line 271
    :cond_15
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v4, v7

    move v7, v9

    move v5, v10

    move v6, v15

    goto/16 :goto_18

    :cond_16
    :goto_12
    if-eqz v2, :cond_17

    .line 254
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v19, v0

    goto :goto_13

    :cond_17
    move-object/from16 v19, p1

    :goto_13
    if-eqz v4, :cond_18

    .line 255
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_14

    :cond_18
    move-object/from16 v20, v5

    :goto_14
    if-eqz v6, :cond_19

    const/4 v0, 0x0

    move-object/from16 v21, v0

    goto :goto_15

    :cond_19
    move-object/from16 v21, v7

    :goto_15
    if-eqz v8, :cond_1a

    .line 257
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move/from16 v22, v0

    goto :goto_16

    :cond_1a
    move/from16 v22, v10

    :goto_16
    if-eqz v11, :cond_1b

    const/4 v0, 0x1

    move v15, v0

    :cond_1b
    if-eqz v16, :cond_1c

    const v0, 0x7fffffff

    move/from16 v16, v0

    goto :goto_17

    :cond_1c
    move/from16 v16, v9

    .line 259
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:251)"

    const v3, 0x3cf10926

    .line 260
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v0, 0xc00000

    and-int/lit8 v2, v1, 0xe

    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v1, v1, v17

    or-int v10, v0, v1

    const/16 v11, 0x100

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    move v5, v15

    move/from16 v6, v16

    move-object v9, v14

    .line 261
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1e
    move v6, v15

    move/from16 v7, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    .line 271
    :goto_18
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_1f

    goto :goto_19

    :cond_1f
    new-instance v11, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIII)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_19
    return-void
.end method

.method public static final BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p11

    move/from16 v15, p12

    const-string/jumbo v0, "text"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x3f70023c

    move-object/from16 v1, p10

    .line 179
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const-string v1, "C(BasicText)P(9,4,8,5,6:c#ui.text.style.TextOverflow,7,2,3,1)183@8574L7:BasicText.kt#423gt5"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v14, 0xe

    if-nez v1, :cond_2

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v3, v15, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v4, p1

    :goto_4
    and-int/lit8 v5, v15, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v1, v7

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v6, p2

    :goto_7
    and-int/lit8 v7, v15, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_8

    :cond_a
    const/16 v9, 0x400

    :goto_8
    or-int/2addr v1, v9

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v8, p3

    :goto_a
    and-int/lit8 v9, v15, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_c

    :cond_c
    const v10, 0xe000

    and-int/2addr v10, v14

    if-nez v10, :cond_e

    move/from16 v10, p4

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_b

    :cond_d
    const/16 v11, 0x2000

    :goto_b
    or-int/2addr v1, v11

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v10, p4

    :goto_d
    and-int/lit8 v11, v15, 0x20

    if-eqz v11, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v2, p5

    goto :goto_f

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v14, v16

    move/from16 v2, p5

    if-nez v16, :cond_11

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v16, 0x10000

    :goto_e
    or-int v1, v1, v16

    :cond_11
    :goto_f
    and-int/lit8 v16, v15, 0x40

    if-eqz v16, :cond_12

    const/high16 v17, 0x180000

    or-int v1, v1, v17

    move/from16 v0, p6

    goto :goto_11

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v14, v17

    move/from16 v0, p6

    if-nez v17, :cond_14

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v18, 0x80000

    :goto_10
    or-int v1, v1, v18

    :cond_14
    :goto_11
    and-int/lit16 v0, v15, 0x80

    if-eqz v0, :cond_15

    const/high16 v18, 0xc00000

    or-int v1, v1, v18

    move/from16 v2, p7

    goto :goto_13

    :cond_15
    const/high16 v18, 0x1c00000

    and-int v18, v14, v18

    move/from16 v2, p7

    if-nez v18, :cond_17

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v18, 0x400000

    :goto_12
    or-int v1, v1, v18

    :cond_17
    :goto_13
    and-int/lit16 v2, v15, 0x100

    if-eqz v2, :cond_18

    const/high16 v18, 0x2000000

    or-int v1, v1, v18

    :cond_18
    and-int/lit16 v4, v15, 0x200

    if-eqz v4, :cond_19

    const/high16 v18, 0x10000000

    or-int v1, v1, v18

    :cond_19
    and-int/lit16 v6, v15, 0x300

    const/16 v8, 0x300

    if-ne v6, v8, :cond_1b

    const v6, 0x5b6db6db

    and-int/2addr v6, v1

    const v8, 0x12492492

    if-ne v6, v8, :cond_1b

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_14

    .line 248
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move v5, v10

    move-object v15, v12

    move-object v1, v13

    move-object/from16 v10, p9

    goto/16 :goto_22

    :cond_1b
    :goto_14
    if-eqz v3, :cond_1c

    .line 170
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object/from16 v41, v3

    goto :goto_15

    :cond_1c
    move-object/from16 v41, p1

    :goto_15
    if-eqz v5, :cond_1d

    .line 171
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    move-object/from16 v42, v3

    goto :goto_16

    :cond_1d
    move-object/from16 v42, p2

    :goto_16
    const/4 v3, 0x0

    if-eqz v7, :cond_1e

    move-object/from16 v43, v3

    goto :goto_17

    :cond_1e
    move-object/from16 v43, p3

    :goto_17
    if-eqz v9, :cond_1f

    .line 173
    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v5

    move/from16 v44, v5

    goto :goto_18

    :cond_1f
    move/from16 v44, v10

    :goto_18
    const/4 v5, 0x1

    if-eqz v11, :cond_20

    move/from16 v45, v5

    goto :goto_19

    :cond_20
    move/from16 v45, p5

    :goto_19
    if-eqz v16, :cond_21

    const v6, 0x7fffffff

    move v11, v6

    goto :goto_1a

    :cond_21
    move/from16 v11, p6

    :goto_1a
    if-eqz v0, :cond_22

    move v10, v5

    goto :goto_1b

    :cond_22
    move/from16 v10, p7

    :goto_1b
    if-eqz v2, :cond_23

    .line 177
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v9, v0

    goto :goto_1c

    :cond_23
    move-object/from16 v9, p8

    :goto_1c
    if-eqz v4, :cond_24

    move-object/from16 v16, v3

    goto :goto_1d

    :cond_24
    move-object/from16 v16, p9

    .line 178
    :goto_1d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:167)"

    const v4, -0x3f70023c

    .line 179
    invoke-static {v4, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 180
    :cond_25
    invoke-static {v10, v11}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    .line 184
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    .line 477
    invoke-static {v12, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 184
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    const v5, 0x392ce0d0

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "185@8710L7,186@8742L190"

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v0, :cond_28

    .line 186
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 478
    invoke-static {v12, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v5, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 186
    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    const v8, 0x1e7b2b64

    .line 187
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 479
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v7, v8

    .line 481
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_26

    .line 482
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v8, v7, :cond_27

    .line 188
    :cond_26
    new-instance v8, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/4 v7, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object/from16 p1, v8

    move-object/from16 p2, v0

    move-wide/from16 p3, v5

    move-object/from16 p5, v7

    move/from16 p6, v17

    move-object/from16 p7, v18

    invoke-direct/range {p1 .. p7}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 484
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 480
    :cond_27
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Landroidx/compose/foundation/text/modifiers/SelectionController;

    move-object/from16 v17, v8

    goto :goto_1e

    :cond_28
    move-object/from16 v17, v3

    .line 185
    :goto_1e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 196
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->hasInlineContent(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_2d

    const v0, 0x392ce253

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "209@9592L7,197@9078L768"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v41

    .line 201
    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 210
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .line 487
    invoke-static {v12, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move/from16 v4, v44

    move/from16 v5, v45

    move v6, v11

    move v7, v10

    move-object/from16 v8, v18

    move-object v14, v9

    move-object/from16 v9, v19

    move/from16 v46, v10

    move-object/from16 v10, v20

    move/from16 v47, v11

    move-object/from16 v11, v17

    move-object v15, v12

    move-object/from16 v12, v16

    .line 202
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 216
    sget-object v1, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    const v2, 0x207baf9a

    .line 198
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Layout)P(1)122@4734L23,125@4885L385:Layout.kt#80mrfh"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 488
    invoke-static {v15, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    .line 489
    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 490
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 492
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const v5, 0x53ca7ea5

    .line 491
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(ReusableComposeNode):Composables.kt#9igjgp"

    invoke-static {v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 493
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 494
    :cond_29
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 495
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 496
    new-instance v5, Landroidx/compose/foundation/text/BasicTextKt$BasicText-RWo7tUw$$inlined$Layout$1;

    invoke-direct {v5, v4}, Landroidx/compose/foundation/text/BasicTextKt$BasicText-RWo7tUw$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1f

    .line 498
    :cond_2a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 500
    :goto_1f
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .line 501
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 502
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 503
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 505
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 507
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 508
    :cond_2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 509
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 513
    :cond_2c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 514
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 196
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v1, v13

    move-object/from16 v20, v14

    goto/16 :goto_21

    :cond_2d
    move-object v14, v9

    move/from16 v46, v10

    move/from16 v47, v11

    move-object v15, v12

    move v12, v8

    const v0, 0x392ce5ae

    .line 218
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "222@10070L81,238@10733L7,240@10825L43,244@11020L38,225@10160L908"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 220
    invoke-static {v13, v14}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->resolveInlineContent(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    const v0, -0x1d58f75c

    .line 223
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 517
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 518
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_2e

    const/4 v5, 0x2

    .line 224
    invoke-static {v3, v3, v5, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 520
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 516
    :cond_2e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 223
    move-object v10, v0

    check-cast v10, Landroidx/compose/runtime/MutableState;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v41

    .line 230
    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 239
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .line 523
    invoke-static {v15, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const v7, 0x44faf204

    .line 241
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v15, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 524
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 525
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2f

    .line 526
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_30

    .line 241
    :cond_2f
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3$1;

    invoke-direct {v2, v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 528
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    :cond_30
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v18, v3

    check-cast v18, Lkotlin/jvm/functions/Function1;

    move/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move/from16 v4, v44

    move/from16 v5, v45

    move-object/from16 v20, v14

    move-object v14, v6

    move/from16 v6, v47

    move v13, v7

    move/from16 v7, v46

    move-object/from16 v48, v10

    move-object/from16 v10, v18

    move-object/from16 v49, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    .line 231
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 245
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v1, v48

    .line 531
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 532
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_31

    .line 533
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_32

    .line 245
    :cond_31
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4$1;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 535
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 531
    :cond_32
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 245
    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    const v2, -0x4ee9b9da

    .line 226
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 538
    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 539
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 541
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 548
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 549
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 550
    :cond_33
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 551
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 552
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    .line 554
    :cond_34
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 556
    :goto_20
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .line 543
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 544
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 546
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 558
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_35

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 559
    :cond_35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 560
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 563
    :cond_36
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 564
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, 0x5082871d

    const-string v1, "C226@10192L63:BasicText.kt#423gt5"

    .line 227
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v19, 0xe

    or-int/lit8 v0, v0, 0x40

    move-object/from16 v1, p0

    move-object/from16 v2, v49

    invoke-static {v1, v2, v15, v0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 566
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 567
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 568
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 218
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_21
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_37
    move-object/from16 v10, v16

    move-object/from16 v9, v20

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    move/from16 v5, v44

    move/from16 v6, v45

    move/from16 v8, v46

    move/from16 v7, v47

    .line 248
    :goto_22
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_38

    goto :goto_23

    :cond_38
    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$BasicText$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$5;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_23
    return-void
.end method

.method public static final synthetic BasicText-VhcvRP8(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compat"
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p10

    move/from16 v15, p11

    const-string/jumbo v0, "text"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x32bf773b

    move-object/from16 v1, p9

    .line 323
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const-string v1, "C(BasicText)P(8,3,7,4,5:c#ui.text.style.TextOverflow,6,1,2)322@13374L240:BasicText.kt#423gt5"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v14, 0xe

    if-nez v1, :cond_2

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, v15, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v1, v7

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v6, p2

    :goto_7
    and-int/lit8 v7, v15, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_8

    :cond_a
    const/16 v9, 0x400

    :goto_8
    or-int/2addr v1, v9

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v8, p3

    :goto_a
    and-int/lit8 v9, v15, 0x10

    const v10, 0xe000

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_c

    :cond_c
    and-int v11, v14, v10

    if-nez v11, :cond_e

    move/from16 v11, p4

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_b

    :cond_d
    const/16 v16, 0x2000

    :goto_b
    or-int v1, v1, v16

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v11, p4

    :goto_d
    and-int/lit8 v16, v15, 0x20

    const/high16 v17, 0x70000

    if-eqz v16, :cond_f

    const/high16 v18, 0x30000

    or-int v1, v1, v18

    move/from16 v10, p5

    goto :goto_f

    :cond_f
    and-int v18, v14, v17

    move/from16 v10, p5

    if-nez v18, :cond_11

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v18, 0x10000

    :goto_e
    or-int v1, v1, v18

    :cond_11
    :goto_f
    and-int/lit8 v18, v15, 0x40

    const/high16 v19, 0x380000

    if-eqz v18, :cond_12

    const/high16 v20, 0x180000

    or-int v1, v1, v20

    move/from16 v0, p6

    goto :goto_11

    :cond_12
    and-int v20, v14, v19

    move/from16 v0, p6

    if-nez v20, :cond_14

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v21, 0x80000

    :goto_10
    or-int v1, v1, v21

    :cond_14
    :goto_11
    and-int/lit16 v5, v15, 0x80

    const/high16 v22, 0x1c00000

    if-eqz v5, :cond_15

    const/high16 v23, 0xc00000

    or-int v1, v1, v23

    move/from16 v0, p7

    goto :goto_13

    :cond_15
    and-int v23, v14, v22

    move/from16 v0, p7

    if-nez v23, :cond_17

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v23, 0x400000

    :goto_12
    or-int v1, v1, v23

    :cond_17
    :goto_13
    and-int/lit16 v0, v15, 0x100

    if-eqz v0, :cond_18

    const/high16 v23, 0x2000000

    or-int v1, v1, v23

    :cond_18
    const/16 v3, 0x100

    if-ne v0, v3, :cond_1a

    const v3, 0xb6db6db

    and-int/2addr v3, v1

    const v6, 0x2492492

    if-ne v3, v6, :cond_1a

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_14

    .line 333
    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object v4, v8

    move v6, v10

    move v5, v11

    move-object/from16 v19, v12

    move/from16 v8, p7

    goto/16 :goto_1d

    :cond_1a
    :goto_14
    if-eqz v2, :cond_1b

    .line 315
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v2

    goto :goto_15

    :cond_1b
    move-object/from16 v21, p1

    :goto_15
    if-eqz v4, :cond_1c

    .line 316
    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_16

    :cond_1c
    move-object/from16 v23, p2

    :goto_16
    if-eqz v7, :cond_1d

    const/4 v2, 0x0

    move-object/from16 v24, v2

    goto :goto_17

    :cond_1d
    move-object/from16 v24, v8

    :goto_17
    if-eqz v9, :cond_1e

    .line 318
    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v2

    move/from16 v25, v2

    goto :goto_18

    :cond_1e
    move/from16 v25, v11

    :goto_18
    const/4 v2, 0x1

    if-eqz v16, :cond_1f

    move/from16 v16, v2

    goto :goto_19

    :cond_1f
    move/from16 v16, v10

    :goto_19
    if-eqz v18, :cond_20

    const v3, 0x7fffffff

    move/from16 v18, v3

    goto :goto_1a

    :cond_20
    move/from16 v18, p6

    :goto_1a
    if-eqz v5, :cond_21

    move/from16 v26, v2

    goto :goto_1b

    :cond_21
    move/from16 v26, p7

    :goto_1b
    if-eqz v0, :cond_22

    .line 322
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_1c

    :cond_22
    move-object/from16 v27, p8

    :goto_1c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:312)"

    const v3, 0x32bf773b

    .line 323
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    const/4 v9, 0x0

    const/high16 v0, 0x8000000

    and-int/lit8 v2, v1, 0xe

    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v2, v1, v17

    or-int/2addr v0, v2

    and-int v2, v1, v19

    or-int/2addr v0, v2

    and-int v1, v1, v22

    or-int v11, v0, v1

    const/16 v17, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v16

    move/from16 v6, v18

    move/from16 v7, v26

    move-object/from16 v8, v27

    move-object v10, v12

    move-object/from16 v19, v12

    move/from16 v12, v17

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_24
    move/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    move/from16 v8, v26

    move-object/from16 v9, v27

    .line 333
    :goto_1d
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_25

    goto :goto_1e

    :cond_25
    new-instance v16, Landroidx/compose/foundation/text/BasicTextKt$BasicText$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$9;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1e
    return-void
.end method

.method public static final BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p10

    move/from16 v12, p11

    const-string/jumbo v0, "text"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x46bd8e2e

    move-object/from16 v1, p9

    .line 90
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    const-string v1, "C(BasicText)P(8,3,7,4,5:c#ui.text.style.TextOverflow,6,1,2)94@4599L7,138@6175L41:BasicText.kt#423gt5"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_2

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v6, v11, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v1, v7

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v6, p2

    :goto_7
    and-int/lit8 v7, v12, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v8, v11, 0x1c00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_8

    :cond_a
    const/16 v9, 0x400

    :goto_8
    or-int/2addr v1, v9

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v8, p3

    :goto_a
    and-int/lit8 v9, v12, 0x10

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_c

    :cond_c
    const v14, 0xe000

    and-int/2addr v14, v11

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_b

    :cond_d
    const/16 v15, 0x2000

    :goto_b
    or-int/2addr v1, v15

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v14, p4

    :goto_d
    and-int/lit8 v15, v12, 0x20

    if-eqz v15, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v0, p5

    goto :goto_f

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v11, v16

    move/from16 v0, p5

    if-nez v16, :cond_11

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v17, 0x10000

    :goto_e
    or-int v1, v1, v17

    :cond_11
    :goto_f
    and-int/lit8 v17, v12, 0x40

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move/from16 v5, p6

    goto :goto_11

    :cond_12
    const/high16 v18, 0x380000

    and-int v18, v11, v18

    move/from16 v5, p6

    if-nez v18, :cond_14

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v18, 0x80000

    :goto_10
    or-int v1, v1, v18

    :cond_14
    :goto_11
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v18, 0xc00000

    or-int v1, v1, v18

    move/from16 v3, p7

    goto :goto_13

    :cond_15
    const/high16 v18, 0x1c00000

    and-int v18, v11, v18

    move/from16 v3, p7

    if-nez v18, :cond_17

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v18, 0x400000

    :goto_12
    or-int v1, v1, v18

    :cond_17
    :goto_13
    and-int/lit16 v3, v12, 0x100

    if-eqz v3, :cond_18

    const/high16 v18, 0x2000000

    or-int v1, v1, v18

    :cond_18
    const/16 v5, 0x100

    if-ne v3, v5, :cond_1a

    const v5, 0xb6db6db

    and-int/2addr v1, v5

    const v5, 0x2492492

    if-ne v1, v5, :cond_1a

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_14

    .line 140
    :cond_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object v3, v6

    move-object v4, v8

    move v5, v14

    move/from16 v6, p5

    move/from16 v8, p7

    goto/16 :goto_20

    :cond_1a
    :goto_14
    if-eqz v2, :cond_1b

    .line 82
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v41, v1

    goto :goto_15

    :cond_1b
    move-object/from16 v41, p1

    :goto_15
    if-eqz v4, :cond_1c

    .line 83
    sget-object v1, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    move-object/from16 v42, v1

    goto :goto_16

    :cond_1c
    move-object/from16 v42, v6

    :goto_16
    const/4 v1, 0x0

    if-eqz v7, :cond_1d

    move-object/from16 v43, v1

    goto :goto_17

    :cond_1d
    move-object/from16 v43, v8

    :goto_17
    if-eqz v9, :cond_1e

    .line 85
    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v2

    move v14, v2

    :cond_1e
    const/4 v2, 0x1

    if-eqz v15, :cond_1f

    move v15, v2

    goto :goto_18

    :cond_1f
    move/from16 v15, p5

    :goto_18
    if-eqz v17, :cond_20

    const v4, 0x7fffffff

    move v9, v4

    goto :goto_19

    :cond_20
    move/from16 v9, p6

    :goto_19
    if-eqz v0, :cond_21

    move v8, v2

    goto :goto_1a

    :cond_21
    move/from16 v8, p7

    :goto_1a
    if-eqz v3, :cond_22

    move-object/from16 v17, v1

    goto :goto_1b

    :cond_22
    move-object/from16 v17, p8

    .line 89
    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:79)"

    const v3, -0x46bd8e2e

    .line 90
    invoke-static {v3, v11, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 91
    :cond_23
    invoke-static {v8, v9}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    .line 95
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    .line 437
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 95
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    const v4, 0x392cd149

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "96@4735L7,97@4767L190"

    invoke-static {v13, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v0, :cond_26

    .line 97
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .line 438
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v1, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 97
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const v6, 0x1e7b2b64

    .line 98
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 439
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v6

    .line 441
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_24

    .line 442
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_25

    .line 99
    :cond_24
    new-instance v6, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/4 v1, 0x0

    const/4 v7, 0x4

    const/16 v16, 0x0

    move-object/from16 p1, v6

    move-object/from16 p2, v0

    move-wide/from16 p3, v4

    move-object/from16 p5, v1

    move/from16 p6, v7

    move-object/from16 p7, v16

    invoke-direct/range {p1 .. p7}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 444
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 440
    :cond_25
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Landroidx/compose/foundation/text/modifiers/SelectionController;

    goto :goto_1c

    :cond_26
    move-object v6, v1

    .line 96
    :goto_1c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-nez v6, :cond_28

    if-eqz v43, :cond_27

    goto/16 :goto_1d

    :cond_27
    const v0, 0x392cd599

    .line 125
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "130@5988L7"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v41

    .line 128
    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    new-instance v16, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 131
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .line 448
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move v4, v14

    move v5, v15

    move v6, v9

    move-object/from16 v44, v7

    move v7, v8

    move/from16 v45, v8

    move-object/from16 v8, v17

    move/from16 v46, v9

    move-object/from16 v9, v18

    .line 128
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v1, v44

    .line 126
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 125
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_1e

    :cond_28
    :goto_1d
    move/from16 v45, v8

    move/from16 v46, v9

    const v0, 0x392cd2fb

    .line 107
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "118@5537L7"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const v39, 0x1ffff

    const/16 v40, 0x0

    move-object/from16 v18, v41

    .line 110
    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 112
    new-instance v19, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 p1, v19

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .line 447
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v42

    move-object/from16 v21, v43

    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v46

    move/from16 v25, v45

    move-object/from16 v29, v6

    move-object/from16 v30, v17

    .line 111
    invoke-static/range {v18 .. v30}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 107
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 139
    :goto_1e
    sget-object v1, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    const v2, 0x207baf9a

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Layout)P(1)122@4734L23,125@4885L385:Layout.kt#80mrfh"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 449
    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    .line 450
    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 451
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 453
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const v5, 0x53ca7ea5

    .line 452
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(ReusableComposeNode):Composables.kt#9igjgp"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 454
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 455
    :cond_29
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 456
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 457
    new-instance v5, Landroidx/compose/foundation/text/BasicTextKt$BasicText-VhcvRP8$$inlined$Layout$1;

    invoke-direct {v5, v4}, Landroidx/compose/foundation/text/BasicTextKt$BasicText-VhcvRP8$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1f

    .line 459
    :cond_2a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 461
    :goto_1f
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .line 462
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 463
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 466
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 468
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 469
    :cond_2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 474
    :cond_2c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 475
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 476
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d
    move v5, v14

    move v6, v15

    move-object/from16 v9, v17

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    move/from16 v8, v45

    move/from16 v7, v46

    .line 140
    :goto_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_2e

    goto :goto_21

    :cond_2e
    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_21
    return-void
.end method

.method private static final selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object p0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method private static final textModifier-RWo7tUw(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;)Landroidx/compose/ui/Modifier;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZII",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/modifiers/SelectionController;",
            "Landroidx/compose/ui/graphics/ColorProducer;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p11, :cond_0

    .line 403
    new-instance v15, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 417
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    check-cast v15, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    new-instance v15, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 433
    invoke-virtual/range {p11 .. p11}, Landroidx/compose/foundation/text/modifiers/SelectionController;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    check-cast v15, Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
