.class public final Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "NetworkManagerFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkManagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkManagerFragment.kt\ntech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n172#2,9:234\n1#3:243\n1855#4,2:244\n350#4,7:246\n*S KotlinDebug\n*F\n+ 1 NetworkManagerFragment.kt\ntech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment\n*L\n45#1:234,9\n63#1:244,2\n133#1:246,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 62\u00020\u00012\u00020\u00022\u00020\u0003:\u00016B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0002J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001dH\u0002J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010+\u001a\u00020\u001bH\u0016J\u001c\u0010,\u001a\u00020\u001b2\u0008\u0010-\u001a\u0004\u0018\u00010$2\u0008\u0010.\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u000201H\u0016J\u001a\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020$2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u00104\u001a\u00020\u001b2\u0006\u00105\u001a\u00020(H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00067"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;",
        "()V",
        "_binding",
        "Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;",
        "binding",
        "getBinding",
        "()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;",
        "networksAdapter",
        "Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;",
        "getNetworksAdapter",
        "()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;",
        "networksAdapter$delegate",
        "Lkotlin/Lazy;",
        "networksItemDecoration",
        "Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;",
        "getNetworksItemDecoration",
        "()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;",
        "networksItemDecoration$delegate",
        "viewModel",
        "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "getViewModel",
        "()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "viewModel$delegate",
        "autoSelectedLastPosition",
        "",
        "isItemsChanged",
        "",
        "newWifiItems",
        "",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "autoSetNetworkItemsListFocusable",
        "isEnable",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onGlobalFocusChanged",
        "oldFocus",
        "newFocus",
        "onInterceptKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "onViewCreated",
        "view",
        "setAllViewsFocusable",
        "rootView",
        "Companion",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$Companion;

.field private static final TAG_RADIO:Ljava/lang/String; = "radio"

.field private static final TAG_TOGGLE:Ljava/lang/String; = "toggle"


# instance fields
.field private _binding:Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

.field private final networksAdapter$delegate:Lkotlin/Lazy;

.field private final networksItemDecoration$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2YfWkKJPOsSqe_Yt1aHL_k1I-N0(Ljava/util/List;Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->autoSelectedLastPosition$lambda$7$lambda$6(Ljava/util/List;Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8BGIRSXYE5ZyOs3zAYYO_KIiPUY(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->onInterceptKeyEvent$lambda$11(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BPKwA_5CrupwzFn5CwVmqb5cur4(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->onInterceptKeyEvent$lambda$13(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$CpNvgK84IMfpPG2YBfFltV4avA8(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->onInterceptKeyEvent$lambda$10(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sxy6iXHOUCxzmU1Gi363Aa3usrA(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->onInterceptKeyEvent$lambda$12(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TBOs_zSoIGtayuunVtcJQ_KzYPk(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->onViewCreated$lambda$3(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v8WCkpSYrdrmhahcE8nEmFB1qFU(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->autoSelectedLastPosition$lambda$9$lambda$8(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wMtfhvGI9OMCkkRQINZ17z6MnxE(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->autoSelectedLastPosition$lambda$7$lambda$6$lambda$5(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->Companion:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 237
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_network_manager:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 45
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$viewModel$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$viewModel$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 237
    const-class v2, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v3, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$special$$inlined$activityViewModels$default$2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 240
    invoke-static {v0, v2, v3, v4, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 49
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$networksAdapter$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$networksAdapter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->networksAdapter$delegate:Lkotlin/Lazy;

    .line 50
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$networksItemDecoration$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$networksItemDecoration$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->networksItemDecoration$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$autoSelectedLastPosition(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;ZLjava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->autoSelectedLastPosition(ZLjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$autoSetNetworkItemsListFocusable(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->autoSetNetworkItemsListFocusable(Z)V

    return-void
.end method

.method public static final synthetic access$getBinding(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;
    .locals 0

    .line 33
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworksAdapter(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;
    .locals 0

    .line 33
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getNetworksAdapter()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
    .locals 0

    .line 33
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final autoSelectedLastPosition(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->hasLastSelectedWifiCache()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 128
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getAndClearLastSelectedWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getLastSelectedWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 132
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p0, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 141
    :cond_2
    move-object p1, p0

    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    .line 142
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda6;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final autoSelectedLastPosition$lambda$7$lambda$6(Ljava/util/List;Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 2

    const-string v0, "$newWifiItems"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lastSelectedWifi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 248
    check-cast v1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    .line 133
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 135
    invoke-direct {p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 136
    invoke-direct {p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setSelectedPosition(I)V

    goto :goto_2

    .line 138
    :cond_2
    invoke-direct {p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method private static final autoSelectedLastPosition$lambda$7$lambda$6$lambda$5(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestFocus()Z

    return-void
.end method

.method private static final autoSelectedLastPosition$lambda$9$lambda$8(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 1

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestFocus()Z

    return-void
.end method

.method private final autoSetNetworkItemsListFocusable(Z)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setFocusableInTouchMode(Z)V

    .line 120
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setFocusable(I)V

    return-void
.end method

.method private final getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getNetworksAdapter()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->networksAdapter$delegate:Lkotlin/Lazy;

    .line 49
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;

    return-object p0
.end method

.method private final getNetworksItemDecoration()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->networksItemDecoration$delegate:Lkotlin/Lazy;

    .line 50
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;

    return-object p0
.end method

.method private final getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 45
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    return-object p0
.end method

.method private static final onInterceptKeyEvent$lambda$10(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestFocus()Z

    return-void
.end method

.method private static final onInterceptKeyEvent$lambda$11(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestFocus()Z

    return-void
.end method

.method private static final onInterceptKeyEvent$lambda$12(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 189
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    .line 190
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setSelectedPosition(I)V

    return-void
.end method

.method private static final onInterceptKeyEvent$lambda$13(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;II)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->requestFocus()Z

    .line 202
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    .line 203
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setSelectedPosition(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$3(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvCellular:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestFocus()Z

    return-void
.end method

.method private final setAllViewsFocusable(Landroid/view/ViewGroup;)V
    .locals 1

    .line 63
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getAllViews(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 244
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(I)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 56
    invoke-static {p1, p2, p3}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    .line 57
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->setAllViewsFocusable(Landroid/view/ViewGroup;)V

    .line 60
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    check-cast p0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    const-string p0, "apply(...)"

    .line 58
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const-string v1, "toggle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "radio"

    if-eqz v0, :cond_2

    .line 157
    instance-of v0, p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    if-eqz p1, :cond_5

    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->toUnfocusedToggleButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, p0

    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    instance-of v0, p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_3

    :cond_4
    move-object p1, p0

    :goto_3
    if-eqz p1, :cond_5

    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->toUnfocusedRadioButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V

    :cond_5
    :goto_4
    if-eqz p2, :cond_6

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, p0

    :goto_5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 163
    instance-of p1, p2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    move-object p0, p2

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    :cond_7
    if-eqz p0, :cond_b

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->toFocusedToggleButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V

    goto :goto_7

    :cond_8
    if-eqz p2, :cond_9

    .line 164
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, p0

    :goto_6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 165
    instance-of p1, p2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_a

    move-object p0, p2

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    :cond_a
    if-eqz p0, :cond_b

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->toFocusedRadioButtonStyle(Landroidx/appcompat/widget/AppCompatTextView;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public onInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 174
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v3

    iget-object v3, v3, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getSelectedPosition()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v1

    .line 177
    :cond_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object v4

    iget-object v4, v4, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x13

    .line 180
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x378

    const/16 v8, 0x3e7

    if-ne v5, v6, :cond_7

    if-nez v4, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_4

    if-nez v3, :cond_4

    .line 182
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    goto :goto_3

    .line 183
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v7, :cond_b

    if-nez v3, :cond_6

    .line 185
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 187
    :cond_6
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;I)V

    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_7
    const/16 v5, 0x14

    .line 196
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne v5, p1, :cond_b

    if-nez v4, :cond_8

    goto :goto_2

    .line 197
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v8, :cond_a

    :goto_2
    if-nez v4, :cond_9

    goto :goto_3

    .line 198
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v7, :cond_b

    .line 200
    :cond_a
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v3, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda3;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;II)V

    invoke-virtual {p1, v1}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_b
    :goto_3
    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    const-string p2, "cblvTitle"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    .line 73
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getCellularUIState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, v0}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt;->collectLast(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 74
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p2

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvCellular:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvCellular"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$3;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p2, v0}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    .line 76
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getWifiUIState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;

    invoke-direct {v0, p0, v1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$4;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, v0}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt;->collectLast(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 77
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p2

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvWifi:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvWifi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$5;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$5;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p2, v0}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    .line 79
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p2

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setFocusSearchEnabledDuringAnimations(Z)V

    .line 80
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p2

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    move-object v2, p0

    check-cast v2, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;

    invoke-virtual {p2, v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setOnKeyInterceptListener(Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;)V

    .line 81
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p2

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getNetworksItemDecoration()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 82
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p2

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->rvList:Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getNetworksAdapter()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v2}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->autoSetNetworkItemsListFocusable(Z)V

    .line 85
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getScanWifiItems()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 86
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getScanWifiItems()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;

    invoke-direct {v2, p0, p2, v1}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$onViewCreated$6;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, v2}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt;->collectLast(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 113
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->hasLastSelectedWifiCache()Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;->tvCellular:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment$$ExternalSyntheticLambda7;-><init>(Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
