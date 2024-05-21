.class final Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BasicMarquee.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "contentWithSpacingWidth",
        ""
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
    c = "androidx.compose.foundation.MarqueeModifierNode$runAnimation$2$2"
    f = "BasicMarquee.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x16d,
        0x16f,
        0x171,
        0x171
    }
    m = "invokeSuspend"
    n = {
        "contentWithSpacingWidth",
        "spec"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/MarqueeModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MarqueeModifierNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;-><init>(Landroidx/compose/foundation/MarqueeModifierNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Float;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Float;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->invoke(Ljava/lang/Float;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_3
    iget-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$1:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    iget-object v6, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v0

    move-object v11, v6

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_5

    .line 354
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_5
    iget-object v9, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 357
    invoke-static {v9}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getIterations$p(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result v10

    .line 358
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v9, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 359
    invoke-static {v9}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getInitialDelayMillis$p(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result v12

    iget-object v9, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 360
    invoke-static {v9}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getDelayMillis$p(Landroidx/compose/foundation/MarqueeModifierNode;)I

    move-result v13

    iget-object v9, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 361
    invoke-static {v9}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getVelocity$p(Landroidx/compose/foundation/MarqueeModifierNode;)F

    move-result v14

    iget-object v9, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 362
    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v15

    .line 356
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/BasicMarqueeKt;->access$createMarqueeAnimationSpec-Z4HSEVQ(IFIIFLandroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v9

    iget-object v10, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 365
    invoke-static {v10}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getOffset$p(Landroidx/compose/foundation/MarqueeModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v10

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$1:Ljava/lang/Object;

    iput v6, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->label:I

    invoke-virtual {v10, v11, v12}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_6

    return-object v2

    :cond_6
    move-object v11, v0

    move-object v12, v9

    :goto_0
    :try_start_1
    iget-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 367
    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getOffset$p(Landroidx/compose/foundation/MarqueeModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    const/16 v16, 0xc

    const/16 v17, 0x0

    iput-object v7, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$1:Ljava/lang/Object;

    iput v5, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->label:I

    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_7

    return-object v2

    :cond_7
    :goto_1
    iget-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 369
    invoke-static {v0}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getOffset$p(Landroidx/compose/foundation/MarqueeModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->label:I

    invoke-virtual {v0, v3, v5}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    return-object v2

    .line 371
    :cond_8
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_3
    iget-object v4, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    .line 369
    invoke-static {v4}, Landroidx/compose/foundation/MarqueeModifierNode;->access$getOffset$p(Landroidx/compose/foundation/MarqueeModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v4

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->L$1:Ljava/lang/Object;

    iput v3, v1, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$2;->label:I

    invoke-virtual {v4, v5, v6}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_9

    return-object v2

    .line 371
    :cond_9
    :goto_4
    throw v0
.end method
