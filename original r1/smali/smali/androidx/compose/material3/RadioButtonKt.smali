.class public final Landroidx/compose/material3/RadioButtonKt;
.super Ljava/lang/Object;
.source "RadioButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadioButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material3/RadioButtonKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,226:1\n25#2:227\n50#2:237\n49#2:238\n1114#3,6:228\n1114#3,6:239\n75#4:234\n75#4:236\n154#5:235\n154#5:245\n154#5:246\n154#5:247\n*S KotlinDebug\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material3/RadioButtonKt\n*L\n79#1:227\n115#1:237\n115#1:238\n79#1:228,6\n115#1:239,6\n82#1:234\n96#1:236\n82#1:235\n223#1:245\n224#1:246\n225#1:247\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aM\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0007\u00a2\u0006\u0002\u0010\u0014\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "RadioAnimationDuration",
        "",
        "RadioButtonDotSize",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "RadioButtonPadding",
        "RadioStrokeWidth",
        "RadioButton",
        "",
        "selected",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "colors",
        "Landroidx/compose/material3/RadioButtonColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
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
.field private static final RadioAnimationDuration:I = 0x64

.field private static final RadioButtonDotSize:F

.field private static final RadioButtonPadding:F

.field private static final RadioStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    int-to-float v0, v0

    .line 245
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/RadioButtonKt;->RadioButtonPadding:F

    const/16 v1, 0xc

    int-to-float v1, v1

    .line 246
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/RadioButtonKt;->RadioButtonDotSize:F

    .line 247
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/RadioButtonKt;->RadioStrokeWidth:F

    return-void
.end method

.method public static final RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/RadioButtonColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p7

    const v0, 0x185a72e8

    move-object/from16 v1, p6

    .line 80
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string v1, "C(RadioButton)P(5,4,3,1)77@3761L8,78@3821L39,80@3885L164,84@4078L29,114@5054L415,101@4636L833:RadioButton.kt#uh7d8r"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p8, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v1, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v9, 0xe

    if-nez v1, :cond_2

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v9, 0x70

    if-nez v2, :cond_5

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v9, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v3, p2

    :goto_6
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v10, v9, 0x1c00

    if-nez v10, :cond_b

    move/from16 v10, p3

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_7

    :cond_a
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v1, v11

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v10, p3

    :goto_9
    const v11, 0xe000

    and-int/2addr v11, v9

    if-nez v11, :cond_e

    and-int/lit8 v11, p8, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p4

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_a

    :cond_c
    move-object/from16 v11, p4

    :cond_d
    const/16 v12, 0x2000

    :goto_a
    or-int/2addr v1, v12

    goto :goto_b

    :cond_e
    move-object/from16 v11, p4

    :goto_b
    and-int/lit8 v22, p8, 0x20

    if-eqz v22, :cond_f

    const/high16 v12, 0x30000

    or-int/2addr v1, v12

    move-object/from16 v15, p5

    goto :goto_d

    :cond_f
    const/high16 v12, 0x70000

    and-int/2addr v12, v9

    move-object/from16 v15, p5

    if-nez v12, :cond_11

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v12, 0x10000

    :goto_c
    or-int/2addr v1, v12

    :cond_11
    :goto_d
    const v12, 0x5b6db

    and-int/2addr v12, v1

    const v13, 0x12492

    if-ne v12, v13, :cond_13

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_e

    .line 127
    :cond_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v12, v6

    move v4, v10

    move-object v5, v11

    move-object v6, v15

    goto/16 :goto_17

    .line 80
    :cond_13
    :goto_e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v9, 0x1

    const v23, -0xe001

    if-eqz v12, :cond_16

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_14

    goto :goto_f

    .line 227
    :cond_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_15

    and-int v1, v1, v23

    :cond_15
    move-object v4, v3

    move v3, v10

    move-object v2, v11

    move-object/from16 v17, v15

    goto :goto_13

    :cond_16
    :goto_f
    if-eqz v2, :cond_17

    .line 76
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_10

    :cond_17
    move-object v2, v3

    :goto_10
    if-eqz v4, :cond_18

    const/4 v3, 0x1

    goto :goto_11

    :cond_18
    move v3, v10

    :goto_11
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_19

    .line 78
    sget-object v10, Landroidx/compose/material3/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material3/RadioButtonDefaults;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x6000

    const/16 v21, 0xf

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-object/from16 v19, v6

    invoke-virtual/range {v10 .. v21}, Landroidx/compose/material3/RadioButtonDefaults;->colors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RadioButtonColors;

    move-result-object v4

    and-int v1, v1, v23

    move-object v11, v4

    :cond_19
    if-eqz v22, :cond_1b

    const v4, -0x1d58f75c

    .line 79
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v6, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 228
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 229
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v4, v10, :cond_1a

    .line 79
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 231
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 227
    :cond_1a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v17, v4

    goto :goto_12

    :cond_1b
    move-object/from16 v17, p5

    :goto_12
    move-object v4, v2

    move-object v2, v11

    :goto_13
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, -0x1

    const-string v11, "androidx.compose.material3.RadioButton (RadioButton.kt:72)"

    .line 80
    invoke-static {v0, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    if-eqz v7, :cond_1d

    sget v10, Landroidx/compose/material3/RadioButtonKt;->RadioButtonDotSize:F

    int-to-float v11, v5

    div-float/2addr v10, v11

    .line 234
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_14

    :cond_1d
    int-to-float v10, v0

    .line 235
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    :goto_14
    const/16 v11, 0x64

    const/4 v15, 0x0

    const/4 v14, 0x6

    .line 83
    invoke-static {v11, v0, v15, v14, v15}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    check-cast v11, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x30

    const/16 v18, 0xc

    move/from16 v19, v14

    move-object v14, v6

    move/from16 v15, v16

    move/from16 v16, v18

    .line 81
    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v15

    shr-int/lit8 v10, v1, 0x9

    and-int/lit8 v10, v10, 0xe

    shl-int/lit8 v11, v1, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    shr-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v10

    .line 85
    invoke-virtual {v2, v3, v7, v6, v1}, Landroidx/compose/material3/RadioButtonColors;->radioColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    const v10, 0x2bd78c27

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "93@4433L136"

    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v8, :cond_1e

    .line 88
    sget-object v18, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 92
    sget-object v10, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/Role$Companion;->getRadioButton-o7Vup1c()I

    move-result v19

    const/4 v10, 0x0

    .line 96
    sget-object v11, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v11}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getStateLayerSize-D9Ej5fM()F

    move-result v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    .line 236
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    const-wide/16 v12, 0x0

    const/16 v16, 0x36

    const/16 v20, 0x4

    move-object v14, v6

    move-object/from16 v24, v15

    move/from16 v15, v16

    move/from16 v16, v20

    .line 94
    invoke-static/range {v10 .. v16}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v10

    .line 88
    move-object/from16 v11, v18

    check-cast v11, Landroidx/compose/ui/Modifier;

    .line 92
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v12

    move v13, v0

    move-object v0, v11

    move-object v11, v1

    move/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, v17

    move v15, v3

    move-object v3, v10

    move-object v10, v4

    move v4, v15

    move v7, v5

    move-object v5, v12

    move-object v12, v6

    move-object/from16 v6, p1

    .line 88
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_15

    :cond_1e
    move v13, v0

    move-object v11, v1

    move-object v14, v2

    move-object v10, v4

    move v7, v5

    move-object v12, v6

    move-object/from16 v24, v15

    move v15, v3

    .line 100
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 87
    :goto_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    if-eqz v8, :cond_1f

    .line 106
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_16

    .line 108
    :cond_1f
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 104
    :goto_16
    invoke-interface {v10, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 111
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 112
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v13, v7, v2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Landroidx/compose/material3/RadioButtonKt;->RadioButtonPadding:F

    .line 113
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 114
    sget-object v1, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x1e7b2b64

    .line 115
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 237
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, v24

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 239
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_20

    .line 240
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_21

    .line 115
    :cond_20
    new-instance v1, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;

    invoke-direct {v1, v11, v2}, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 242
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    :cond_21
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 102
    invoke-static {v0, v3, v12, v13}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    move-object v3, v10

    move-object v5, v14

    move v4, v15

    move-object/from16 v6, v17

    .line 127
    :goto_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_23

    goto :goto_18

    :cond_23
    new-instance v11, Landroidx/compose/material3/RadioButtonKt$RadioButton$3;

    move-object v0, v11

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/RadioButtonKt$RadioButton$3;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_18
    return-void
.end method

.method public static final synthetic access$getRadioStrokeWidth$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/RadioButtonKt;->RadioStrokeWidth:F

    return v0
.end method
