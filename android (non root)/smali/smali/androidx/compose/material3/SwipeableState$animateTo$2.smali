.class final Landroidx/compose/material3/SwipeableState$animateTo$2;
.super Ljava/lang/Object;
.source "Swipeable.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableState;->animateTo$material3_release(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/util/Map<",
        "Ljava/lang/Float;",
        "+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableState$animateTo$2\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,886:1\n467#2,7:887\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableState$animateTo$2\n*L\n340#1:887,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "anchors",
        "",
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


# instance fields
.field final synthetic $anim:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/material3/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/material3/SwipeableState;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->$targetValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->$anim:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 329
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SwipeableState$animateTo$2;->emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;

    iget v1, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;-><init>(Landroidx/compose/material3/SwipeableState$animateTo$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 329
    iget v2, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->label:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    iget-object p0, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material3/SwipeableState$animateTo$2;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->$targetValue:Ljava/lang/Object;

    .line 331
    invoke-static {p1, p2}, Landroidx/compose/material3/SwipeableKt;->access$getOffset(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v2, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    .line 335
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v5, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->$anim:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p0, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material3/SwipeableState$animateTo$2$emit$1;->label:I

    invoke-static {v2, p2, v5, v0}, Landroidx/compose/material3/SwipeableState;->access$animateInternalToOffset(Landroidx/compose/material3/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_3

    return-object v1

    .line 337
    :cond_3
    :goto_1
    iget-object p2, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-static {p2}, Landroidx/compose/material3/SwipeableState;->access$getAbsoluteOffset$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 887
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 888
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 889
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v2, p2

    .line 340
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 890
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 893
    :cond_5
    check-cast v0, Ljava/util/Map;

    .line 341
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-virtual {p1}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p1

    .line 342
    :cond_6
    iget-object p0, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-static {p0, p1}, Landroidx/compose/material3/SwipeableState;->access$setCurrentValue(Landroidx/compose/material3/SwipeableState;Ljava/lang/Object;)V

    .line 344
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    :try_start_2
    const-string p2, "The target value must have an associated anchor."

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 337
    iget-object v0, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-static {v0}, Landroidx/compose/material3/SwipeableState;->access$getAbsoluteOffset$p(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 887
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 888
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 889
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v4, v0

    .line 340
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_8

    .line 890
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 893
    :cond_9
    check-cast v1, Ljava/util/Map;

    .line 341
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-virtual {p1}, Landroidx/compose/material3/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p1

    .line 342
    :cond_a
    iget-object p0, p0, Landroidx/compose/material3/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material3/SwipeableState;

    invoke-static {p0, p1}, Landroidx/compose/material3/SwipeableState;->access$setCurrentValue(Landroidx/compose/material3/SwipeableState;Ljava/lang/Object;)V

    throw p2
.end method
