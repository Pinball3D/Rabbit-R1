.class final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BluetoothManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->startCheckConnectionWithTimeout(JJLandroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;)V
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
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1"
    f = "BluetoothManager.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x133,
        0x136,
        0x13b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "start",
        "$this$launch",
        "start",
        "$this$launch",
        "start"
    }
    s = {
        "L$0",
        "J$0",
        "L$0",
        "J$0",
        "L$0",
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $connectingListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic $interval:J

.field final synthetic $timeout:J

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JLandroid/bluetooth/BluetoothDevice;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/bluetooth/BluetoothDevice;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$interval:J

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$device:Landroid/bluetooth/BluetoothDevice;

    iput-wide p4, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$timeout:J

    iput-object p6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$connectingListener:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;

    iget-wide v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$interval:J

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$device:Landroid/bluetooth/BluetoothDevice;

    iget-wide v4, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$timeout:J

    iget-object v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$connectingListener:Lkotlin/jvm/functions/Function1;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;-><init>(JLandroid/bluetooth/BluetoothDevice;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->J$0:J

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    .line 304
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->J$0:J

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_2

    :cond_2
    iget-wide v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->J$0:J

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 306
    :cond_4
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 307
    iget-wide v8, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$interval:J

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    iput-wide v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->J$0:J

    iput v4, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->label:I

    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    .line 308
    :cond_5
    :goto_1
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    sget-object v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object v8, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v8}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1$1;

    iget-object v9, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$connectingListener:Lkotlin/jvm/functions/Function1;

    invoke-direct {v8, v9, v5}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    iput-wide v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->J$0:J

    iput v3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->label:I

    invoke-static {v1, v8, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    .line 313
    :cond_6
    :goto_2
    sget-object v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->getTimeoutJob()Lkotlinx/coroutines/Job;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iget-wide v10, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$timeout:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_4

    .line 315
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1$2;

    iget-object v9, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->$connectingListener:Lkotlin/jvm/functions/Function1;

    invoke-direct {v8, v9, v5}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->L$0:Ljava/lang/Object;

    iput-wide v6, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->J$0:J

    iput v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;->label:I

    invoke-static {v1, v8, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    .line 318
    :cond_8
    :goto_3
    sget-object v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->getTimeoutJob()Lkotlinx/coroutines/Job;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 322
    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
