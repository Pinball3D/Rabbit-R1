.class final Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraController.kt\ntech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1\n+ 2 KotlinUtil.kt\ntech/rabbit/common/utils/KotlinUtilKt\n*L\n1#1,79:1\n68#2,10:80\n*S KotlinDebug\n*F\n+ 1 CameraController.kt\ntech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1\n*L\n68#1:80,10\n*E\n"
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
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.rabbit.r1launcher.utils.CameraController$rotateTo$1$1"
    f = "CameraController.kt"
    i = {
        0x0
    }
    l = {
        0x46
    }
    m = "invokeSuspend"
    n = {
        "printErrorStack$iv"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $angle:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->$angle:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;

    iget-object p0, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->$angle:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->I$0:I

    iget-object p0, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->L$0:Ljava/lang/Object;

    .line 67
    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->$angle:Ljava/lang/String;

    .line 69
    :try_start_1
    invoke-static {}, Ltech/rabbit/r1launcher/utils/CameraController;->access$getNeedRotateDelay$p()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->I$0:I

    iput v3, p0, Ltech/rabbit/r1launcher/utils/CameraController$rotateTo$1$1;->label:I

    const-wide/16 v3, 0x5dc

    .line 70
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    move v0, v2

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 72
    :goto_1
    :try_start_2
    new-instance p0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/step_motor_ms35774/orientation"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 73
    invoke-static {p0, p1, v3, v1, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p0

    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "catched Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KotUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_3
    sget-object p0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-static {v2}, Ltech/rabbit/r1launcher/utils/CameraController;->access$setNeedRotateDelay$p(Z)V

    .line 76
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
