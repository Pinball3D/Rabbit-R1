.class final Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/camera/CameraManager;->flipTextureViewWithDelay(ZJ)V
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
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/Job;",
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
    c = "tech.rabbit.r1launcher.camera.CameraManager$flipTextureViewWithDelay$1"
    f = "CameraManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $delay:J

.field final synthetic $isFront:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->$delay:J

    iput-boolean p3, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->$isFront:Z

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

    new-instance v0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;

    iget-wide v1, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->$delay:J

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->$isFront:Z

    invoke-direct {v0, v1, v2, p0, p2}, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;-><init>(JZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->label:I

    if-nez v0, :cond_0

    .line 151
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 152
    new-instance p1, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1$1;

    iget-wide v3, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->$delay:J

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;->$isFront:Z

    const/4 v5, 0x0

    invoke-direct {p1, v3, v4, p0, v5}, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1$1;-><init>(JZLkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
