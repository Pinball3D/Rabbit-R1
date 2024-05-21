.class public final Landroidx/compose/material3/DatePickerDialog_androidKt;
.super Ljava/lang/Object;
.source "DatePickerDialog.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePickerDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePickerDialog.android.kt\nandroidx/compose/material3/DatePickerDialog_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,121:1\n154#2:122\n154#2:123\n154#2:124\n*S KotlinDebug\n*F\n+ 1 DatePickerDialog.android.kt\nandroidx/compose/material3/DatePickerDialog_androidKt\n*L\n118#1:122\n119#1:123\n120#1:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u009d\u0001\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0015\u0008\u0002\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00070\u0017\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0008\u0019H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "DialogButtonsCrossAxisSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DialogButtonsMainAxisSpacing",
        "DialogButtonsPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "DatePickerDialog",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "confirmButton",
        "Landroidx/compose/runtime/Composable;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "dismissButton",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "tonalElevation",
        "colors",
        "Landroidx/compose/material3/DatePickerColors;",
        "properties",
        "Landroidx/compose/ui/window/DialogProperties;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "DatePickerDialog-GmEhDVc",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
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
.field private static final DialogButtonsCrossAxisSpacing:F

.field private static final DialogButtonsMainAxisSpacing:F

.field private static final DialogButtonsPadding:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 122
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/4 v1, 0x6

    int-to-float v1, v1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 118
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/DatePickerDialog_androidKt;->DialogButtonsPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 123
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->DialogButtonsMainAxisSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 124
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->DialogButtonsCrossAxisSpacing:F

    return-void
.end method

.method public static final DatePickerDialog-GmEhDVc(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "F",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p8

    move/from16 v4, p10

    move/from16 v3, p11

    const-string v0, "onDismissRequest"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmButton"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x22d35dc

    move-object/from16 v1, p9

    .line 75
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v1, "C(DatePickerDialog)P(5,1,4,3,7,8:c#ui.unit.Dp!1,6)69@3485L5,71@3602L8,75@3754L1602:DatePickerDialog.android.kt#uh7d8r"

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v4, 0xe

    if-nez v1, :cond_2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v4, 0x70

    if-nez v8, :cond_5

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v1, v8

    :cond_5
    :goto_3
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v4, 0x380

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v1, v10

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v9, p2

    :goto_6
    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v11, v4, 0x1c00

    if-nez v11, :cond_b

    move-object/from16 v11, p3

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_7

    :cond_a
    const/16 v12, 0x400

    :goto_7
    or-int/2addr v1, v12

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v11, p3

    :goto_9
    const v12, 0xe000

    and-int/2addr v12, v4

    if-nez v12, :cond_e

    and-int/lit8 v12, v3, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_a

    :cond_c
    move-object/from16 v12, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_a
    or-int/2addr v1, v13

    goto :goto_b

    :cond_e
    move-object/from16 v12, p4

    :goto_b
    and-int/lit8 v13, v3, 0x20

    if-eqz v13, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    goto :goto_d

    :cond_f
    const/high16 v14, 0x70000

    and-int/2addr v14, v4

    if-nez v14, :cond_11

    move/from16 v14, p5

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v15, 0x10000

    :goto_c
    or-int/2addr v1, v15

    goto :goto_e

    :cond_11
    :goto_d
    move/from16 v14, p5

    :goto_e
    const/high16 v15, 0x380000

    and-int/2addr v15, v4

    if-nez v15, :cond_14

    and-int/lit8 v15, v3, 0x40

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_f

    :cond_12
    move-object/from16 v15, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_f
    or-int v1, v1, v16

    goto :goto_10

    :cond_14
    move-object/from16 v15, p6

    :goto_10
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_15

    const/high16 v16, 0xc00000

    or-int v1, v1, v16

    move-object/from16 v15, p7

    goto :goto_12

    :cond_15
    const/high16 v16, 0x1c00000

    and-int v16, v4, v16

    move-object/from16 v15, p7

    if-nez v16, :cond_17

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v16, 0x400000

    :goto_11
    or-int v1, v1, v16

    :cond_17
    :goto_12
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_18

    const/high16 v6, 0x6000000

    :goto_13
    or-int/2addr v1, v6

    goto :goto_14

    :cond_18
    const/high16 v6, 0xe000000

    and-int/2addr v6, v4

    if-nez v6, :cond_1a

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/high16 v6, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v6, 0x2000000

    goto :goto_13

    :cond_1a
    :goto_14
    const v6, 0xb6db6db

    and-int/2addr v6, v1

    const v5, 0x2492492

    if-ne v6, v5, :cond_1c

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_15

    .line 116
    :cond_1b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, p6

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move v6, v14

    move-object v8, v15

    move-object v11, v2

    goto/16 :goto_1e

    .line 75
    :cond_1c
    :goto_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v4, 0x1

    const v6, -0x380001

    const v16, -0xe001

    const/4 v15, 0x0

    if-eqz v5, :cond_20

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_16

    .line 73
    :cond_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_1e

    and-int v1, v1, v16

    :cond_1e
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_1f

    and-int/2addr v1, v6

    :cond_1f
    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object v6, v9

    move-object/from16 v51, v11

    move-object/from16 v16, v12

    move/from16 v53, v14

    goto/16 :goto_1d

    :cond_20
    :goto_16
    if-eqz v8, :cond_21

    .line 68
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    goto :goto_17

    :cond_21
    move-object v5, v9

    :goto_17
    if-eqz v10, :cond_22

    move-object/from16 v51, v15

    goto :goto_18

    :cond_22
    move-object/from16 v51, v11

    :goto_18
    and-int/lit8 v8, v3, 0x10

    if-eqz v8, :cond_23

    .line 70
    sget-object v8, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    const/4 v9, 0x6

    invoke-virtual {v8, v2, v9}, Landroidx/compose/material3/DatePickerDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    and-int v1, v1, v16

    move/from16 v52, v1

    move-object v1, v8

    goto :goto_19

    :cond_23
    move/from16 v52, v1

    move-object v1, v12

    :goto_19
    if-eqz v13, :cond_24

    .line 71
    sget-object v8, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/DatePickerDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v8

    move/from16 v53, v8

    goto :goto_1a

    :cond_24
    move/from16 v53, v14

    :goto_1a
    and-int/lit8 v8, v3, 0x40

    if-eqz v8, :cond_25

    .line 72
    sget-object v8, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

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

    const/16 v48, 0x0

    const/high16 v49, 0x30000000

    const v50, 0x7ffff

    move-object/from16 v47, v2

    invoke-virtual/range {v8 .. v50}, Landroidx/compose/material3/DatePickerDefaults;->colors-1m2Cg-Y(JJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/DatePickerColors;

    move-result-object v8

    and-int v6, v52, v6

    move/from16 v52, v6

    goto :goto_1b

    :cond_25
    move-object/from16 v8, p6

    :goto_1b
    if-eqz v0, :cond_26

    .line 73
    new-instance v0, Landroidx/compose/ui/window/DialogProperties;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x17

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v0

    goto :goto_1c

    :cond_26
    move-object/from16 v18, p7

    :goto_1c
    move-object/from16 v16, v1

    move-object v6, v5

    move-object/from16 v17, v8

    move/from16 v1, v52

    :goto_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, -0x1

    const-string v5, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:64)"

    const v8, -0x22d35dc

    .line 75
    invoke-static {v8, v1, v0, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x0

    .line 78
    invoke-static {v6, v8, v0, v5, v8}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 80
    new-instance v0, Landroidx/compose/material3/DatePickerDialog_androidKt$DatePickerDialog$1;

    move-object v8, v0

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v11, v53

    move v12, v1

    move-object/from16 v13, p8

    move-object/from16 v14, v51

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Landroidx/compose/material3/DatePickerDialog_androidKt$DatePickerDialog$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DatePickerColors;FILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v8, -0x1c5f3b66

    const/4 v9, 0x1

    invoke-static {v2, v8, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0xc00

    shr-int/lit8 v1, v1, 0xf

    and-int/lit16 v1, v1, 0x380

    or-int v9, v0, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v11, v2

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v4, v11

    move v5, v9

    move-object v9, v6

    move v6, v10

    .line 76
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_28
    move-object v3, v9

    move-object/from16 v5, v16

    move-object/from16 v8, v18

    move-object/from16 v4, v51

    move/from16 v6, v53

    .line 116
    :goto_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_29

    goto :goto_1f

    :cond_29
    new-instance v13, Landroidx/compose/material3/DatePickerDialog_androidKt$DatePickerDialog$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v17

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/DatePickerDialog_androidKt$DatePickerDialog$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1f
    return-void
.end method

.method public static final synthetic access$getDialogButtonsCrossAxisSpacing$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->DialogButtonsCrossAxisSpacing:F

    return v0
.end method

.method public static final synthetic access$getDialogButtonsMainAxisSpacing$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->DialogButtonsMainAxisSpacing:F

    return v0
.end method

.method public static final synthetic access$getDialogButtonsPadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    sget-object v0, Landroidx/compose/material3/DatePickerDialog_androidKt;->DialogButtonsPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method
