.class final Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.ClickableKt$handlePressInteraction$2$delayJob$1"
    f = "Clickable.kt"
    i = {
        0x1
    }
    l = {
        0x125,
        0x128
    }
    m = "invokeSuspend"
    n = {
        "press"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $delayPressInteraction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $pressPoint:J

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;J",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$delayPressInteraction:Lkotlin/jvm/functions/Function0;

    iput-wide p2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$pressPoint:J

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$delayPressInteraction:Lkotlin/jvm/functions/Function0;

    iget-wide v2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$pressPoint:J

    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;-><init>(Lkotlin/jvm/functions/Function0;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->L$0:Ljava/lang/Object;

    .line 291
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$delayPressInteraction:Lkotlin/jvm/functions/Function0;

    .line 292
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    invoke-static {}, Landroidx/compose/foundation/Clickable_androidKt;->getTapIndicationDelay()J

    move-result-wide v4

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->label:I

    invoke-static {v4, v5, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 295
    :cond_3
    :goto_0
    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-wide v3, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$pressPoint:J

    const/4 v1, 0x0

    invoke-direct {p1, v3, v4, v1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 296
    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->label:I

    invoke-interface {v1, v3, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;->$interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 297
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->setPressInteraction(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 298
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
