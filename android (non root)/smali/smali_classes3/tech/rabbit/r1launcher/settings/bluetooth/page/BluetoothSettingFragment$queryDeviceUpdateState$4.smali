.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BluetoothSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->queryDeviceUpdateState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
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
    c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$queryDeviceUpdateState$4"
    f = "BluetoothSettingFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $myDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->$myDevices:Ljava/util/List;

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

    new-instance p1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->$myDevices:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->label:I

    if-nez v0, :cond_1

    .line 430
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 431
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$queryDeviceUpdateState$4;->$myDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-virtual {p1, v0, p0}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->notifyItemRangeInserted(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 430
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
