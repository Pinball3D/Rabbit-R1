.class final Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->DatePickerContent(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,1920:1\n36#2:1921\n460#2,13:1947\n473#2,3:1963\n1114#3,6:1922\n74#4,6:1928\n80#4:1960\n84#4:1967\n75#5:1934\n76#5,11:1936\n89#5:1966\n76#6:1935\n92#7:1961\n58#7:1962\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2\n*L\n1193#1:1921\n1193#1:1947,13\n1193#1:1963,3\n1193#1:1922,6\n1193#1:1928,6\n1193#1:1960\n1193#1:1967\n1193#1:1934\n1193#1:1936,11\n1193#1:1966\n1193#1:1935\n1200#1:1961\n1200#1:1962\n*E\n"
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

.field final synthetic $monthsListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $stateData:Landroidx/compose/material3/StateData;

.field final synthetic $yearPickerVisible$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/StateData;ILkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/material3/StateData;",
            "I",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$stateData:Landroidx/compose/material3/StateData;

    iput p3, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$yearPickerVisible$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$monthsListState:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1187
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string v1, "$this$AnimatedVisibility"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C1191@49681L48,1192@49783L30,1192@49746L1748:DatePicker.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1186)"

    const v3, 0x2d4f24d8

    move/from16 v4, p3

    .line 1192
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v1, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/Strings$Companion;->getDatePickerYearPickerPaneTitle-adMyvUU()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v7, v2}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 1193
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const v4, 0x44faf204

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v7, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1921
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 1922
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1

    .line 1923
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_2

    .line 1193
    :cond_1
    new-instance v4, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$1$1;

    invoke-direct {v4, v1}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$1$1;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1925
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1921
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1193
    invoke-static {v3, v4, v5, v1, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$stateData:Landroidx/compose/material3/StateData;

    iget v8, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$$dirty:I

    iget-object v9, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$yearPickerVisible$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$monthsListState:Landroidx/compose/foundation/lazy/LazyListState;

    const v11, -0x1cd0f17e

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo"

    invoke-static {v7, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1928
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v11

    .line 1929
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    .line 1932
    invoke-static {v11, v12, v7, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    const v12, -0x4ee9b9da

    .line 1933
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v7, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1934
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    const v13, 0x789c5f52

    const-string v14, "C:CompositionLocal.kt#9igjgp"

    .line 1935
    invoke-static {v7, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1934
    check-cast v12, Landroidx/compose/ui/unit/Density;

    .line 1936
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/CompositionLocal;

    .line 1935
    invoke-static {v7, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1936
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1937
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .line 1935
    invoke-static {v7, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1937
    check-cast v2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1939
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 1946
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    .line 1947
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1948
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1949
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1950
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1952
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1954
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 1955
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 1941
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v11, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1942
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v13, v12, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1943
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v13, v15, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1944
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v13, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1956
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 1957
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v7, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 1958
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, 0x107e02c8

    const-string v2, "C79@4027L9:Column.kt#2w3rfo"

    .line 1960
    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    const v1, -0x3dc54209

    const-string v2, "C1193@49837L1609,1220@51467L9:DatePicker.kt#uh7d8r"

    .line 1194
    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1198
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1200
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v2

    const/4 v4, 0x7

    int-to-float v4, v4

    mul-float/2addr v2, v4

    .line 1961
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 1201
    sget-object v4, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v4}, Landroidx/compose/material3/DividerDefaults;->getThickness-D9Ej5fM()F

    move-result v4

    sub-float/2addr v2, v4

    .line 1962
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 1199
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1203
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getDatePickerHorizontalPadding()F

    move-result v2

    const/4 v4, 0x0

    const/4 v11, 0x2

    invoke-static {v1, v2, v4, v11, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1194
    new-instance v2, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$2$1;

    invoke-direct {v2, v9, v10, v5, v0}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/StateData;Landroidx/compose/foundation/lazy/LazyListState;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v8, 0x3

    and-int/lit16 v0, v0, 0x380

    const/4 v4, 0x6

    or-int/2addr v0, v4

    shl-int/lit8 v4, v8, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int v6, v0, v4

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v4, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePickerKt;->access$YearPicker(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/StateData;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    .line 1221
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DividerKt;->Divider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 1194
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1960
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1963
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1964
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1965
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1966
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1967
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-void
.end method
