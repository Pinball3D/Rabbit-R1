.class final Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $dismissActionLabel:Ljava/lang/String;

.field final synthetic $expandActionLabel:Ljava/lang/String;

.field final synthetic $partialExpandActionLabel:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sheetSwipeEnabled:Z

.field final synthetic $state:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$state:Landroidx/compose/material3/SheetState;

    iput-boolean p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$sheetSwipeEnabled:Z

    iput-object p3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$expandActionLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$partialExpandActionLabel:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$dismissActionLabel:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 7

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$state:Landroidx/compose/material3/SheetState;

    iget-boolean v1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$sheetSwipeEnabled:Z

    iget-object v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$expandActionLabel:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$partialExpandActionLabel:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$dismissActionLabel:Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    .line 283
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getCurrentValue()Landroidx/compose/material3/SheetValue;

    move-result-object v1

    sget-object v5, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    if-ne v1, v5, :cond_0

    .line 285
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/SwipeableV2State;->getConfirmValueChange$material3_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    sget-object v3, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    new-instance v1, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1;

    invoke-direct {v1, p0, v0}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->expand(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/SwipeableV2State;->getConfirmValueChange$material3_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    new-instance v1, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$2;

    invoke-direct {v1, p0, v0}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v3, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->collapse(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getSkipHiddenState$material3_release()Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    new-instance v1, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$3;

    invoke-direct {v1, p0, v0}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$3;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->dismiss(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method
