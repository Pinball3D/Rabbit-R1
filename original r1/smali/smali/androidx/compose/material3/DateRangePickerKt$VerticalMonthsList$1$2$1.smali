.class final Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DateRangePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateRangePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,809:1\n74#2,6:810\n80#2:842\n84#2:847\n75#3:816\n76#3,11:818\n89#3:846\n76#4:817\n460#5,13:829\n473#5,3:843\n*S KotlinDebug\n*F\n+ 1 DateRangePicker.kt\nandroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1\n*L\n549#1:810,6\n549#1:842\n549#1:847\n549#1:816\n549#1:818,11\n549#1:846\n549#1:817\n549#1:829,13\n549#1:843,3\n*E\n"
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

.field final synthetic $colors:Landroidx/compose/material3/DatePickerColors;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

.field final synthetic $dateValidator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $firstMonth:Landroidx/compose/material3/CalendarMonth;

.field final synthetic $lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $onDateSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollToNextMonthLabel:Ljava/lang/String;

.field final synthetic $scrollToPreviousMonthLabel:Ljava/lang/String;

.field final synthetic $stateData:Landroidx/compose/material3/StateData;

.field final synthetic $today:Landroidx/compose/material3/CalendarDate;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/StateData;",
            "Landroidx/compose/material3/CalendarMonth;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/CalendarDate;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$stateData:Landroidx/compose/material3/StateData;

    iput-object p2, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$firstMonth:Landroidx/compose/material3/CalendarMonth;

    iput-object p3, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p4, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p5, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$today:Landroidx/compose/material3/CalendarDate;

    iput-object p7, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$$dirty:I

    iput-object p9, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p10, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p11, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$scrollToPreviousMonthLabel:Ljava/lang/String;

    iput-object p12, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$scrollToNextMonthLabel:Ljava/lang/String;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 543
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v15, p3

    move/from16 v3, p4

    const-string v4, "$this$items"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "C548@22622L1554:DateRangePicker.kt#uh7d8r"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v3, 0xe

    if-nez v4, :cond_1

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v5, v3, 0x70

    if-nez v5, :cond_3

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit16 v4, v4, 0x2db

    const/16 v5, 0x92

    if-ne v4, v5, :cond_5

    .line 544
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 581
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 544
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    const-string v5, "androidx.compose.material3.VerticalMonthsList.<anonymous>.<anonymous>.<anonymous> (DateRangePicker.kt:542)"

    const v6, 0x4a4f3999    # 3395174.2f

    invoke-static {v6, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v3, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$stateData:Landroidx/compose/material3/StateData;

    .line 545
    invoke-virtual {v3}, Landroidx/compose/material3/StateData;->getCalendarModel()Landroidx/compose/material3/CalendarModel;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$firstMonth:Landroidx/compose/material3/CalendarMonth;

    invoke-interface {v3, v4, v2}, Landroidx/compose/material3/CalendarModel;->plusMonths(Landroidx/compose/material3/CalendarMonth;I)Landroidx/compose/material3/CalendarMonth;

    move-result-object v13

    .line 550
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/compose/foundation/lazy/LazyItemScope;->fillParentMaxWidth$default(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v14, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v12, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$stateData:Landroidx/compose/material3/StateData;

    iget-object v11, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v9, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$today:Landroidx/compose/material3/CalendarDate;

    iget-object v8, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget v7, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$$dirty:I

    iget-object v2, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$scrollToPreviousMonthLabel:Ljava/lang/String;

    iget-object v0, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;->$scrollToNextMonthLabel:Ljava/lang/String;

    const v4, -0x1cd0f17e

    .line 549
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 810
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v4

    .line 811
    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    move/from16 v16, v7

    const/4 v7, 0x0

    .line 814
    invoke-static {v4, v5, v15, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    const v5, -0x4ee9b9da

    .line 815
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    const v7, 0x789c5f52

    move-object/from16 v17, v8

    const-string v8, "C:CompositionLocal.kt#9igjgp"

    .line 817
    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 816
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 818
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .line 817
    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 818
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 819
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v20, v10

    move-object/from16 v10, v18

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 817
    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 819
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 821
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    .line 828
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    .line 829
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 830
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 831
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 832
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 834
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 836
    :goto_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 837
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .line 823
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v8, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 824
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v8, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 825
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v8, v9, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 826
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v8, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 838
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 839
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v4, v15, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 840
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, 0x107e02c8

    const-string v4, "C79@4027L9:Column.kt#2w3rfo"

    .line 842
    invoke-static {v15, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    const v1, 0x6429e525

    const-string v4, "C555@22915L15,551@22731L992,570@23744L414:DateRangePicker.kt#uh7d8r"

    .line 552
    invoke-static {v15, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 555
    invoke-virtual {v12}, Landroidx/compose/material3/StateData;->getCalendarModel()Landroidx/compose/material3/CalendarModel;

    move-result-object v1

    const/4 v4, 0x0

    .line 556
    invoke-static {v15, v4}, Landroidx/compose/material3/CalendarModel_androidKt;->defaultLocale(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;

    move-result-object v5

    .line 553
    invoke-virtual {v14, v13, v1, v5}, Landroidx/compose/material3/DatePickerFormatter;->formatMonthYear$material3_release(Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/CalendarModel;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "-"

    :cond_9
    move-object/from16 v21, v1

    .line 558
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 559
    invoke-static {}, Landroidx/compose/material3/DateRangePickerKt;->getCalendarMonthSubheadPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 560
    sget-object v1, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$1;->INSTANCE:Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$1;

    move-object/from16 v26, v1

    check-cast v26, Lkotlin/jvm/functions/Function0;

    const/16 v27, 0x7

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 561
    new-instance v4, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;

    invoke-direct {v4, v2, v3, v6, v0}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1$1$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v4, v2, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 569
    invoke-virtual {v11}, Landroidx/compose/material3/DatePickerColors;->getSubheadContentColor-0d7_KjU$material3_release()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v25, v16

    const/4 v8, 0x0

    move-object/from16 v26, v17

    const-wide/16 v9, 0x0

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    const/4 v0, 0x0

    move-object/from16 v29, v11

    move-object v11, v0

    move-object/from16 v30, v12

    move-object v12, v0

    const-wide/16 v16, 0x0

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-wide/from16 v13, v16

    const/4 v0, 0x0

    move v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const v24, 0x1fff8

    move-object/from16 v0, v21

    move-object/from16 v21, p3

    .line 552
    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v4, 0x1

    shl-int/lit8 v0, v25, 0x3

    and-int/lit8 v1, v0, 0x70

    or-int/lit16 v1, v1, 0x6000

    shl-int/lit8 v2, v25, 0x6

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v1, v3

    const/high16 v3, 0x70000

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, v25, 0x9

    const/high16 v3, 0x380000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v2

    or-int v9, v0, v1

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    move-object/from16 v5, v26

    move-object/from16 v6, v32

    move-object/from16 v7, v29

    move-object/from16 v8, p3

    .line 571
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/DatePickerKt;->Month(Landroidx/compose/material3/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/StateData;ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    .line 552
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 842
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 843
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 844
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 845
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 846
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 847
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    :goto_5
    return-void
.end method
