.class final Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1;->invoke(Landroidx/compose/material3/SheetValue;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1"
    f = "BottomSheetScaffold.kt"
    i = {}
    l = {
        0xdc
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $state:Landroidx/compose/material3/SheetState;

.field final synthetic $target:Landroidx/compose/material3/SheetValue;

.field final synthetic $velocity:F

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SheetValue;FLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/material3/SheetValue;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$state:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$target:Landroidx/compose/material3/SheetValue;

    iput p3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$velocity:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;

    iget-object v0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$state:Landroidx/compose/material3/SheetState;

    iget-object v1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$target:Landroidx/compose/material3/SheetValue;

    iget p0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$velocity:F

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SheetValue;FLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$state:Landroidx/compose/material3/SheetState;

    .line 220
    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$target:Landroidx/compose/material3/SheetValue;

    iget v3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->$velocity:F

    .line 221
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1;->label:I

    .line 220
    invoke-virtual {p1, v1, v3, v4}, Landroidx/compose/material3/SwipeableV2State;->animateTo(Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 223
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
