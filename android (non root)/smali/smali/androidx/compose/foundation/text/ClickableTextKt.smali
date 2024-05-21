.class public final Landroidx/compose/foundation/text/ClickableTextKt;
.super Ljava/lang/Object;
.source "ClickableText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickableText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClickableText.kt\nandroidx/compose/foundation/text/ClickableTextKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n25#2:193\n50#2:200\n49#2:201\n50#2:208\n49#2:209\n25#2:216\n25#2:227\n50#2:238\n49#2:239\n1097#3,6:194\n1097#3,6:202\n1097#3,6:210\n1097#3,6:217\n1097#3,3:228\n1100#3,3:234\n1097#3,6:240\n486#4,4:223\n490#4,2:231\n494#4:237\n486#5:233\n1#6:246\n*S KotlinDebug\n*F\n+ 1 ClickableText.kt\nandroidx/compose/foundation/text/ClickableTextKt\n*L\n80#1:193\n81#1:200\n81#1:201\n96#1:208\n96#1:209\n154#1:216\n155#1:227\n184#1:238\n184#1:239\n80#1:194,6\n81#1:202,6\n96#1:210,6\n154#1:217,6\n155#1:228,3\n155#1:234,3\n184#1:240,6\n155#1:223,4\n155#1:231,2\n155#1:237\n155#1:233\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u008f\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001ay\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a!\u0010\u0017\u001a\u00020\u000c*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "ClickableText",
        "",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "onHover",
        "Lkotlin/Function1;",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "softWrap",
        "",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "maxLines",
        "onTextLayout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "onClick",
        "ClickableText-03UYbkw",
        "(Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "ClickableText-4YKlhWE",
        "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "containsWithinBounds",
        "Landroidx/compose/ui/text/MultiParagraph;",
        "positionOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "containsWithinBounds-Uv8p0NA",
        "(Landroidx/compose/ui/text/MultiParagraph;J)Z",
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
.method public static final ClickableText-03UYbkw(Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "ZII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p8

    move/from16 v12, p10

    move/from16 v11, p11

    const-string/jumbo v0, "text"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHover"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3cd7c7e4

    move-object/from16 v1, p9

    .line 153
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(ClickableText)P(8,3,1,7,6,5:c#ui.text.style.TextOverflow!1,4)153@6860L52,154@6938L24,183@7878L76,176@7657L303:ClickableText.kt#423gt5"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v12, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x70

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v12, 0x380

    if-nez v4, :cond_8

    move-object/from16 v4, p2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v4, p2

    :goto_6
    and-int/lit8 v5, v11, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v6, v12, 0x1c00

    if-nez v6, :cond_b

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_7

    :cond_a
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v1, v7

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v6, p3

    :goto_9
    and-int/lit8 v7, v11, 0x10

    const v8, 0xe000

    if-eqz v7, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    and-int v9, v12, v8

    if-nez v9, :cond_e

    move/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_a

    :cond_d
    const/16 v16, 0x2000

    :goto_a
    or-int v1, v1, v16

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v9, p4

    :goto_c
    and-int/lit8 v16, v11, 0x20

    const/high16 v17, 0x70000

    if-eqz v16, :cond_f

    const/high16 v18, 0x30000

    or-int v1, v1, v18

    move/from16 v8, p5

    goto :goto_e

    :cond_f
    and-int v18, v12, v17

    move/from16 v8, p5

    if-nez v18, :cond_11

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v18, 0x10000

    :goto_d
    or-int v1, v1, v18

    :cond_11
    :goto_e
    and-int/lit8 v18, v11, 0x40

    const/high16 v19, 0x380000

    if-eqz v18, :cond_12

    const/high16 v20, 0x180000

    or-int v1, v1, v20

    move/from16 v2, p6

    goto :goto_10

    :cond_12
    and-int v20, v12, v19

    move/from16 v2, p6

    if-nez v20, :cond_14

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v21, 0x80000

    :goto_f
    or-int v1, v1, v21

    :cond_14
    :goto_10
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_15

    const/high16 v22, 0xc00000

    or-int v1, v1, v22

    move-object/from16 v2, p7

    goto :goto_12

    :cond_15
    const/high16 v22, 0x1c00000

    and-int v22, v12, v22

    move-object/from16 v2, p7

    if-nez v22, :cond_17

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    const/high16 v22, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v22, 0x400000

    :goto_11
    or-int v1, v1, v22

    :cond_17
    :goto_12
    and-int/lit16 v2, v11, 0x100

    if-eqz v2, :cond_18

    const/high16 v2, 0x6000000

    :goto_13
    or-int/2addr v1, v2

    goto :goto_14

    :cond_18
    const/high16 v2, 0xe000000

    and-int/2addr v2, v12

    if-nez v2, :cond_1a

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/high16 v2, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v2, 0x2000000

    goto :goto_13

    :cond_1a
    :goto_14
    const v2, 0xb6db6db

    and-int/2addr v2, v1

    const v4, 0x2492492

    if-ne v2, v4, :cond_1c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_15

    .line 189
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v7, p6

    move-object v4, v6

    move v6, v8

    move v5, v9

    move-object/from16 v20, v10

    move-object/from16 v8, p7

    goto/16 :goto_1c

    :cond_1c
    :goto_15
    if-eqz v3, :cond_1d

    .line 146
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v4, v2

    goto :goto_16

    :cond_1d
    move-object/from16 v4, p2

    :goto_16
    if-eqz v5, :cond_1e

    .line 147
    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_17

    :cond_1e
    move-object/from16 v22, v6

    :goto_17
    if-eqz v7, :cond_1f

    const/4 v2, 0x1

    move/from16 v23, v2

    goto :goto_18

    :cond_1f
    move/from16 v23, v9

    :goto_18
    if-eqz v16, :cond_20

    .line 149
    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v2

    move/from16 v16, v2

    goto :goto_19

    :cond_20
    move/from16 v16, v8

    :goto_19
    if-eqz v18, :cond_21

    const v2, 0x7fffffff

    move/from16 v18, v2

    goto :goto_1a

    :cond_21
    move/from16 v18, p6

    :goto_1a
    if-eqz v0, :cond_22

    .line 151
    sget-object v0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$4;->INSTANCE:Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$4;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v9, v0

    goto :goto_1b

    :cond_22
    move-object/from16 v9, p7

    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:142)"

    const v3, 0x3cd7c7e4

    .line 153
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    const v0, -0x1d58f75c

    .line 154
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 217
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 218
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_24

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 154
    invoke-static {v3, v3, v5, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 220
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    :cond_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 154
    check-cast v3, Landroidx/compose/runtime/MutableState;

    const v5, 0x2e20b340

    .line 155
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(rememberCoroutineScope)488@20446L144:Effects.kt#9igjgp"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 226
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 228
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 229
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_25

    .line 233
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 232
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 231
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 234
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v2

    .line 227
    :cond_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 226
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 237
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 162
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    new-instance v5, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pointerInputModifier$1;

    const/4 v6, 0x0

    move-object/from16 p2, v5

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move-object/from16 p5, v3

    move-object/from16 p6, p8

    move-object/from16 p7, v6

    invoke-direct/range {p2 .. p7}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pointerInputModifier$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v15, v14, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 179
    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v0, 0x1e7b2b64

    .line 184
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 238
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 240
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_26

    .line 241
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_27

    .line 184
    :cond_26
    new-instance v0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$5$1;

    invoke-direct {v0, v3, v9}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$5$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 243
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 239
    :cond_27
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    and-int/lit8 v0, v1, 0xe

    shr-int/lit8 v5, v1, 0x3

    and-int/lit16 v6, v5, 0x380

    or-int/2addr v0, v6

    const v6, 0xe000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    shl-int/lit8 v5, v1, 0x3

    and-int v5, v5, v17

    or-int/2addr v0, v5

    and-int v1, v1, v19

    or-int v17, v0, v1

    const/16 v19, 0x380

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v22

    move-object/from16 v21, v4

    move/from16 v4, v16

    move/from16 v5, v23

    move/from16 v6, v18

    move-object/from16 v24, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v10

    move/from16 v11, v17

    move/from16 v12, v19

    .line 177
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_28
    move/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v8, v24

    .line 189
    :goto_1c
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_29

    goto :goto_1d

    :cond_29
    new-instance v16, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$6;-><init>(Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1d
    return-void
.end method

.method public static final ClickableText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "ZII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p7

    move/from16 v15, p9

    move/from16 v12, p10

    const-string/jumbo v0, "text"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0xeb2f629

    move-object/from16 v1, p8

    .line 79
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(ClickableText)P(7,1,6,5,4:c#ui.text.style.TextOverflow!1,3)79@3637L52,80@3746L184,95@4151L76,88@3936L297:ClickableText.kt#423gt5"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v15, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_2
    move v1, v15

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v15, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v6, v15, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v8, v15, 0x1c00

    if-nez v8, :cond_b

    move/from16 v8, p3

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v8, p3

    :goto_a
    and-int/lit8 v9, v12, 0x10

    const v10, 0xe000

    if-eqz v9, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v10, p4

    goto :goto_c

    :cond_c
    and-int v16, v15, v10

    move/from16 v10, p4

    if-nez v16, :cond_e

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_b

    :cond_d
    const/16 v16, 0x2000

    :goto_b
    or-int v1, v1, v16

    :cond_e
    :goto_c
    and-int/lit8 v16, v12, 0x20

    const/high16 v17, 0x70000

    if-eqz v16, :cond_f

    const/high16 v18, 0x30000

    or-int v1, v1, v18

    move/from16 v2, p5

    goto :goto_e

    :cond_f
    and-int v18, v15, v17

    move/from16 v2, p5

    if-nez v18, :cond_11

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v19, 0x10000

    :goto_d
    or-int v1, v1, v19

    :cond_11
    :goto_e
    and-int/lit8 v19, v12, 0x40

    const/high16 v20, 0x380000

    if-eqz v19, :cond_12

    const/high16 v21, 0x180000

    or-int v1, v1, v21

    move-object/from16 v0, p6

    goto :goto_10

    :cond_12
    and-int v21, v15, v20

    move-object/from16 v0, p6

    if-nez v21, :cond_14

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v22, 0x80000

    :goto_f
    or-int v1, v1, v22

    :cond_14
    :goto_10
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_15

    const/high16 v0, 0xc00000

    :goto_11
    or-int/2addr v1, v0

    goto :goto_12

    :cond_15
    const/high16 v0, 0x1c00000

    and-int/2addr v0, v15

    if-nez v0, :cond_17

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v0, 0x400000

    goto :goto_11

    :cond_17
    :goto_12
    const v0, 0x16db6db

    and-int/2addr v0, v1

    const v2, 0x492492

    if-ne v0, v2, :cond_19

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_13

    .line 101
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object v2, v4

    move-object v3, v6

    move v4, v8

    move v5, v10

    move-object/from16 v21, v11

    move/from16 v6, p5

    goto/16 :goto_19

    :cond_19
    :goto_13
    if-eqz v3, :cond_1a

    .line 72
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v4, v0

    :cond_1a
    if-eqz v5, :cond_1b

    .line 73
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_14

    :cond_1b
    move-object/from16 v22, v6

    :goto_14
    if-eqz v7, :cond_1c

    const/4 v0, 0x1

    move/from16 v23, v0

    goto :goto_15

    :cond_1c
    move/from16 v23, v8

    :goto_15
    if-eqz v9, :cond_1d

    .line 75
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    move/from16 v24, v0

    goto :goto_16

    :cond_1d
    move/from16 v24, v10

    :goto_16
    if-eqz v16, :cond_1e

    const v0, 0x7fffffff

    move/from16 v16, v0

    goto :goto_17

    :cond_1e
    move/from16 v16, p5

    :goto_17
    if-eqz v19, :cond_1f

    .line 77
    sget-object v0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$1;->INSTANCE:Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v10, v0

    goto :goto_18

    :cond_1f
    move-object/from16 v10, p6

    :goto_18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:69)"

    const v3, -0xeb2f629

    .line 79
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_20
    const v0, -0x1d58f75c

    .line 80
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 194
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 195
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_21

    const/4 v2, 0x2

    .line 80
    invoke-static {v3, v3, v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 197
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 80
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 81
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const v5, 0x1e7b2b64

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 200
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 202
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_22

    .line 203
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v8, v7, :cond_23

    .line 81
    :cond_22
    new-instance v7, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;

    invoke-direct {v7, v0, v14, v3}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 205
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 201
    :cond_23
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 81
    invoke-static {v2, v14, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 91
    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 96
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 208
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 210
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_24

    .line 211
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_25

    .line 96
    :cond_24
    new-instance v3, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$2$1;

    invoke-direct {v3, v0, v10}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$2$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 213
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    :cond_25
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    and-int/lit8 v0, v1, 0xe

    and-int/lit16 v5, v1, 0x380

    or-int/2addr v0, v5

    const v5, 0xe000

    and-int/2addr v5, v1

    or-int/2addr v0, v5

    shl-int/lit8 v5, v1, 0x6

    and-int v5, v5, v17

    or-int/2addr v0, v5

    shl-int/lit8 v1, v1, 0x3

    and-int v1, v1, v20

    or-int v17, v0, v1

    const/16 v18, 0x380

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v22

    move-object/from16 v19, v4

    move/from16 v4, v24

    move/from16 v5, v23

    move/from16 v6, v16

    move-object/from16 v20, v10

    move-object v10, v11

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v12, v18

    .line 89
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_26
    move/from16 v6, v16

    move-object/from16 v2, v19

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    .line 101
    :goto_19
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_27

    goto :goto_1a

    :cond_27
    new-instance v12, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1a
    return-void
.end method

.method private static final ClickableText_03UYbkw$getOffset(Landroidx/compose/runtime/MutableState;J)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;J)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 157
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 159
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/ClickableTextKt;->containsWithinBounds-Uv8p0NA(Landroidx/compose/ui/text/MultiParagraph;J)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 160
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static final synthetic access$ClickableText_03UYbkw$getOffset(Landroidx/compose/runtime/MutableState;J)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/ClickableTextKt;->ClickableText_03UYbkw$getOffset(Landroidx/compose/runtime/MutableState;J)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final containsWithinBounds-Uv8p0NA(Landroidx/compose/ui/text/MultiParagraph;J)Z
    .locals 2

    .line 192
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->component1-impl(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->component2-impl(J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
