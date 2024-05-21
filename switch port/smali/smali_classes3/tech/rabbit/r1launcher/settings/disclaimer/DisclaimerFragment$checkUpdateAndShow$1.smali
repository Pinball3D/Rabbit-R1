.class final Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DisclaimerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->checkUpdateAndShow()Lkotlinx/coroutines/Job;
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
    c = "tech.rabbit.r1launcher.settings.disclaimer.DisclaimerFragment$checkUpdateAndShow$1"
    f = "DisclaimerFragment.kt"
    i = {}
    l = {
        0x51,
        0x57
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

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

    new-instance p1, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    invoke-direct {p1, p0, p2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;-><init>(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 80
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

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 81
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->label:I

    invoke-static {p1, v1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$getDownloadDisclaimerPictureUrl(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 80
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 82
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 85
    invoke-static {v1, p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$checkPictureUpdate(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 87
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->label:I

    invoke-static {v1, p1, v3}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$downloadAndGetNewPictureFile(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_8

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 88
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$getPictureCacheFile(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;)Ljava/io/File;

    move-result-object p1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 90
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$getPictureCacheFile(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;)Ljava/io/File;

    move-result-object p1

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 83
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$getPictureCacheFile(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;)Ljava/io/File;

    move-result-object p1

    :cond_8
    :goto_3
    if-nez p1, :cond_9

    .line 93
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment$checkUpdateAndShow$1;->this$0:Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;

    .line 94
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;->access$setImage(Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;Ljava/io/File;)V

    .line 95
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
