.class final Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n+ 2 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,1502:1\n467#2,3:1503\n470#2,2:1510\n472#2,3:1513\n475#2,5:1517\n33#3,4:1506\n38#3:1512\n70#4:1516\n70#4:1522\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n*L\n794#1:1503,3\n794#1:1510,2\n794#1:1513,3\n794#1:1517,5\n794#1:1506,4\n794#1:1512\n795#1:1516\n807#1:1522\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "parentFrameClock",
        "Landroidx/compose/runtime/MonotonicFrameClock;"
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
    c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2"
    f = "Recomposer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x317,
        0x32b,
        0x32c
    }
    m = "invokeSuspend"
    n = {
        "recomposeCoroutineScope",
        "frameSignal",
        "frameLoop",
        "frameLoop"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, v1, p0, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    .line 780
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/runtime/ProduceFrameSignal;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object v15, v9

    goto/16 :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MonotonicFrameClock;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 781
    sget-object v10, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v10, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v9

    if-nez v9, :cond_5

    move v9, v7

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    if-eqz v9, :cond_f

    .line 786
    invoke-interface {v8}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    invoke-interface {v8}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v10

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    .line 785
    invoke-static {v9}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v14

    .line 788
    new-instance v15, Landroidx/compose/runtime/ProduceFrameSignal;

    invoke-direct {v15}, Landroidx/compose/runtime/ProduceFrameSignal;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 789
    new-instance v11, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v11, v12, v2, v15, v6}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    move-object v9, v14

    move-object v8, v15

    .line 790
    :goto_1
    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v10}, Landroidx/compose/runtime/Recomposer;->access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 791
    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    iput v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v10, v11}, Landroidx/compose/runtime/Recomposer;->access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_3

    return-object v1

    .line 794
    :goto_2
    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 1503
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v9

    .line 1504
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1505
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v10

    .line 1507
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_6

    .line 1508
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1509
    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .line 1510
    move-object v5, v9

    check-cast v5, Ljava/util/Set;

    invoke-interface {v13, v5}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1513
    :cond_6
    new-instance v5, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v5}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    invoke-static {v14, v5}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/collection/IdentityArraySet;)V

    .line 1515
    :cond_7
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v5

    .line 1507
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_8

    .line 1508
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1509
    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    .line 795
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v10

    .line 1516
    monitor-enter v10

    .line 796
    :try_start_0
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v14, v11}, Landroidx/compose/runtime/Recomposer;->access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    monitor-exit v10

    .line 798
    invoke-static {v9}, Landroidx/compose/runtime/CompositionKt;->getRecomposeCoroutineContext(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v7, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;

    invoke-direct {v7, v14, v9, v6}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v9, v15

    move/from16 v18, v12

    move-object v12, v7

    move v7, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    add-int/lit8 v12, v18, 0x1

    move v13, v7

    move-object/from16 v14, v16

    const/4 v7, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 1516
    monitor-exit v10

    throw v0

    :cond_8
    move-object/from16 v16, v14

    .line 1517
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1518
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v5

    if-nez v5, :cond_b

    .line 807
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v5

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 1522
    monitor-enter v5

    .line 808
    :try_start_1
    invoke-static {v7}, Landroidx/compose/runtime/Recomposer;->access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v8}, Landroidx/compose/runtime/ProduceFrameSignal;->requestFrameLocked()Lkotlin/coroutines/Continuation;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :cond_9
    move-object v7, v6

    .line 1522
    :goto_5
    monitor-exit v5

    if-eqz v7, :cond_a

    .line 807
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 809
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_a
    move-object v9, v15

    const/4 v7, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    .line 1522
    monitor-exit v5

    throw v0

    .line 1518
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called outside of runRecomposeAndApplyChanges"

    .line 1519
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_c
    invoke-interface {v9}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v5

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v5, v7}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_d

    return-object v1

    .line 812
    :cond_d
    :goto_6
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    invoke-static {v2, v4}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e

    return-object v1

    .line 813
    :cond_e
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 782
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recomposeCoroutineContext may not contain a Job; found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v10, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
