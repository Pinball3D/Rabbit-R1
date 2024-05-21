.class public final Landroidx/compose/material3/SwitchKt;
.super Ljava/lang/Object;
.source "Switch.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwitch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Switch.kt\nandroidx/compose/material3/SwitchKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 8 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 9 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 10 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 11 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,478:1\n25#2:479\n50#2:491\n49#2:492\n25#2:499\n25#2:510\n460#2,13:540\n473#2,3:554\n460#2,13:586\n36#2:600\n460#2,13:626\n473#2,3:640\n473#2,3:645\n1114#3,6:480\n1114#3,6:493\n1114#3,6:500\n1114#3,3:511\n1117#3,3:517\n1114#3,6:601\n58#4:486\n75#4:487\n58#4:560\n58#4:561\n81#4:562\n88#4:563\n51#4:564\n58#4:566\n75#4:607\n58#4:653\n75#4:654\n58#4:655\n76#5:488\n76#5:490\n76#5:528\n76#5:559\n76#5:565\n76#5:574\n76#5:614\n1#6:489\n474#7,4:506\n478#7,2:514\n482#7:520\n474#8:516\n67#9,6:521\n73#9:553\n77#9:558\n67#9,6:567\n73#9:599\n68#9,5:608\n73#9:639\n77#9:644\n77#9:649\n75#10:527\n76#10,11:529\n89#10:557\n75#10:573\n76#10,11:575\n75#10:613\n76#10,11:615\n89#10:643\n89#10:648\n76#11:650\n76#11:651\n76#11:652\n*S KotlinDebug\n*F\n+ 1 Switch.kt\nandroidx/compose/material3/SwitchKt\n*L\n98#1:479\n109#1:491\n109#1:492\n114#1:499\n115#1:510\n146#1:540,13\n146#1:554,3\n223#1:586,13\n229#1:600\n226#1:626,13\n226#1:640,3\n223#1:645,3\n98#1:480,6\n109#1:493,6\n114#1:500,6\n115#1:511,3\n115#1:517,3\n229#1:601,6\n106#1:486\n106#1:487\n195#1:560\n196#1:561\n196#1:562\n195#1:563\n195#1:564\n202#1:566\n232#1:607\n253#1:653\n253#1:654\n254#1:655\n107#1:488\n108#1:490\n146#1:528\n191#1:559\n200#1:565\n223#1:574\n226#1:614\n115#1:506,4\n115#1:514,2\n115#1:520\n115#1:516\n146#1:521,6\n146#1:553\n146#1:558\n223#1:567,6\n223#1:599\n226#1:608,5\n226#1:639\n226#1:644\n223#1:649\n146#1:527\n146#1:529,11\n146#1:557\n223#1:573\n223#1:575,11\n226#1:613\n226#1:615,11\n226#1:643\n223#1:648\n188#1:650\n189#1:651\n224#1:652\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001aj\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0015\u0008\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u0007\u00a2\u0006\u0002\u0010\u001e\u001a|\u0010\u001f\u001a\u00020\u000f*\u00020 2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00020\"2\u0013\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u00182\u0006\u0010\u001c\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0013\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0019\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0008\u0010\t\"\u0013\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0013\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0019\u0010\u000c\u001a\u00020\u0004X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\r\u0010\t\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006+"
    }
    d2 = {
        "AnimationSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "SwitchHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "SwitchWidth",
        "ThumbDiameter",
        "getThumbDiameter",
        "()F",
        "ThumbPadding",
        "ThumbPathLength",
        "UncheckedThumbDiameter",
        "getUncheckedThumbDiameter",
        "Switch",
        "",
        "checked",
        "",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "thumbContent",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "enabled",
        "colors",
        "Landroidx/compose/material3/SwitchColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "SwitchImpl",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "thumbValue",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "thumbShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "uncheckedThumbDiameter",
        "minBound",
        "maxBound",
        "SwitchImpl-0DmnUew",
        "(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V",
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
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SwitchHeight:F

.field private static final SwitchWidth:F

.field private static final ThumbDiameter:F

.field private static final ThumbPadding:F

.field private static final ThumbPathLength:F

.field private static final UncheckedThumbDiameter:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 249
    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SwitchTokens;->getSelectedHandleWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .line 250
    sget-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SwitchTokens;->getUnselectedHandleWidth-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    .line 251
    sget-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackWidth-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .line 252
    sget-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackHeight-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    sub-float/2addr v2, v0

    .line 653
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 654
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    sput v2, Landroidx/compose/material3/SwitchKt;->ThumbPadding:F

    sub-float/2addr v1, v0

    .line 655
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    .line 256
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/SwitchColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p8

    const v0, 0x5e33f474

    move-object/from16 v1, p7

    .line 99
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const-string v1, "C(Switch)P(!1,5,4,6,2)96@4503L8,97@4563L39,*106@4851L7,107@4926L7,108@4986L111,113@5161L36,114@5214L24,116@5244L156,121@5406L216,145@6082L848:Switch.kt#uh7d8r"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v8, 0x6

    move/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v8, 0xe

    move/from16 v4, p0

    if-nez v1, :cond_2

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v8, 0x70

    if-nez v2, :cond_5

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v8, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v3, p2

    :goto_6
    and-int/lit8 v9, p9, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v10, v8, 0x1c00

    if-nez v10, :cond_b

    move-object/from16 v10, p3

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v10, p3

    :goto_9
    and-int/lit8 v11, p9, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    const v12, 0xe000

    and-int/2addr v12, v8

    if-nez v12, :cond_e

    move/from16 v12, p4

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_a

    :cond_d
    const/16 v13, 0x2000

    :goto_a
    or-int/2addr v1, v13

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v12, p4

    :goto_c
    const/high16 v46, 0x70000

    and-int v13, v8, v46

    if-nez v13, :cond_11

    and-int/lit8 v13, p9, 0x20

    if-nez v13, :cond_f

    move-object/from16 v13, p5

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_d

    :cond_f
    move-object/from16 v13, p5

    :cond_10
    const/high16 v14, 0x10000

    :goto_d
    or-int/2addr v1, v14

    goto :goto_e

    :cond_11
    move-object/from16 v13, p5

    :goto_e
    and-int/lit8 v47, p9, 0x40

    const/high16 v48, 0x380000

    if-eqz v47, :cond_12

    const/high16 v14, 0x180000

    or-int/2addr v1, v14

    goto :goto_10

    :cond_12
    and-int v14, v8, v48

    if-nez v14, :cond_14

    move-object/from16 v14, p6

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v15, 0x80000

    :goto_f
    or-int/2addr v1, v15

    goto :goto_11

    :cond_14
    :goto_10
    move-object/from16 v14, p6

    :goto_11
    const v15, 0x2db6db

    and-int/2addr v15, v1

    const v5, 0x92492

    if-ne v15, v5, :cond_16

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_12

    .line 172
    :cond_15
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v6

    move-object v4, v10

    move v5, v12

    move-object v6, v13

    move-object/from16 v25, v14

    goto/16 :goto_1f

    .line 99
    :cond_16
    :goto_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v8, 0x1

    const v49, -0x70001

    const-string v15, "CC(remember):Composables.kt#9igjgp"

    const v0, -0x1d58f75c

    if-eqz v5, :cond_19

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_13

    .line 479
    :cond_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p9, 0x20

    if-eqz v2, :cond_18

    and-int v1, v1, v49

    :cond_18
    move v9, v1

    move-object/from16 v23, v10

    move/from16 v50, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object v3, v15

    move-object/from16 v15, p2

    goto/16 :goto_19

    :cond_19
    :goto_13
    if-eqz v2, :cond_1a

    .line 94
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_14

    :cond_1a
    move-object/from16 v2, p2

    :goto_14
    if-eqz v9, :cond_1b

    const/4 v5, 0x0

    goto :goto_15

    :cond_1b
    move-object v5, v10

    :goto_15
    if-eqz v11, :cond_1c

    const/4 v9, 0x1

    move/from16 v50, v9

    goto :goto_16

    :cond_1c
    move/from16 v50, v12

    :goto_16
    and-int/lit8 v9, p9, 0x20

    if-eqz v9, :cond_1d

    .line 97
    sget-object v9, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-object v3, v15

    move-wide/from16 v14, v16

    const-wide/16 v18, 0x0

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

    const/16 v43, 0x0

    const/high16 v44, 0x180000

    const v45, 0xffff

    move-object/from16 v42, v6

    invoke-virtual/range {v9 .. v45}, Landroidx/compose/material3/SwitchDefaults;->colors-V1nXRL4(JJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SwitchColors;

    move-result-object v9

    and-int v1, v1, v49

    goto :goto_17

    :cond_1d
    move-object v3, v15

    move-object v9, v13

    :goto_17
    if-eqz v47, :cond_1f

    .line 98
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 480
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 481
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_1e

    .line 98
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v10

    .line 483
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 479
    :cond_1e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v15, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto :goto_18

    :cond_1f
    move-object/from16 v25, p6

    move-object v15, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v9

    :goto_18
    move v9, v1

    :goto_19
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.Switch (Switch.kt:90)"

    const v5, 0x5e33f474

    .line 99
    invoke-static {v5, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_20
    if-nez v23, :cond_21

    sget v1, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    goto :goto_1a

    :cond_21
    sget v1, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    :goto_1a
    move/from16 v17, v1

    sget v10, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    sub-float v1, v10, v17

    .line 486
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v5, v2

    div-float/2addr v1, v5

    .line 487
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    .line 107
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    const v11, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    .line 488
    invoke-static {v6, v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 107
    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1, v14}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    .line 108
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 490
    invoke-static {v6, v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 108
    check-cast v2, Landroidx/compose/ui/unit/Density;

    sget v13, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    invoke-interface {v2, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v11, 0x1e7b2b64

    .line 109
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v6, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 491
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v5, v11

    .line 493
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_22

    .line 494
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v11, v5, :cond_23

    .line 110
    :cond_22
    new-instance v5, Landroidx/compose/material3/SwitchKt$Switch$valueToOffset$1$1;

    invoke-direct {v5, v2, v1}, Landroidx/compose/material3/SwitchKt$Switch$valueToOffset$1$1;-><init>(FF)V

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 496
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 492
    :cond_23
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 109
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 113
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v11, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 114
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 500
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 501
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v5, v11, :cond_24

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 114
    invoke-static {v2, v5, v12, v11}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    .line 503
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_24
    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 499
    :goto_1b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 114
    check-cast v5, Landroidx/compose/animation/core/Animatable;

    const v11, 0x2e20b340

    .line 115
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v6, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 509
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 511
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 512
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_25

    .line 516
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 515
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v6}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 514
    new-instance v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v3, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 517
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v3

    .line 510
    :cond_25
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 509
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 520
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 117
    new-instance v3, Landroidx/compose/material3/SwitchKt$Switch$2;

    invoke-direct {v3, v5, v1}, Landroidx/compose/material3/SwitchKt$Switch$2;-><init>(Landroidx/compose/animation/core/Animatable;F)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    invoke-static {v3, v6, v11}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 122
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Landroidx/compose/material3/SwitchKt$Switch$3;

    invoke-direct {v3, v5, v2, v0}, Landroidx/compose/material3/SwitchKt$Switch$3;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v9, 0xe

    invoke-static {v1, v3, v6, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    if-eqz v7, :cond_26

    .line 134
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v1

    .line 134
    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    .line 138
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v16

    move/from16 v1, p0

    move-object/from16 v2, v25

    const/4 v12, 0x0

    move/from16 v4, v50

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v51, v6

    move-object/from16 v6, p1

    .line 134
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_1c

    :cond_26
    move-object/from16 v18, v5

    move-object/from16 v51, v6

    const/4 v12, 0x0

    .line 143
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    :goto_1c
    if-eqz v7, :cond_27

    .line 150
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_1d

    .line 152
    :cond_27
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 148
    :goto_1d
    invoke-interface {v15, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 155
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 156
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v11, v2, v12}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .line 157
    invoke-static {v0, v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x2bb5b5d7

    move-object/from16 v2, v51

    .line 146
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 521
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    .line 525
    invoke-static {v1, v11, v2, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    const v3, -0x4ee9b9da

    .line 526
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const-string v4, "C:CompositionLocal.kt#9igjgp"

    const v5, 0x789c5f52

    .line 528
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 527
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 529
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    .line 528
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 529
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 530
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 528
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 530
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 532
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 539
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 540
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 541
    :cond_28
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 542
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 543
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    .line 545
    :cond_29
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 547
    :goto_1e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 548
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .line 534
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v5, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 535
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 536
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 537
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 549
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 550
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 551
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x4ab8dd79

    const-string v1, "C72@3384L9:Box.kt#2w3rfo"

    .line 553
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v1, -0x6fa4a60d

    const-string v3, "C164@6720L9,158@6473L451:Switch.kt#uh7d8r"

    .line 159
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 163
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v1

    .line 165
    sget-object v3, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/SwitchTokens;->getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v2, v4}, Landroidx/compose/material3/ShapesKt;->toShape(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v16

    .line 164
    move-object/from16 v3, v25

    check-cast v3, Landroidx/compose/foundation/interaction/InteractionSource;

    shl-int/lit8 v5, v9, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v4, v5

    shr-int/lit8 v5, v9, 0x6

    and-int/lit16 v6, v5, 0x380

    or-int/2addr v4, v6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v9, 0x6

    and-int v5, v5, v46

    or-int/2addr v4, v5

    and-int v5, v9, v48

    or-int v21, v4, v5

    const/16 v22, 0x6

    move-object v9, v0

    move/from16 v10, p0

    move/from16 v11, v50

    move-object/from16 v12, v24

    move v0, v13

    move-object v13, v1

    move v1, v14

    move-object/from16 v14, v23

    move-object v4, v15

    move-object v15, v3

    move/from16 v18, v1

    move/from16 v19, v0

    move-object/from16 v20, v2

    .line 159
    invoke-static/range {v9 .. v22}, Landroidx/compose/material3/SwitchKt;->SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 553
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 554
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 555
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 556
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 557
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 558
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2a
    move-object v3, v4

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    move/from16 v5, v50

    .line 172
    :goto_1f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_2b

    goto :goto_20

    :cond_2b
    new-instance v11, Landroidx/compose/material3/SwitchKt$Switch$5;

    move-object v0, v11

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v25

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SwitchKt$Switch$5;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_20
    return-void
.end method

.method private static final SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "ZZ",
            "Landroidx/compose/material3/SwitchColors;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "FFF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p12

    const v0, -0x754ef975

    move-object/from16 v5, p11

    .line 187
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    const-string v13, "C(SwitchImpl)P(!1,2!1,8,6!1,7,9:c#ui.unit.Dp,5:c#ui.unit.Dp,4:c#ui.unit.Dp)187@7372L28,188@7440L25,*190@7508L7,210@8141L9,217@8350L29,222@8469L951:Switch.kt#uh7d8r"

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v13, v12, 0xe

    if-nez v13, :cond_1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    :goto_0
    or-int/2addr v13, v12

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    and-int/lit8 v16, v12, 0x70

    if-nez v16, :cond_3

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x20

    goto :goto_2

    :cond_2
    const/16 v16, 0x10

    :goto_2
    or-int v13, v13, v16

    :cond_3
    and-int/lit16 v14, v12, 0x380

    if-nez v14, :cond_5

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x100

    goto :goto_3

    :cond_4
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v13, v14

    :cond_5
    and-int/lit16 v14, v12, 0x1c00

    if-nez v14, :cond_7

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x800

    goto :goto_4

    :cond_6
    const/16 v14, 0x400

    :goto_4
    or-int/2addr v13, v14

    :cond_7
    const v14, 0xe000

    and-int/2addr v14, v12

    if-nez v14, :cond_9

    move-object/from16 v14, p4

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x4000

    goto :goto_5

    :cond_8
    const/16 v16, 0x2000

    :goto_5
    or-int v13, v13, v16

    goto :goto_6

    :cond_9
    move-object/from16 v14, p4

    :goto_6
    const/high16 v16, 0x70000

    and-int v16, v12, v16

    if-nez v16, :cond_b

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v16, 0x10000

    :goto_7
    or-int v13, v13, v16

    :cond_b
    const/high16 v16, 0x380000

    and-int v16, v12, v16

    if-nez v16, :cond_d

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v16, 0x80000

    :goto_8
    or-int v13, v13, v16

    :cond_d
    const/high16 v16, 0x1c00000

    and-int v16, v12, v16

    if-nez v16, :cond_f

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v16, 0x400000

    :goto_9
    or-int v13, v13, v16

    :cond_f
    const/high16 v16, 0xe000000

    and-int v16, v12, v16

    if-nez v16, :cond_11

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x2000000

    :goto_a
    or-int v13, v13, v16

    :cond_11
    const/high16 v16, 0x70000000

    and-int v16, v12, v16

    if-nez v16, :cond_13

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v16, 0x10000000

    :goto_b
    or-int v13, v13, v16

    :cond_13
    and-int/lit8 v16, p13, 0xe

    if-nez v16, :cond_15

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v16, 0x4

    goto :goto_c

    :cond_14
    const/16 v16, 0x2

    :goto_c
    or-int v16, p13, v16

    move/from16 v0, v16

    goto :goto_d

    :cond_15
    move/from16 v0, p13

    :goto_d
    const v17, 0x5b6db6db

    and-int v15, v13, v17

    const v12, 0x12492492

    if-ne v15, v12, :cond_17

    and-int/lit8 v12, v0, 0xb

    const/4 v15, 0x2

    if-ne v12, v15, :cond_17

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_e

    .line 247
    :cond_16
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v9, v6

    goto/16 :goto_14

    .line 187
    :cond_17
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "androidx.compose.material3.SwitchImpl (Switch.kt:175)"

    const v15, -0x754ef975

    invoke-static {v15, v13, v0, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0xe

    and-int/lit8 v12, v13, 0x70

    or-int/2addr v0, v12

    shr-int/lit8 v12, v13, 0x3

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v0, v12

    .line 188
    invoke-virtual {v4, v3, v2, v5, v0}, Landroidx/compose/material3/SwitchColors;->trackColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v12

    shr-int/lit8 v15, v13, 0x12

    and-int/lit8 v15, v15, 0xe

    .line 189
    invoke-static {v7, v5, v15}, Landroidx/compose/foundation/interaction/PressInteractionKt;->collectIsPressedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v15

    .line 191
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move/from16 v17, v13

    move-object/from16 v13, v16

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    const v6, 0x789c5f52

    const-string v14, "CC:CompositionLocal.kt#9igjgp"

    .line 559
    invoke-static {v5, v6, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 191
    check-cast v13, Landroidx/compose/ui/unit/Density;

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-interface {v13, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v6

    .line 192
    invoke-static {v15}, Landroidx/compose/material3/SwitchKt;->SwitchImpl_0DmnUew$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 193
    sget-object v6, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/SwitchTokens;->getPressedHandleWidth-D9Ej5fM()F

    move-result v6

    goto :goto_f

    :cond_19
    sget v13, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    sub-float/2addr v13, v9

    .line 560
    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v13

    sub-float/2addr v6, v10

    .line 561
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    sub-float v16, v11, v10

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v16

    div-float v6, v6, v16

    mul-float/2addr v13, v6

    .line 563
    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    add-float/2addr v6, v9

    .line 564
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    :goto_f
    const v13, -0x3b3c1839

    .line 192
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "*199@7849L7"

    invoke-static {v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 199
    invoke-static {v15}, Landroidx/compose/material3/SwitchKt;->SwitchImpl_0DmnUew$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 200
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    const v15, 0x789c5f52

    .line 565
    invoke-static {v5, v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 200
    check-cast v13, Landroidx/compose/ui/unit/Density;

    if-eqz v2, :cond_1a

    sget v14, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    .line 202
    sget-object v15, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackOutlineWidth-D9Ej5fM()F

    move-result v15

    sub-float/2addr v14, v15

    .line 566
    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    goto :goto_10

    .line 204
    :cond_1a
    sget-object v14, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v14}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackOutlineWidth-D9Ej5fM()F

    move-result v14

    .line 205
    :goto_10
    invoke-interface {v13, v14}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v13

    goto :goto_11

    .line 208
    :cond_1b
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    .line 199
    :goto_11
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 211
    sget-object v14, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v14}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v14

    const/4 v15, 0x6

    invoke-static {v14, v5, v15}, Landroidx/compose/material3/ShapesKt;->toShape(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    .line 212
    sget-object v16, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v15, v16

    check-cast v15, Landroidx/compose/ui/Modifier;

    .line 213
    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v9

    invoke-interface {v1, v15, v9}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget v15, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .line 214
    invoke-static {v9, v15}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget v15, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    .line 215
    invoke-static {v9, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 217
    sget-object v15, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackOutlineWidth-D9Ej5fM()F

    move-result v15

    .line 218
    invoke-virtual {v4, v3, v2, v5, v0}, Landroidx/compose/material3/SwitchColors;->borderColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/graphics/Color;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    .line 216
    invoke-static {v9, v15, v10, v11, v14}, Landroidx/compose/foundation/BorderKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 221
    invoke-static {v12}, Landroidx/compose/material3/SwitchKt;->SwitchImpl_0DmnUew$lambda$6(Landroidx/compose/runtime/State;)J

    move-result-wide v10

    invoke-static {v9, v10, v11, v14}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v10, 0x2bb5b5d7

    .line 223
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v5, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 567
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v12

    const/4 v15, 0x0

    .line 571
    invoke-static {v12, v15, v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    const v14, -0x4ee9b9da

    .line 572
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const-string v15, "C:CompositionLocal.kt#9igjgp"

    const v1, 0x789c5f52

    .line 574
    invoke-static {v5, v1, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 573
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 575
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v20

    move-object/from16 v21, v10

    move-object/from16 v10, v20

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 574
    invoke-static {v5, v1, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 575
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 576
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v20

    move-object/from16 v22, v11

    move-object/from16 v11, v20

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 574
    invoke-static {v5, v1, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 576
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 578
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 585
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v9

    move-object/from16 v23, v15

    .line 586
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 587
    :cond_1c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 588
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 589
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 591
    :cond_1d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 593
    :goto_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 594
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .line 580
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v11, v12, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 581
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v11, v14, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 582
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v11, v10, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 583
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v11, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 595
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 596
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v1, v5, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 597
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v9, -0x4ab8dd79

    const-string v11, "C72@3384L9:Box.kt#2w3rfo"

    .line 599
    invoke-static {v5, v9, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v12, Landroidx/compose/foundation/layout/BoxScope;

    const v14, 0x54b24717

    const-string v15, "C223@8518L28,228@8706L42,231@8870L64,225@8599L815:Switch.kt#uh7d8r"

    .line 224
    invoke-static {v5, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-virtual {v4, v3, v2, v5, v0}, Landroidx/compose/material3/SwitchColors;->thumbColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 225
    invoke-static {v14}, Landroidx/compose/material3/SwitchKt;->SwitchImpl_0DmnUew$lambda$13$lambda$10(Landroidx/compose/runtime/State;)J

    move-result-wide v14

    .line 227
    sget-object v16, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v10, v16

    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 228
    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object v9

    invoke-interface {v12, v10, v9}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const v12, 0x44faf204

    .line 229
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v5, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 600
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .line 601
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_1e

    .line 602
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v12, v10, :cond_1f

    .line 229
    :cond_1e
    new-instance v10, Landroidx/compose/material3/SwitchKt$SwitchImpl$1$1$1;

    invoke-direct {v10, v13}, Landroidx/compose/material3/SwitchKt$SwitchImpl$1$1$1;-><init>(F)V

    move-object v12, v10

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 604
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 600
    :cond_1f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 229
    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v13, 0x0

    .line 232
    sget-object v10, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v10}, Landroidx/compose/material3/tokens/SwitchTokens;->getStateLayerSize-D9Ej5fM()F

    move-result v10

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v10, v12

    .line 607
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    const-wide/16 v24, 0x0

    const/16 v12, 0x36

    const/16 v26, 0x4

    move/from16 v27, v17

    move-wide v1, v14

    const v15, -0x4ee9b9da

    move v14, v10

    move-object/from16 v28, v23

    const/4 v10, 0x6

    move-wide/from16 v15, v24

    move-object/from16 v17, v5

    move/from16 v18, v12

    move/from16 v19, v26

    .line 232
    invoke-static/range {v13 .. v19}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v12

    .line 230
    invoke-static {v9, v7, v12}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 234
    invoke-static {v9, v6}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 235
    invoke-static {v6, v1, v2, v8}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 236
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    const v6, 0x2bb5b5d7

    .line 226
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v6, v22

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 611
    invoke-static {v2, v6, v5, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v9, -0x4ee9b9da

    .line 612
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v9, v21

    invoke-static {v5, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    move-object/from16 v10, v28

    const v12, 0x789c5f52

    .line 614
    invoke-static {v5, v12, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 613
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 615
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    .line 614
    invoke-static {v5, v12, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 615
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 616
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    .line 614
    invoke-static {v5, v12, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 616
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 618
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 625
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    .line 626
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 627
    :cond_20
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 628
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_21

    .line 629
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    .line 631
    :cond_21
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 633
    :goto_13
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 634
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 620
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v12, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v12, v9, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 622
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v12, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 623
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v12, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 635
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 636
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v2, v5, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 637
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, -0x4ab8dd79

    .line 639
    invoke-static {v5, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    const v1, -0x79a2434c

    const-string v2, "C:Switch.kt#uh7d8r"

    .line 238
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, 0x54b24993

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "238@9196L27,239@9240L150"

    invoke-static {v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v9, p5

    move/from16 v2, p1

    if-eqz v9, :cond_22

    .line 239
    invoke-virtual {v4, v3, v2, v5, v0}, Landroidx/compose/material3/SwitchColors;->iconColor$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 241
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    aput-object v0, v1, v6

    shr-int/lit8 v0, v27, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x8

    .line 240
    invoke-static {v1, v9, v5, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_22
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 238
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 639
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 640
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 641
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 642
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 643
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 224
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 599
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 645
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 646
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 647
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 648
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 649
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 247
    :cond_23
    :goto_14
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_24

    goto :goto_15

    :cond_24
    new-instance v15, Landroidx/compose/material3/SwitchKt$SwitchImpl$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/SwitchKt$SwitchImpl$2;-><init>(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFII)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_15
    return-void
.end method

.method private static final SwitchImpl_0DmnUew$lambda$13$lambda$10(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 652
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final SwitchImpl_0DmnUew$lambda$6(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 650
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final SwitchImpl_0DmnUew$lambda$7(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 651
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SwitchKt;->SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final getThumbDiameter()F
    .locals 1

    sget v0, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    return v0
.end method

.method public static final getUncheckedThumbDiameter()F
    .locals 1

    sget v0, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    return v0
.end method
