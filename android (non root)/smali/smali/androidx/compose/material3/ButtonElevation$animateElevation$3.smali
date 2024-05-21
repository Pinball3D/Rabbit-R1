.class final Landroidx/compose/material3/ButtonElevation$animateElevation$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Button.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ButtonElevation;->animateElevation(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
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
    c = "androidx.compose.material3.ButtonElevation$animateElevation$3"
    f = "Button.kt"
    i = {}
    l = {
        0x365
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $animatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field final synthetic $target:F

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/ButtonElevation;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/material3/ButtonElevation;",
            "F",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/ButtonElevation$animateElevation$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->this$0:Landroidx/compose/material3/ButtonElevation;

    iput p3, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$target:F

    iput-object p4, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Landroidx/compose/material3/ButtonElevation$animateElevation$3;

    iget-object v1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->this$0:Landroidx/compose/material3/ButtonElevation;

    iget v3, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$target:F

    iget-object v4, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ButtonElevation$animateElevation$3;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 863
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p1

    iget-object v1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->this$0:Landroidx/compose/material3/ButtonElevation;

    .line 864
    invoke-static {v1}, Landroidx/compose/material3/ButtonElevation;->access$getPressedElevation$p(Landroidx/compose/material3/ButtonElevation;)F

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    invoke-direct {p1, v4, v5, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->this$0:Landroidx/compose/material3/ButtonElevation;

    .line 865
    invoke-static {v1}, Landroidx/compose/material3/ButtonElevation;->access$getHoveredElevation$p(Landroidx/compose/material3/ButtonElevation;)F

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    invoke-direct {p1}, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;-><init>()V

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->this$0:Landroidx/compose/material3/ButtonElevation;

    .line 866
    invoke-static {v1}, Landroidx/compose/material3/ButtonElevation;->access$getFocusedElevation$p(Landroidx/compose/material3/ButtonElevation;)F

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-direct {p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;-><init>()V

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget v1, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$target:F

    iget-object v4, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 871
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/ButtonElevation$animateElevation$3;->label:I

    .line 869
    invoke-static {p1, v1, v3, v4, v5}, Landroidx/compose/material3/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    .line 874
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
