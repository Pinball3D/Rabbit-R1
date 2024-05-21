.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet-EP0qOeE(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
.field final synthetic $onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 15

    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$sheetState:Landroidx/compose/material3/SheetState;

    .line 170
    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getCurrentValue()Landroidx/compose/material3/SheetValue;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v0}, Landroidx/compose/material3/SheetState;->getHasPartiallyExpandedState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 171
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$1;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-direct {v0, p0, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-object v9, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 173
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$2;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$2;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$3;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1$3;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :goto_0
    return-void
.end method
