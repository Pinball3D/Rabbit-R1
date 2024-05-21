.class final Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkManagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
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
    c = "tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$4"
    f = "NetworkManagerFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    invoke-direct {v0, p0, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->Z$0:Z

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->label:I

    if-nez v0, :cond_0

    .line 76
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->Z$0:Z

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setActivated(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
