.class final Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScanQrCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->fetchLinkAccount(Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
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
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
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
    c = "tech.rabbit.r1launcher.initstep.scanqrcode.ScanQrCodeActivity$fetchLinkAccount$2"
    f = "ScanQrCodeActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $url:Lokhttp3/HttpUrl;

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;


# direct methods
.method constructor <init>(Lokhttp3/HttpUrl;Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->$url:Lokhttp3/HttpUrl;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

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

    new-instance p1, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->$url:Lokhttp3/HttpUrl;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    invoke-direct {p1, v0, p0, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;-><init>(Lokhttp3/HttpUrl;Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->label:I

    if-nez v0, :cond_c

    .line 146
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    :try_start_0
    invoke-static {}, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->client()Lokhttp3/OkHttpClient;

    move-result-object p1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->$url:Lokhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->RequestError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 153
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 155
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    const-string v2, "statusCode"

    invoke-static {v1, v2}, Ltech/rabbit/common/utils/KotlinUtilKt;->getInt(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 157
    new-instance p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->ServerError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "actualUserId"

    .line 160
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_5

    const-string v1, "accountKey"

    .line 161
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    if-eqz p1, :cond_6

    const-string v0, "userName"

    .line 162
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v1, v0

    .line 164
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    .line 168
    :cond_8
    new-instance p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 165
    :cond_9
    :goto_4
    new-instance p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->ResponseError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    .line 170
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->access$isTimeoutException(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;->this$0:Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->access$isNoNetworkException(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    .line 173
    :cond_a
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->ResultError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 171
    :cond_b
    :goto_5
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->NetworkError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 146
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
