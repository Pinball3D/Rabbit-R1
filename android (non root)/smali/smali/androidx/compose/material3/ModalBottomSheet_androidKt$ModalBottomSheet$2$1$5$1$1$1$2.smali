.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
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
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;

.field final synthetic $this_with:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->$this_with:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->$sheetState:Landroidx/compose/material3/SheetState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->$this_with:Landroidx/compose/material3/SheetState;

    .line 241
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableV2State;->getConfirmValueChange$material3_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 242
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2$1;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->$sheetState:Landroidx/compose/material3/SheetState;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    const/4 p0, 0x1

    .line 244
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5$1$1$1$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
