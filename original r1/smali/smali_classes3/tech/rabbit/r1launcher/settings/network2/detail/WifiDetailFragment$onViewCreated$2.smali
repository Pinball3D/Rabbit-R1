.class final Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WifiDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Pair<",
        "+",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "+",
        "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
        ">;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;"
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
    c = "tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$onViewCreated$2"
    f = "WifiDetailFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;


# direct methods
.method public static synthetic $r8$lambda$1XPPxYoijHdEe6zANULxfRYz7OY(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->invokeSuspend$lambda$0(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ASpk1funbdra7tCbTUjtOOvB_zo(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->invokeSuspend$lambda$1(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    return-void
.end method

.method constructor <init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V
    .locals 0

    .line 67
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$get_binding$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$1(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V
    .locals 0

    .line 70
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$get_binding$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus()Z

    :cond_0
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

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-direct {v0, p0, p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->invoke(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "+",
            "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->label:I

    if-nez v0, :cond_4

    .line 60
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    .line 61
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    .line 62
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v2

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 64
    invoke-static {v1, p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$setCurrentState$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V

    .line 66
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->ConnectFailure:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 67
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$get_binding$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    new-instance v2, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 68
    :cond_1
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Forget:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    if-eq p1, v1, :cond_3

    .line 69
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connected:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-static {v1, v0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$setSavedWifi$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    :cond_2
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 70
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$get_binding$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_3

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    new-instance v2, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :cond_3
    :goto_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 72
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$renderUIWithConnectState(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
