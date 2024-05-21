.class public final Landroidx/compose/runtime/SnapshotStateKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "androidx/compose/runtime/SnapshotStateKt__DerivedStateKt",
        "androidx/compose/runtime/SnapshotStateKt__ProduceStateKt",
        "androidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt",
        "androidx/compose/runtime/SnapshotStateKt__SnapshotMutationPolicyKt",
        "androidx/compose/runtime/SnapshotStateKt__SnapshotStateKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TR;R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;TR;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/DerivedStateObserver;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    return-object v0
.end method

.method public static final derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final getValue(Landroidx/compose/runtime/State;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->getValue(Landroidx/compose/runtime/State;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs mutableStateListOf([Ljava/lang/Object;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->mutableStateListOf([Ljava/lang/Object;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p0

    return-object p0
.end method

.method public static final mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs mutableStateMapOf([Lkotlin/Pair;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->mutableStateMapOf([Lkotlin/Pair;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p0

    return-object p0
.end method

.method public static final mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;)",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public static final neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotMutationPolicyKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static final observeDerivedStateRecalculations(Landroidx/compose/runtime/DerivedStateObserver;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/DerivedStateObserver;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->observeDerivedStateRecalculations(Landroidx/compose/runtime/DerivedStateObserver;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final produceState(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt;->produceState(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final produceState(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt;->produceState(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final produceState(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt;->produceState(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final produceState(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt;->produceState(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final produceState(Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt;->produceState(Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotMutationPolicyKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static final rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableState;Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->setValue(Landroidx/compose/runtime/MutableState;Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotMutationPolicyKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static final toMutableStateList(Ljava/util/Collection;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->toMutableStateList(Ljava/util/Collection;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p0

    return-object p0
.end method

.method public static final toMutableStateMap(Ljava/lang/Iterable;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt;->toMutableStateMap(Ljava/lang/Iterable;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p0

    return-object p0
.end method
