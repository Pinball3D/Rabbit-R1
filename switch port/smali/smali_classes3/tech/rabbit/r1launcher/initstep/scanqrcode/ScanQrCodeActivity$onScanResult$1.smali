.class final Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScanQrCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->onScanResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
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
    c = "tech.rabbit.r1launcher.initstep.scanqrcode.ScanQrCodeActivity$onScanResult$1"
    f = "ScanQrCodeActivity.kt"
    i = {}
    l = {
        0x8b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $url:Lokhttp3/HttpUrl;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;",
            "Lokhttp3/HttpUrl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->$url:Lokhttp3/HttpUrl;

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

    new-instance p1, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->$url:Lokhttp3/HttpUrl;

    invoke-direct {p1, v0, p0, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;-><init>(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->L$0:Ljava/lang/Object;

    .line 136
    check-cast p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    sget-object p1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->$url:Lokhttp3/HttpUrl;

    .line 138
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v4, "deviceId"

    invoke-virtual {v1, v4, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    .line 139
    invoke-static {v1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->access$getCapture$p(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;)Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "capture"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;->label:I

    invoke-static {v4, p1, v5}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->access$fetchLinkAccount(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, v1

    .line 136
    :goto_0
    check-cast p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan QrCode Result: username = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getErrorType()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error order = #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getErrorType()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->ordinal()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->finish(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;)V

    .line 142
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
