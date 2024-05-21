.class public final Landroidx/compose/material3/DateRangeInputKt;
.super Ljava/lang/Object;
.source "DateRangeInput.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateRangeInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateRangeInput.kt\nandroidx/compose/material3/DateRangeInputKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,103:1\n36#2:104\n50#2:111\n49#2:112\n460#2,13:137\n36#2:151\n36#2:158\n473#2,3:165\n1114#3,6:105\n1114#3,6:113\n1114#3,6:152\n1114#3,6:159\n76#4,5:119\n81#4:150\n85#4:169\n75#5:124\n76#5,11:126\n89#5:168\n76#6:125\n154#7:170\n*S KotlinDebug\n*F\n+ 1 DateRangeInput.kt\nandroidx/compose/material3/DateRangeInputKt\n*L\n39#1:104\n46#1:111\n46#1:112\n58#1:137,13\n75#1:151\n93#1:158\n58#1:165,3\n39#1:105,6\n46#1:113,6\n75#1:152,6\n93#1:159,6\n58#1:119,5\n58#1:150\n58#1:169\n58#1:124\n58#1:126,11\n58#1:168\n58#1:125\n102#1:170\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a1\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0001\u00a2\u0006\u0002\u0010\r\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "TextFieldSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DateRangeInputContent",
        "",
        "stateData",
        "Landroidx/compose/material3/StateData;",
        "dateFormatter",
        "Landroidx/compose/material3/DatePickerFormatter;",
        "dateValidator",
        "Lkotlin/Function1;",
        "",
        "",
        "(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
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
.field private static final TextFieldSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 170
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/DateRangeInputKt;->TextFieldSpacing:F

    return-void
.end method

.method public static final DateRangeInputContent(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/StateData;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    const-string/jumbo v0, "stateData"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateFormatter"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateValidator"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x455e3766

    move-object/from16 v1, p3

    .line 36
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(DateRangeInputContent)P(2)37@1398L15,38@1440L97,41@1565L45,42@1645L44,43@1723L45,44@1797L50,45@1877L482,57@2364L1939:DateRangeInput.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v15, 0xe

    if-nez v1, :cond_1

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_1
    move v1, v15

    :goto_1
    and-int/lit8 v2, v15, 0x70

    if-nez v2, :cond_3

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v15, 0x380

    if-nez v2, :cond_5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    move v9, v1

    and-int/lit16 v1, v9, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 100
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v14, v11

    goto/16 :goto_8

    .line 36
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DateRangeInputContent (DateRangeInput.kt:31)"

    invoke-static {v0, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8
    const/4 v10, 0x0

    .line 38
    invoke-static {v11, v10}, Landroidx/compose/material3/CalendarModel_androidKt;->defaultLocale(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;

    move-result-object v8

    const v7, 0x44faf204

    .line 39
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 104
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_9

    .line 106
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_a

    .line 40
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/StateData;->getCalendarModel()Landroidx/compose/material3/CalendarModel;

    move-result-object v0

    invoke-interface {v0, v8}, Landroidx/compose/material3/CalendarModel;->getDateInputFormat(Ljava/util/Locale;)Landroidx/compose/material3/DateInputFormat;

    move-result-object v1

    .line 108
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 104
    :cond_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 39
    move-object v5, v1

    check-cast v5, Landroidx/compose/material3/DateInputFormat;

    .line 42
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/Strings$Companion;->getDateInputInvalidForPattern-adMyvUU()I

    move-result v0

    const/4 v4, 0x6

    invoke-static {v0, v11, v4}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    .line 43
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/Strings$Companion;->getDateInputInvalidYearRange-adMyvUU()I

    move-result v0

    invoke-static {v0, v11, v4}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    .line 44
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/Strings$Companion;->getDateInputInvalidNotAllowed-adMyvUU()I

    move-result v0

    invoke-static {v0, v11, v4}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    .line 45
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/Strings$Companion;->getDateRangeInputInvalidRangeInput-adMyvUU()I

    move-result v0

    invoke-static {v0, v11, v4}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v19

    const v0, 0x1e7b2b64

    .line 46
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 111
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 113
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_c

    .line 114
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_b

    goto :goto_5

    :cond_b
    move v13, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v16, v8

    goto :goto_6

    .line 47
    :cond_c
    :goto_5
    new-instance v3, Landroidx/compose/material3/DateInputValidator;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v10, v3

    move-object/from16 v3, p1

    move v13, v4

    move-object/from16 v4, p2

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v16, v8

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/DateInputValidator;-><init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v10

    .line 112
    :goto_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 46
    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/material3/DateInputValidator;

    .line 59
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {}, Landroidx/compose/material3/DateInputKt;->getInputTextFieldPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 60
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    sget v2, Landroidx/compose/material3/DateRangeInputKt;->TextFieldSpacing:F

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const v2, 0x2952b718

    .line 58
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 119
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    .line 122
    invoke-static {v1, v2, v11, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    const v2, -0x4ee9b9da

    .line 123
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    const-string v4, "C:CompositionLocal.kt#9igjgp"

    .line 125
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 124
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 126
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 125
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 126
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 127
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    .line 125
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 127
    check-cast v3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 129
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    .line 136
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    .line 137
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 138
    :cond_d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 139
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 140
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    .line 142
    :cond_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 144
    :goto_7
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 145
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .line 131
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v4, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 134
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 147
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v11, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 148
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x1378c6ab

    const-string v1, "C80@4021L9:Row.kt#2w3rfo"

    .line 150
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/foundation/layout/RowScope;

    const v0, 0x6e35f0ca

    const-string v1, "C62@2625L56,74@3193L52,63@2690L763,80@3481L54,92@4041L50,81@3544L753:DateRangeInput.kt#uh7d8r"

    .line 62
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/material3/DateInputFormat;->getPatternWithDelimiters()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/Strings$Companion;->getDateRangePickerStartHeadline-adMyvUU()I

    move-result v0

    invoke-static {v0, v11, v13}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 66
    new-instance v2, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$1;

    invoke-direct {v2, v0, v10}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x225d9857

    const/4 v8, 0x1

    invoke-static {v11, v0, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 72
    new-instance v0, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$2;

    invoke-direct {v0, v10}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$2;-><init>(Ljava/lang/String;)V

    const v3, 0x66e6a4b6

    invoke-static {v11, v3, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/StateData;->getSelectedStartDate()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/material3/CalendarDate;

    const v7, 0x44faf204

    .line 75
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v6, v21

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 151
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_f

    .line 153
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_10

    .line 75
    :cond_f
    new-instance v0, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$3$1;

    invoke-direct {v0, v12}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$3$1;-><init>(Landroidx/compose/material3/StateData;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 155
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 151
    :cond_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 76
    sget-object v0, Landroidx/compose/material3/InputIdentifier;->Companion:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/InputIdentifier$Companion;->getStartDateInput-J2x2o4M()I

    move-result v19

    shl-int/lit8 v0, v9, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const v9, 0x401801b0

    or-int v21, v0, v9

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p0

    move-object v9, v6

    move/from16 v6, v19

    move-object/from16 v7, v17

    move-object/from16 v8, v20

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v23, v10

    move-object v10, v11

    move-object v14, v11

    move/from16 v11, v21

    .line 64
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DateInputKt;->DateInputTextField-zm97o8M(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/DateInputFormat;Ljava/util/Locale;Landroidx/compose/runtime/Composer;I)V

    .line 81
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/Strings$Companion;->getDateRangePickerEndHeadline-adMyvUU()I

    move-result v0

    invoke-static {v0, v14, v13}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 84
    new-instance v2, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$4;

    move-object/from16 v3, v23

    invoke-direct {v2, v0, v3}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x278c3fc0

    const/4 v4, 0x1

    invoke-static {v14, v0, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 90
    new-instance v0, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$5;

    invoke-direct {v0, v3}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$5;-><init>(Ljava/lang/String;)V

    const v3, 0x1eeb30df

    invoke-static {v14, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/StateData;->getSelectedEndDate()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/material3/CalendarDate;

    const v0, 0x44faf204

    .line 93
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 158
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_11

    .line 160
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_12

    .line 93
    :cond_11
    new-instance v0, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$6$1;

    invoke-direct {v0, v12}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$1$6$1;-><init>(Landroidx/compose/material3/StateData;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 162
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 158
    :cond_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 94
    sget-object v0, Landroidx/compose/material3/InputIdentifier;->Companion:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/InputIdentifier$Companion;->getEndDateInput-J2x2o4M()I

    move-result v6

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p0

    move-object/from16 v7, v17

    move-object/from16 v8, v20

    move-object/from16 v9, v16

    move-object v10, v14

    move/from16 v11, v21

    .line 82
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DateInputKt;->DateInputTextField-zm97o8M(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/DateInputFormat;Ljava/util/Locale;Landroidx/compose/runtime/Composer;I)V

    .line 62
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 150
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 165
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 166
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 167
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 168
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 169
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 100
    :cond_13
    :goto_8
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    new-instance v1, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$2;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v12, v2, v3, v15}, Landroidx/compose/material3/DateRangeInputKt$DateRangeInputContent$2;-><init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_9
    return-void
.end method
