.class final Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DisclaimerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->downloadAndGetNewPictureFile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
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
    c = "tech.rabbit.r1launcher.settings.disclaimer.DisclaimerFragment$downloadAndGetNewPictureFile$2"
    f = "DisclaimerFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $disclaimerPictureUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->$disclaimerPictureUrl:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

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

    new-instance p1, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->$disclaimerPictureUrl:Ljava/lang/String;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    invoke-direct {p1, v0, p0, p2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;-><init>(Ljava/lang/String;Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->label:I

    if-nez v0, :cond_4

    .line 135
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Ltech/rabbit/r1launcher/utils/OkHttpUtil;->client()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 137
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->$disclaimerPictureUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 138
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 142
    invoke-static {v2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$getPictureCacheFolder(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->$disclaimerPictureUrl:Ljava/lang/String;

    .line 143
    invoke-static {v3, v1, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-static {v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->deleteIfExists(Ljava/io/File;)V

    .line 147
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$downloadAndGetNewPictureFile$2;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 148
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$getPictureCacheFile(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 149
    :cond_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_3

    return-object v1

    :cond_3
    return-object v0

    .line 135
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
