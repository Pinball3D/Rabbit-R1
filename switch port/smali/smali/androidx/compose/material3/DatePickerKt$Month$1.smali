.class final Landroidx/compose/material3/DatePickerKt$Month$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->Month(Landroidx/compose/material3/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/StateData;ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$Month$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1920:1\n92#2:1921\n75#3,5:1922\n80#3:1953\n84#3:2015\n75#4:1927\n76#4,11:1929\n75#4:1956\n76#4,11:1958\n89#4:2009\n89#4:2014\n76#5:1928\n76#5:1957\n460#6,13:1940\n460#6,13:1969\n50#6:1983\n49#6:1984\n50#6:1991\n49#6:1992\n36#6:1999\n473#6,3:2006\n473#6,3:2011\n79#7,2:1954\n81#7:1982\n85#7:2010\n1114#8,6:1985\n1114#8,6:1993\n1114#8,6:2000\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$Month$1\n*L\n1449#1:1921\n1447#1:1922,5\n1447#1:1953\n1447#1:2015\n1447#1:1927\n1447#1:1929,11\n1454#1:1956\n1454#1:1958,11\n1454#1:2009\n1447#1:2014\n1447#1:1928\n1454#1:1957\n1447#1:1940,13\n1454#1:1969,13\n1479#1:1983\n1479#1:1984\n1505#1:1991\n1505#1:1992\n1510#1:1999\n1454#1:2006,3\n1447#1:2011,3\n1454#1:1954,2\n1454#1:1982\n1454#1:2010\n1479#1:1985,6\n1505#1:1993,6\n1510#1:2000,6\n*E\n"
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

.field final synthetic $defaultLocale:Ljava/util/Locale;

.field final synthetic $endSelection:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/material3/CalendarDate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $month:Landroidx/compose/material3/CalendarMonth;

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

.field final synthetic $rangeSelectionDrawModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $rangeSelectionEnabled:Z

.field final synthetic $startSelection:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/material3/CalendarDate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stateData:Landroidx/compose/material3/StateData;

.field final synthetic $today:Landroidx/compose/material3/CalendarDate;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/CalendarDate;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;ZILandroidx/compose/material3/DatePickerFormatter;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/StateData;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/CalendarMonth;",
            "Landroidx/compose/material3/CalendarDate;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/material3/CalendarDate;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/material3/CalendarDate;",
            ">;ZI",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Ljava/util/Locale;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/material3/StateData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$rangeSelectionDrawModifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$month:Landroidx/compose/material3/CalendarMonth;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$today:Landroidx/compose/material3/CalendarDate;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$startSelection:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$endSelection:Landroidx/compose/runtime/MutableState;

    iput-boolean p6, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$rangeSelectionEnabled:Z

    iput p7, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$$dirty:I

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p9, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$defaultLocale:Ljava/util/Locale;

    iput-object p10, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p12, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$stateData:Landroidx/compose/material3/StateData;

    iput-object p13, p0, Landroidx/compose/material3/DatePickerKt$Month$1;->$dateValidator:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1445
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$Month$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v1, p2

    const-string v2, "C1446@58969L4887:DatePicker.kt#uh7d8r"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1446
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1534
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_f

    .line 1446
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.Month.<anonymous> (DatePicker.kt:1444)"

    const v4, -0x69deabc5

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1448
    :cond_2
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1449
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v2

    const/4 v13, 0x6

    int-to-float v3, v13

    mul-float/2addr v2, v3

    .line 1921
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 1449
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$rangeSelectionDrawModifier:Landroidx/compose/ui/Modifier;

    .line 1450
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1451
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v14, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$month:Landroidx/compose/material3/CalendarMonth;

    iget-object v15, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$today:Landroidx/compose/material3/CalendarDate;

    iget-object v11, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$startSelection:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$endSelection:Landroidx/compose/runtime/MutableState;

    iget-boolean v9, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$rangeSelectionEnabled:Z

    iget v8, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$$dirty:I

    iget-object v7, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v6, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$defaultLocale:Ljava/util/Locale;

    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$stateData:Landroidx/compose/material3/StateData;

    iget-object v0, v0, Landroidx/compose/material3/DatePickerKt$Month$1;->$dateValidator:Lkotlin/jvm/functions/Function1;

    const v13, -0x1cd0f17e

    .line 1447
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo"

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1922
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v13

    move-object/from16 p0, v0

    const/4 v0, 0x6

    .line 1925
    invoke-static {v2, v13, v12, v0}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v13, -0x4ee9b9da

    .line 1926
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1927
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    move-object/from16 v16, v7

    const v7, 0x789c5f52

    move-object/from16 v17, v6

    const-string v6, "C:CompositionLocal.kt#9igjgp"

    .line 1928
    invoke-static {v12, v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1927
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 1929
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .line 1928
    invoke-static {v12, v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1929
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1930
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v18

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 1928
    invoke-static {v12, v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1930
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1932
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 1939
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    move-object/from16 v18, v3

    .line 1940
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1941
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1942
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1943
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 1945
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1947
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 1948
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .line 1934
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1935
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1936
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1937
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1949
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 1950
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v12, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7ab4aae9

    .line 1951
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, 0x107e02c8

    const-string v2, "C79@4027L9:Column.kt#2w3rfo"

    .line 1953
    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    const v1, -0x423c69c2

    const-string v5, "C:DatePicker.kt#uh7d8r"

    .line 1453
    invoke-static {v12, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, -0x2a8965e3

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "*1453@59267L4565"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, v13

    move v4, v1

    const/4 v2, 0x6

    :goto_2
    if-ge v4, v2, :cond_16

    .line 1455
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    invoke-static {v2, v3, v13, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1456
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 1457
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v7

    const v13, 0x2952b718

    .line 1454
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo"

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v13, 0x36

    .line 1954
    invoke-static {v3, v7, v12, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    const v13, -0x4ee9b9da

    .line 1955
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1956
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    const v13, 0x789c5f52

    .line 1957
    invoke-static {v12, v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1956
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 1958
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v21

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .line 1957
    invoke-static {v12, v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1958
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1959
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v21

    move/from16 v25, v1

    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .line 1957
    invoke-static {v12, v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1959
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1961
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 1968
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    move/from16 v21, v4

    .line 1969
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1970
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1971
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1972
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 1974
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1976
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 1977
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .line 1963
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1964
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1965
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1966
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1978
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 1979
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v12, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7ab4aae9

    .line 1980
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x1378c6ab

    const-string v1, "C80@4021L9:Row.kt#2w3rfo"

    .line 1982
    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    const v0, -0x5852ace9

    .line 1459
    invoke-static {v12, v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, -0x423c68ab

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, ""

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v3, v13

    move/from16 v4, v25

    :goto_4
    const/4 v0, 0x7

    if-ge v3, v0, :cond_15

    .line 1460
    invoke-virtual {v14}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt v4, v0, :cond_14

    .line 1462
    invoke-virtual {v14}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    invoke-virtual {v14}, Landroidx/compose/material3/CalendarMonth;->getNumberOfDays()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v4, v0, :cond_7

    goto/16 :goto_d

    :cond_7
    const v0, 0x16ce9549

    .line 1471
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "1478@60757L644,1489@61458L366,1504@62314L32,1509@62702L129,1501@62133L1597"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v14}, Landroidx/compose/material3/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    sub-int v2, v4, v0

    .line 1473
    invoke-virtual {v14}, Landroidx/compose/material3/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v0

    move-object/from16 v22, v14

    int-to-long v13, v2

    const-wide/32 v27, 0x5265c00

    mul-long v13, v13, v27

    add-long/2addr v13, v0

    .line 1475
    invoke-virtual {v15}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-nez v0, :cond_8

    const/16 v25, 0x1

    goto :goto_5

    :cond_8
    const/16 v25, 0x0

    .line 1477
    :goto_5
    invoke-interface {v11}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/CalendarDate;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-nez v0, :cond_9

    const/16 v27, 0x1

    goto :goto_6

    :cond_9
    const/16 v27, 0x0

    .line 1478
    :goto_6
    invoke-interface {v10}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/CalendarDate;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-nez v0, :cond_a

    const/16 v28, 0x1

    goto :goto_7

    :cond_a
    const/16 v28, 0x0

    :goto_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    shr-int/lit8 v29, v8, 0xc

    and-int/lit8 v29, v29, 0xe

    const v7, 0x1e7b2b64

    .line 1479
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1983
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1985
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_c

    .line 1986
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_b

    goto :goto_8

    :cond_b
    move-object v0, v1

    move-object/from16 v1, v18

    goto :goto_9

    .line 1480
    :cond_c
    :goto_8
    new-instance v0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9, v13, v14}, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;-><init>(Landroidx/compose/material3/StateData;ZJ)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 1988
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1984
    :goto_9
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1479
    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/runtime/State;

    .line 1495
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    move-object/from16 v32, v15

    move-object/from16 v15, p0

    move v0, v9

    move-object/from16 v33, v1

    move/from16 v1, v25

    move/from16 v34, v9

    move v9, v2

    move/from16 v2, v27

    move/from16 v35, v3

    move/from16 v3, v28

    move/from16 v36, v4

    move/from16 v4, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v5

    move-object/from16 v5, p1

    move-object/from16 v37, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v6

    move/from16 v6, v29

    .line 1490
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DatePickerKt;->access$dayContentDescription(ZZZZZLandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 1499
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/DatePickerFormatter;->getSelectedDateDescriptionSkeleton$material3_release()Ljava/lang/String;

    move-result-object v1

    .line 1497
    invoke-static {v13, v14, v1, v10}, Landroidx/compose/material3/CalendarModel_androidKt;->formatWithSkeleton(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1503
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    if-nez v27, :cond_e

    if-eqz v28, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v3, 0x1

    .line 1504
    :goto_b
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v5, 0x1e7b2b64

    .line 1505
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1991
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v5

    .line 1993
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_f

    .line 1994
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_10

    .line 1505
    :cond_f
    new-instance v4, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$1$1;

    invoke-direct {v4, v11, v13, v14}, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;J)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1996
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1992
    :cond_10
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1509
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const v6, 0x44faf204

    .line 1510
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1999
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 2000
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_11

    .line 2001
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_12

    .line 1511
    :cond_11
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v15, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2003
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1999
    :cond_12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1514
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v0, :cond_13

    .line 1516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_c

    :cond_13
    move-object v7, v1

    .line 1521
    :goto_c
    new-instance v0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$3;

    invoke-direct {v0, v9}, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$3;-><init>(I)V

    const v1, 0x615e80bd

    const/4 v13, 0x1

    invoke-static {v12, v1, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v8, 0x3

    const/high16 v1, 0xe000000

    and-int/2addr v0, v1

    const v1, 0x30000006

    or-int v14, v0, v1

    move-object v0, v2

    move v1, v3

    move-object v2, v4

    move/from16 v3, v27

    move v4, v5

    move/from16 v5, v25

    const v18, 0x7ab4aae9

    const v23, 0x789c5f52

    move/from16 v25, v8

    move-object/from16 v8, v19

    move/from16 v26, v34

    move-object/from16 v28, v10

    move-object/from16 v27, v37

    move-object/from16 v10, p1

    move-object/from16 v30, v11

    move-object/from16 v29, v31

    move v11, v14

    .line 1502
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DatePickerKt;->access$Day(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1471
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v1, 0x6

    goto :goto_e

    :cond_14
    :goto_d
    move/from16 v35, v3

    move/from16 v36, v4

    move/from16 v25, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v29, v11

    move-object/from16 v22, v14

    move-object/from16 v32, v15

    move-object/from16 v28, v17

    move-object/from16 v33, v18

    move-object/from16 v30, v20

    const/4 v13, 0x1

    const v23, 0x789c5f52

    move-object/from16 v15, p0

    move-object/from16 v20, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    const v0, 0x16ce93be

    .line 1463
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "1464@59838L291"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1466
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1467
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v1

    .line 1468
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v2

    .line 1466
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    .line 1465
    invoke-static {v0, v12, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 1463
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_e
    add-int/lit8 v4, v36, 0x1

    add-int/lit8 v3, v35, 0x1

    move-object/from16 p0, v15

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v5, v20

    move-object/from16 v14, v22

    move/from16 v8, v25

    move/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v17, v28

    move-object/from16 v11, v29

    move-object/from16 v20, v30

    move-object/from16 v15, v32

    move-object/from16 v18, v33

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_15
    move/from16 v36, v4

    move/from16 v25, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v29, v11

    move-object/from16 v22, v14

    move-object/from16 v32, v15

    move-object/from16 v28, v17

    move-object/from16 v33, v18

    move-object/from16 v30, v20

    const/4 v1, 0x6

    const v23, 0x789c5f52

    move-object/from16 v15, p0

    move-object/from16 v20, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    .line 1459
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1982
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 2006
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2007
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 2008
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2009
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    add-int/lit8 v4, v21, 0x1

    move v2, v1

    move-object/from16 v0, v24

    move-object/from16 v17, v28

    move-object/from16 v20, v30

    move-object/from16 v15, v32

    move-object/from16 v18, v33

    move/from16 v1, v36

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1453
    :cond_16
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1953
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 2011
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2012
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 2013
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2014
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2015
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_17
    :goto_f
    return-void
.end method
