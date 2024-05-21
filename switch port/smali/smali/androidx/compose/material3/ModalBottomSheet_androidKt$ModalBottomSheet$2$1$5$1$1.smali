.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $animateToDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $collapseActionLabel:Ljava/lang/String;

.field final synthetic $dismissActionLabel:Ljava/lang/String;

.field final synthetic $expandActionLabel:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$dismissActionLabel:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$expandActionLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$collapseActionLabel:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 6

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$dismissActionLabel:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$expandActionLabel:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$collapseActionLabel:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    .line 235
    new-instance v5, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$1;

    invoke-direct {v5, v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->dismiss(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 239
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getCurrentValue()Landroidx/compose/material3/SheetValue;

    move-result-object v1

    sget-object v4, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    if-ne v1, v4, :cond_0

    .line 240
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;

    invoke-direct {v1, v0, p0, v0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->expand(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getHasPartiallyExpandedState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$3;

    invoke-direct {v1, v0, p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$3;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v3, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->collapse(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method
