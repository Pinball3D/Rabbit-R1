.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/material3/SheetValue;",
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
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;->$sheetState:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, Landroidx/compose/material3/SheetValue;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;->invoke(Landroidx/compose/material3/SheetValue;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/SheetValue;)V
    .locals 7

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;->$sheetState:Landroidx/compose/material3/SheetState;

    .line 160
    invoke-virtual {v0, p1}, Landroidx/compose/material3/SheetState;->trySnapTo$material3_release(Landroidx/compose/material3/SheetValue;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 162
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2$1;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;->$sheetState:Landroidx/compose/material3/SheetState;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2$1;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SheetValue;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
