.class final Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;
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
        "Ljava/util/List<",
        "+",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkManagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkManagerFragment.kt\ntech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n350#2,7:234\n*S KotlinDebug\n*F\n+ 1 NetworkManagerFragment.kt\ntech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6\n*L\n108#1:234,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "items",
        "",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;"
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
    c = "tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$6"
    f = "NetworkManagerFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $wifiItemsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->$wifiItemsCache:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->$wifiItemsCache:Ljava/util/List;

    invoke-direct {v0, v1, p0, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->label:I

    if-nez v0, :cond_8

    .line 86
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "collectLast(viewModel.scanWifiItems) items -> , "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagerFragment"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 90
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 91
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getNetworksAdapter(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 92
    invoke-static {v2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v2

    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getSelectedPosition()I

    move-result v2

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 93
    invoke-static {v3}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v4

    iget-object v4, v4, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    .line 94
    invoke-static {v3}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v3

    iget-object v3, v3, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v5, v3, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 93
    :goto_1
    invoke-virtual {v4, v3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->clearChildFocus(Landroid/view/View;)V

    .line 91
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 101
    invoke-static {v2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getNetworksAdapter(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;->setNewInstance(Ljava/util/List;)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 102
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$autoSetNetworkItemsListFocusable(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Z)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->$wifiItemsCache:Ljava/util/List;

    .line 103
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$autoSelectedLastPosition(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;ZLjava/util/List;)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 106
    invoke-static {v2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v2

    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 107
    invoke-static {v2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v2

    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 236
    check-cast v4, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    .line 108
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v5

    goto :goto_4

    :cond_3
    move-object v5, v1

    :goto_4
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    :goto_5
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;->this$0:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 109
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    if-gez v3, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    invoke-virtual {p0, v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setSelectedPosition(I)V

    .line 111
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 86
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
