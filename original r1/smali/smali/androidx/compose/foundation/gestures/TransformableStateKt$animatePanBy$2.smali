.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransformableState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableStateKt;->animatePanBy-ubNVwUQ(Landroidx/compose/foundation/gestures/TransformableState;JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/TransformScope;",
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
        "Landroidx/compose/foundation/gestures/TransformScope;"
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
    c = "androidx.compose.foundation.gestures.TransformableStateKt$animatePanBy$2"
    f = "TransformableState.kt"
    i = {}
    l = {
        0xb6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $offset:J

.field final synthetic $previous:Lkotlin/jvm/internal/Ref$LongRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$previous:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$offset:J

    iput-object p4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$previous:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$offset:J

    iget-object v4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/TransformScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/TransformScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->invoke(Landroidx/compose/foundation/gestures/TransformScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 177
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/TransformScope;

    .line 178
    new-instance v1, Landroidx/compose/animation/core/AnimationState;

    .line 179
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$previous:Lkotlin/jvm/internal/Ref$LongRef;

    .line 180
    iget-wide v5, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v13, 0x0

    move-object v3, v1

    .line 178
    invoke-direct/range {v3 .. v13}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-wide v3, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$offset:J

    .line 182
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 v6, 0x0

    new-instance v3, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->$previous:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3, v7, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/gestures/TransformScope;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x4

    const/4 v10, 0x0

    iput v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->label:I

    move-object v3, v1

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 187
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
