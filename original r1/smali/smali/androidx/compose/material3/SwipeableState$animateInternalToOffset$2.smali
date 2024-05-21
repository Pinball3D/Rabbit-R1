.class final Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Swipeable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableState;->animateInternalToOffset(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/DragScope;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/compose/foundation/gestures/DragScope;"
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
    c = "androidx.compose.material3.SwipeableState$animateInternalToOffset$2"
    f = "Swipeable.kt"
    i = {}
    l = {
        0xdf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $spec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material3/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    iput p2, p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$target:F

    iput-object p3, p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$spec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;

    iget-object v1, p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    iget v2, p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$target:F

    iget-object p0, p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$spec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;-><init>(Landroidx/compose/material3/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DragScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/DragScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->invoke(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    .line 218
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/DragScope;

    .line 219
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v7, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-static {v7}, Landroidx/compose/material3/SwipeableState;->access$getAbsoluteOffset$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iput v7, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v7, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 220
    invoke-static {v7}, Landroidx/compose/material3/SwipeableState;->access$getAnimationTarget$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    iget v8, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$target:F

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v7, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 221
    invoke-static {v7, v5}, Landroidx/compose/material3/SwipeableState;->access$setAnimationRunning(Landroidx/compose/material3/SwipeableState;Z)V

    .line 223
    :try_start_1
    iget v7, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v7, v8, v9, v4}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v10

    iget v7, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$target:F

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v12, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->$spec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 v13, 0x0

    new-instance v7, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2$1;

    invoke-direct {v7, v2, v6}, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2$1;-><init>(Landroidx/compose/foundation/gestures/DragScope;Lkotlin/jvm/internal/Ref$FloatRef;)V

    move-object v14, v7

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    const/16 v16, 0x4

    const/16 v17, 0x0

    iput v5, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->label:I

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 228
    invoke-static {v0}, Landroidx/compose/material3/SwipeableState;->access$getAnimationTarget$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 229
    invoke-static {v0, v3}, Landroidx/compose/material3/SwipeableState;->access$setAnimationRunning(Landroidx/compose/material3/SwipeableState;Z)V

    .line 231
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_1
    iget-object v2, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 228
    invoke-static {v2}, Landroidx/compose/material3/SwipeableState;->access$getAnimationTarget$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/compose/material3/SwipeableState$animateInternalToOffset$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 229
    invoke-static {v1, v3}, Landroidx/compose/material3/SwipeableState;->access$setAnimationRunning(Landroidx/compose/material3/SwipeableState;Z)V

    throw v0
.end method
