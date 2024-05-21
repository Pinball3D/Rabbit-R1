.class final Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->TimeInputImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1673:1\n50#2:1674\n49#2:1675\n50#2:1682\n49#2:1683\n36#2:1690\n50#2:1697\n49#2:1698\n50#2:1705\n49#2:1706\n36#2:1713\n1114#3,6:1676\n1114#3,6:1684\n1114#3,6:1691\n1114#3,6:1699\n1114#3,6:1707\n1114#3,6:1714\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1\n*L\n720#1:1674\n720#1:1675\n732#1:1682\n732#1:1683\n747#1:1690\n753#1:1697\n753#1:1698\n766#1:1705\n766#1:1706\n781#1:1713\n720#1:1676,6\n732#1:1684,6\n747#1:1691,6\n753#1:1699,6\n766#1:1707,6\n781#1:1714,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material3/TimePickerColors;

.field final synthetic $hourValue$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $minuteValue$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;",
            "Landroidx/compose/material3/TimePickerState;",
            "I",
            "Landroidx/compose/material3/TimePickerColors;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$hourValue$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    iput p3, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$colors:Landroidx/compose/material3/TimePickerColors;

    iput-object p5, p0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$minuteValue$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 716
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v1, p2

    const-string v2, "C719@30761L411,731@31241L353,746@31903L38,717@30672L1318,749@32003L85,752@32197L376,765@32645L331,780@33287L38,750@32101L1273:TimePicker.kt#uh7d8r"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 718
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 718
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TimeInputImpl.<anonymous>.<anonymous> (TimePicker.kt:715)"

    const v4, 0x4de2ac57    # 4.7536816E8f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 719
    :cond_2
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$hourValue$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    const v13, 0x1e7b2b64

    .line 720
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1674
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1676
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    .line 1677
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_4

    .line 720
    :cond_3
    new-instance v4, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$1$1;

    invoke-direct {v4, v3, v2}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$1$1;-><init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1679
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1675
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 720
    invoke-static {v1, v5}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$hourValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 731
    invoke-static {v2}, Landroidx/compose/material3/TimePickerKt;->access$TimeInputImpl$lambda$5(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$hourValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 732
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1682
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1684
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_5

    .line 1685
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_6

    .line 732
    :cond_5
    new-instance v5, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$2$1;

    invoke-direct {v5, v3, v4}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$2$1;-><init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1687
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1683
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 742
    sget-object v5, Landroidx/compose/material3/Selection;->Companion:Landroidx/compose/material3/Selection$Companion;

    invoke-virtual {v5}, Landroidx/compose/material3/Selection$Companion;->getHour-JiIwxys()I

    move-result v5

    .line 744
    sget-object v6, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result v19

    .line 745
    sget-object v6, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v18

    .line 743
    new-instance v6, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v7, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    const v15, 0x44faf204

    .line 747
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v12, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1690
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 1691
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_7

    .line 1692
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_8

    .line 747
    :cond_7
    new-instance v8, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$3$1;

    invoke-direct {v8, v7}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$3$1;-><init>(Landroidx/compose/material3/TimePickerState;)V

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 1694
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1690
    :cond_8
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v25, v9

    check-cast v25, Lkotlin/jvm/functions/Function1;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3b

    const/16 v30, 0x0

    .line 747
    new-instance v7, Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v22, v7

    invoke-direct/range {v22 .. v30}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v8, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$colors:Landroidx/compose/material3/TimePickerColors;

    iget v9, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$$dirty:I

    shl-int/lit8 v10, v9, 0x3

    and-int/lit16 v10, v10, 0x1c00

    or-int/lit16 v10, v10, 0x6000

    shl-int/lit8 v9, v9, 0x12

    const/high16 v16, 0x1c00000

    and-int v9, v9, v16

    or-int/2addr v10, v9

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move-object/from16 v31, v11

    move/from16 v11, v17

    .line 718
    invoke-static/range {v1 .. v11}, Landroidx/compose/material3/TimePickerKt;->access$TimePickerTextField-lxUZ_iY(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/TimePickerState;ILandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;II)V

    .line 750
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getDisplaySeparatorWidth$p()F

    move-result v2

    sget-object v3, Landroidx/compose/material3/tokens/TimeInputTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimeInputTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/TimeInputTokens;->getPeriodSelectorContainerHeight-D9Ej5fM()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v12, v2}, Landroidx/compose/material3/TimePickerKt;->access$DisplaySeparator(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 752
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$minuteValue$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 753
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1697
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1699
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    .line 1700
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_a

    .line 753
    :cond_9
    new-instance v4, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$4$1;

    invoke-direct {v4, v3, v2}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$4$1;-><init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1702
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1698
    :cond_a
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 753
    invoke-static {v1, v5}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$minuteValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 765
    invoke-static {v2}, Landroidx/compose/material3/TimePickerKt;->access$TimeInputImpl$lambda$8(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$minuteValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 766
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1705
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1707
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_b

    .line 1708
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_c

    .line 766
    :cond_b
    new-instance v5, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$5$1;

    invoke-direct {v5, v3, v4}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$5$1;-><init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1710
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1706
    :cond_c
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 776
    sget-object v5, Landroidx/compose/material3/Selection;->Companion:Landroidx/compose/material3/Selection$Companion;

    invoke-virtual {v5}, Landroidx/compose/material3/Selection$Companion;->getMinute-JiIwxys()I

    move-result v5

    .line 778
    sget-object v6, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result v21

    .line 779
    sget-object v6, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v20

    .line 777
    new-instance v6, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v23}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    iget-object v7, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    .line 781
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v8, v31

    invoke-static {v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1713
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 1714
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_d

    .line 1715
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v9, v8, :cond_e

    .line 781
    :cond_d
    new-instance v8, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$6$1;

    invoke-direct {v8, v7}, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1$6$1;-><init>(Landroidx/compose/material3/TimePickerState;)V

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 1717
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1713
    :cond_e
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v35, v9

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x3b

    const/16 v40, 0x0

    .line 781
    new-instance v7, Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v32, v7

    invoke-direct/range {v32 .. v40}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v8, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$colors:Landroidx/compose/material3/TimePickerColors;

    iget v0, v0, Landroidx/compose/material3/TimePickerKt$TimeInputImpl$1$1;->$$dirty:I

    shl-int/lit8 v9, v0, 0x3

    and-int/lit16 v9, v9, 0x1c00

    or-int/lit16 v9, v9, 0x6000

    shl-int/lit8 v0, v0, 0x12

    and-int v0, v0, v16

    or-int/2addr v9, v0

    const/4 v10, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, p1

    .line 751
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TimePickerKt;->access$TimePickerTextField-lxUZ_iY(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/TimePickerState;ILandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_f
    :goto_1
    return-void
.end method
