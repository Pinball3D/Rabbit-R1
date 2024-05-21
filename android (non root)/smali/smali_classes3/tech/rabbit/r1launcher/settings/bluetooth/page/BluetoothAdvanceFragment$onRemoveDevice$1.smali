.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BluetoothAdvanceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->onRemoveDevice(Landroid/bluetooth/BluetoothDevice;)V
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
    c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$onRemoveDevice$1"
    f = "BluetoothAdvanceFragment.kt"
    i = {}
    l = {
        0xd8,
        0xd9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->$device:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    invoke-direct {p1, v0, p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;-><init>(Landroid/bluetooth/BluetoothDevice;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 215
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

    .line 216
    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->$device:Landroid/bluetooth/BluetoothDevice;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->label:I

    invoke-virtual {p1, v1, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->disconnectAndRemoveDevice(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 217
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1$1;

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 220
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
