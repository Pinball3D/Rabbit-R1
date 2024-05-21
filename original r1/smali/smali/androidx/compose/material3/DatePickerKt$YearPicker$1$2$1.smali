.class final Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt$YearPicker$1$2;->invoke(Landroidx/compose/foundation/lazy/grid/LazyGridScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$YearPicker$1$2$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1920:1\n50#2:1921\n49#2:1922\n1114#3,6:1923\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$YearPicker$1$2$1\n*L\n1698#1:1921\n1698#1:1922\n1698#1:1923,6\n*E\n"
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

.field final synthetic $currentYear:I

.field final synthetic $displayedYear:I

.field final synthetic $lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $onYearSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollToEarlierYearsLabel:Ljava/lang/String;

.field final synthetic $scrollToLaterYearsLabel:Ljava/lang/String;

.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;IILkotlin/jvm/functions/Function1;ILandroidx/compose/material3/DatePickerColors;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/StateData;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$stateData:Landroidx/compose/material3/StateData;

    iput p2, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$displayedYear:I

    iput p3, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$currentYear:I

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$$dirty:I

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$scrollToEarlierYearsLabel:Ljava/lang/String;

    iput-object p10, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$scrollToLaterYearsLabel:Ljava/lang/String;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1670
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->invoke(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 12

    move-object v0, p0

    move v3, p2

    move-object v7, p3

    move/from16 v1, p4

    const-string v2, "$this$items"

    move-object v4, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C1697@70359L32,*1698@70427L54,1672@68906L1981:DatePicker.kt#uh7d8r"

    invoke-static {p3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x70

    if-nez v2, :cond_1

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit16 v2, v2, 0x2d1

    const/16 v4, 0x90

    if-ne v2, v4, :cond_3

    .line 1671
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 1709
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 1671
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.YearPicker.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1669)"

    const v5, 0x519cbbbd

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$stateData:Landroidx/compose/material3/StateData;

    invoke-virtual {v1}, Landroidx/compose/material3/StateData;->getYearRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    add-int v8, v3, v1

    .line 1672
    invoke-static {v8}, Landroidx/compose/material3/DatePickerKt;->toLocalString(I)Ljava/lang/String;

    move-result-object v9

    .line 1674
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1676
    sget-object v2, Landroidx/compose/material3/tokens/DatePickerModalTokens;->INSTANCE:Landroidx/compose/material3/tokens/DatePickerModalTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/DatePickerModalTokens;->getSelectionYearContainerWidth-D9Ej5fM()F

    move-result v2

    .line 1677
    sget-object v4, Landroidx/compose/material3/tokens/DatePickerModalTokens;->INSTANCE:Landroidx/compose/material3/tokens/DatePickerModalTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/DatePickerModalTokens;->getSelectionYearContainerHeight-D9Ej5fM()F

    move-result v4

    .line 1675
    invoke-static {v1, v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 1679
    new-instance v11, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1$1;

    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$scrollToEarlierYearsLabel:Ljava/lang/String;

    iget-object v6, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$scrollToLaterYearsLabel:Ljava/lang/String;

    move-object v1, v11

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ILkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v10, v2, v11, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$displayedYear:I

    if-ne v8, v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    iget v5, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$currentYear:I

    if-ne v8, v5, :cond_6

    move v2, v3

    :cond_6
    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    .line 1698
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v10, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    const v11, 0x1e7b2b64

    invoke-interface {p3, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p3, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1921
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1923
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7

    .line 1924
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_8

    .line 1698
    :cond_7
    new-instance v5, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1$2$1;

    invoke-direct {v5, v10, v8}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;I)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 1926
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1922
    :cond_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1699
    sget-object v6, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v6}, Landroidx/compose/material3/Strings$Companion;->getDatePickerNavigateToYearDescription-adMyvUU()I

    move-result v6

    const/4 v8, 0x6

    invoke-static {v6, p3, v8}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    .line 1700
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "format(this, *args)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    .line 1702
    new-instance v10, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1$3;

    invoke-direct {v10, v9}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1$3;-><init>(Ljava/lang/String;)V

    const v9, 0x7ce40a0d

    invoke-static {p3, v9, v3, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iget v0, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;->$$dirty:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v3, 0x70000

    and-int/2addr v0, v3

    const/high16 v3, 0x180000

    or-int v10, v0, v3

    move-object v0, v1

    move v1, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object v7, p3

    move v8, v10

    .line 1673
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/DatePickerKt;->access$Year(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_4
    return-void
.end method
