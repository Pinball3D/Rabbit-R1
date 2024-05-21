.class final Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyAnimateScroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->animateScrollToItem(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyAnimateScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt\n*L\n1#1,268:1\n1#2:269\n40#3,4:270\n40#3,4:274\n*S KotlinDebug\n*F\n+ 1 LazyAnimateScroll.kt\nandroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2\n*L\n129#1:270,4\n234#1:274,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/gestures/ScrollScope;"
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
    c = "androidx.compose.foundation.lazy.layout.LazyAnimateScrollKt$animateScrollToItem$2"
    f = "LazyAnimateScroll.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x89,
        0xed
    }
    m = "invokeSuspend"
    n = {
        "$this$scroll",
        "loop",
        "anim",
        "loops",
        "targetDistancePx",
        "boundDistancePx",
        "minDistancePx",
        "forward",
        "$this$scroll"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "F$0",
        "F$1",
        "F$2",
        "I$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $scrollOffset:I

.field final synthetic $this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;II)Z

    move-result p0

    return p0
.end method

.method private static final invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 95
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-le p0, p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-ne p0, p2, :cond_3

    .line 99
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemScrollOffset()I

    move-result p0

    if-le p0, p3, :cond_3

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-ge p0, p2, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    .line 109
    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result p0

    if-ne p0, p2, :cond_3

    .line 110
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemScrollOffset()I

    move-result p0

    if-ge p0, p3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
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

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;-><init>(ILandroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    .line 76
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->I$0:I

    iget v7, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$2:F

    iget v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$1:F

    iget v9, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$0:F

    iget-object v10, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v13, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/foundation/gestures/ScrollScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v8

    move v14, v9

    move-object/from16 v32, v13

    move-object v13, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v12

    move-object v12, v11

    move-object/from16 v11, v33

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v13

    goto/16 :goto_8

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/gestures/ScrollScope;

    iget v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    int-to-float v8, v0

    cmpl-float v8, v8, v4

    if-ltz v8, :cond_3

    move v8, v6

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_f

    :try_start_1
    iget-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 79
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->access$getTargetDistance$p()F

    move-result v8

    invoke-interface {v0, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    iget-object v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 80
    invoke-interface {v8}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v8

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->access$getBoundDistance$p()F

    move-result v9

    invoke-interface {v8, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    iget-object v9, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 81
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v9

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->access$getMinimumDistance$p()F

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    .line 82
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 83
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1e

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v12

    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v12, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v13, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    .line 84
    invoke-interface {v12, v13}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getTargetItemOffset(I)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_b

    iget v12, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget-object v13, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 89
    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v13

    if-le v12, v13, :cond_4

    move v12, v6

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    .line 119
    :goto_1
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v6, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_1
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_1 .. :try_end_1} :catch_5

    move v14, v0

    move v15, v8

    move v0, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v7

    move v7, v9

    .line 120
    :goto_2
    :try_start_2
    iget-boolean v8, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v8, :cond_e

    iget-object v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    invoke-interface {v8}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->getItemCount()I

    move-result v8

    if-lez v8, :cond_e

    .line 121
    iget-object v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v9, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget v5, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    invoke-interface {v8, v9, v5}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->expectedDistanceTo(II)F

    move-result v5

    .line 122
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8
    :try_end_2
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_2 .. :try_end_2} :catch_4

    cmpg-float v8, v8, v14

    if-gez v8, :cond_6

    .line 123
    :try_start_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5
    :try_end_3
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    neg-float v5, v5

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    move v5, v14

    goto :goto_3

    :cond_7
    neg-float v5, v14

    .line 129
    :goto_3
    :try_start_4
    iget v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    iget-object v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    .line 135
    iget-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroidx/compose/animation/core/AnimationState;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1e

    const/16 v30, 0x0

    invoke-static/range {v21 .. v30}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v8

    iput-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    new-instance v16, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 137
    iget-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Landroidx/compose/animation/core/AnimationState;

    .line 138
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v22

    const/16 v23, 0x0

    .line 139
    iget-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v8}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    cmpg-float v8, v8, v4

    if-nez v8, :cond_8

    const/16 v24, 0x0

    goto :goto_4

    :cond_8
    move/from16 v24, v6

    .line 137
    :goto_4
    new-instance v25, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$3;

    iget-object v9, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    if-eqz v0, :cond_9

    move/from16 v17, v6

    goto :goto_5

    :cond_9
    const/16 v17, 0x0

    :goto_5
    iget v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I
    :try_end_4
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v18, v8

    move-object/from16 v8, v25

    move-object/from16 p0, v10

    move/from16 v10, v18

    move-object/from16 p1, v11

    move v11, v5

    move-object v5, v12

    move-object/from16 v12, v16

    move-object/from16 v30, v13

    move-object/from16 v13, p0

    move v4, v14

    move-object/from16 v14, p1

    move/from16 v31, v15

    move/from16 v15, v17

    move/from16 v16, v31

    move-object/from16 v17, v30

    move/from16 v18, v3

    move-object/from16 v19, v5

    :try_start_5
    invoke-direct/range {v8 .. v19}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IFLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v25, Lkotlin/jvm/functions/Function1;

    move-object/from16 v26, v1

    check-cast v26, Lkotlin/coroutines/Continuation;
    :try_end_5
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v27, 0x2

    const/16 v28, 0x0

    move-object/from16 v3, p0

    :try_start_6
    iput-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p1

    iput-object v10, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$2:Ljava/lang/Object;

    move-object/from16 v13, v30

    iput-object v13, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$3:Ljava/lang/Object;

    iput v4, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$0:F

    move/from16 v8, v31

    iput v8, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$1:F

    iput v7, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->F$2:F

    iput v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->I$0:I

    iput v6, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->label:I

    invoke-static/range {v21 .. v28}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_6
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_6 .. :try_end_6} :catch_2

    if-ne v9, v2, :cond_a

    return-object v2

    :cond_a
    move v14, v4

    move-object v12, v5

    move v15, v8

    move-object v11, v10

    move-object v10, v3

    .line 226
    :goto_6
    :try_start_7
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v3, v6

    iput v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_7
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v10

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v3, v10

    :goto_7
    move-object/from16 v32, v3

    move-object v3, v0

    move-object/from16 v0, v32

    goto :goto_8

    .line 87
    :cond_b
    :try_start_8
    new-instance v0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    throw v0
    :try_end_8
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v0, v7

    .line 231
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->getPreviousAnimation()Landroidx/compose/animation/core/AnimationState;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1e

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v21

    .line 232
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->getItemOffset()I

    move-result v3

    iget v4, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 233
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 237
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    if-nez v5, :cond_c

    move v5, v6

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    xor-int/lit8 v24, v5, 0x1

    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$5;

    invoke-direct {v5, v3, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2$5;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    move-object/from16 v25, v5

    check-cast v25, Lkotlin/jvm/functions/Function1;

    move-object/from16 v26, v1

    check-cast v26, Lkotlin/coroutines/Continuation;

    const/16 v27, 0x2

    const/16 v28, 0x0

    iput-object v0, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->L$3:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->label:I

    invoke-static/range {v21 .. v28}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_d

    return-object v2

    .line 265
    :cond_d
    :goto_a
    iget-object v2, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$this_animateScrollToItem:Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    iget v3, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$index:I

    iget v1, v1, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt$animateScrollToItem$2;->$scrollOffset:I

    invoke-interface {v2, v0, v3, v1}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;->snapToItem(Landroidx/compose/foundation/gestures/ScrollScope;II)V

    .line 267
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 77
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index should be non-negative ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
