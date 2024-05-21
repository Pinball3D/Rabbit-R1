.class final Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutinesExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt;->collectLast(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt$collectLast$1"
    f = "CoroutinesExtensions.kt"
    i = {}
    l = {
        0x13
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $flow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_collectLast:Landroidx/lifecycle/LifecycleOwner;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$flow:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$this_collectLast:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$action:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;

    iget-object v0, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$flow:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$this_collectLast:Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$action:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, p0, p2}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$flow:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$this_collectLast:Landroidx/lifecycle/LifecycleOwner;

    .line 19
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3, v4}, Landroidx/lifecycle/FlowExtKt;->flowWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1$1;

    iget-object v3, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->$action:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, v3, v4}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt$collectLast$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 20
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
