.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WindowInsetsConnection.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1"
    f = "WindowInsetsConnection.android.kt"
    i = {}
    l = {
        0x176
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $animationController:Landroid/view/WindowInsetsAnimationController;

.field final synthetic $current:I

.field final synthetic $flingAmount:F

.field final synthetic $target:I

.field final synthetic $targetShown:Z

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;


# direct methods
.method constructor <init>(IIFLandroid/view/WindowInsetsAnimationController;ZLandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Landroid/view/WindowInsetsAnimationController;",
            "Z",
            "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$current:I

    iput p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$target:I

    iput p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$flingAmount:F

    iput-object p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$targetShown:Z

    iput-object p6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;

    iget v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$current:I

    iget v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$target:I

    iget v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$flingAmount:F

    iget-object v4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$targetShown:Z

    iget-object v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;-><init>(IIFLandroid/view/WindowInsetsAnimationController;ZLandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    .line 372
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$current:I

    int-to-float p1, p1

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 373
    invoke-static {p1, v1, v4, v2}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$target:I

    int-to-float p1, p1

    .line 374
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$flingAmount:F

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    new-instance p1, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    invoke-direct {p1, v1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    const/4 v11, 0x2

    const/4 v12, 0x0

    iput v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->label:I

    invoke-static/range {v5 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->$targetShown:Z

    .line 377
    invoke-interface {p1, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 378
    invoke-static {p0, v2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->access$setAnimationController$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Landroid/view/WindowInsetsAnimationController;)V

    .line 379
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
