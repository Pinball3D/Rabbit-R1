.class public final Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "WifiDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiDetailFragment.kt\ntech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,215:1\n172#2,9:216\n1#3:225\n262#4,2:226\n262#4,2:228\n262#4,2:230\n262#4,2:232\n262#4,2:234\n262#4,2:236\n262#4,2:238\n262#4,2:240\n262#4,2:242\n262#4,2:244\n262#4,2:246\n262#4,2:248\n262#4,2:250\n262#4,2:252\n262#4,2:254\n*S KotlinDebug\n*F\n+ 1 WifiDetailFragment.kt\ntech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment\n*L\n26#1:216,9\n152#1:226,2\n153#1:228,2\n161#1:230,2\n165#1:232,2\n166#1:234,2\n170#1:236,2\n174#1:238,2\n175#1:240,2\n184#1:242,2\n188#1:244,2\n189#1:246,2\n198#1:248,2\n202#1:250,2\n203#1:252,2\n205#1:254,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\"H\u0002J\u0008\u0010$\u001a\u00020\"H\u0002J\u0008\u0010%\u001a\u00020\"H\u0002J\u0008\u0010&\u001a\u00020\"H\u0002J$\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010/\u001a\u00020\"H\u0016J\u001a\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020(2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0010\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\tH\u0002J\u0008\u00104\u001a\u00020\"H\u0002J\u0008\u00105\u001a\u00020\"H\u0002J\u0008\u00106\u001a\u00020\"H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u00067"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;",
        "binding",
        "getBinding",
        "()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;",
        "currentState",
        "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
        "hasPassword",
        "",
        "getHasPassword",
        "()Z",
        "password",
        "",
        "getPassword",
        "()Ljava/lang/String;",
        "setPassword",
        "(Ljava/lang/String;)V",
        "savedWifi",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "viewModel",
        "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "getViewModel",
        "()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "wifi",
        "getWifi",
        "()Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "setWifi",
        "(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V",
        "applyToConnectFailure",
        "",
        "applyToConnected",
        "applyToConnecting",
        "applyToDisconnecting",
        "applyToNoConnect",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "renderUIWithConnectState",
        "wifiConnectState",
        "setupForgetOrRetry",
        "setupStateContainer",
        "setupTitleBar",
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
.field public static final $stable:I = 0x8


# instance fields
.field private _binding:Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

.field private currentState:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field private password:Ljava/lang/String;

.field private savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field public wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;


# direct methods
.method public static synthetic $r8$lambda$WrWSFhHHDXgL2ZL_LJ4ASgwyPzw(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setupForgetOrRetry$lambda$4(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWc311FP_l94PnOydPzuGJqAGko(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setupStateContainer$lambda$3(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 219
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_wifi_detail:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 26
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$viewModel$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$viewModel$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 219
    const-class v2, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v3, v0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$special$$inlined$activityViewModels$default$2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 222
    invoke-static {v0, v2, v3, v4, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCurrentState$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->currentState:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    return-object p0
.end method

.method public static final synthetic access$getHasPassword(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getHasPassword()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSavedWifi$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
    .locals 0

    .line 24
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_binding$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    return-object p0
.end method

.method public static final synthetic access$renderUIWithConnectState(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->renderUIWithConnectState(Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V

    return-void
.end method

.method public static final synthetic access$setCurrentState$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V
    .locals 0

    .line 24
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->currentState:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    return-void
.end method

.method public static final synthetic access$setSavedWifi$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 0

    .line 24
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-void
.end method

.method private final applyToConnectFailure()V
    .locals 4

    .line 202
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "llStateContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvConnectFailureTips"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->try_again:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 205
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "tvForgetOrRetry"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-nez v3, :cond_1

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getHasPassword()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    move v1, v2

    .line 254
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final applyToConnected()V
    .locals 4

    .line 165
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "llStateContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvConnectFailureTips"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    .line 234
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnConfirm()V

    .line 168
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->connected:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 169
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->forget:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 170
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "tvForgetOrRetry"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 236
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final applyToConnecting()V
    .locals 4

    .line 174
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "llStateContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvConnectFailureTips"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/widget/SettingRing;->setLoadingTint(I)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ltech/rabbit/r1launcher/R$color;->dark_414141:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/widget/SettingRing;->setLoadingTint(I)V

    .line 181
    :goto_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    .line 182
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Ltech/rabbit/r1launcher/R$string;->connecting:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 183
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Ltech/rabbit/r1launcher/R$string;->forget:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 184
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvForgetOrRetry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    .line 242
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final applyToDisconnecting()V
    .locals 4

    .line 188
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "llStateContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvConnectFailureTips"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/widget/SettingRing;->setLoadingTint(I)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ltech/rabbit/r1launcher/R$color;->dark_414141:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/widget/SettingRing;->setLoadingTint(I)V

    .line 195
    :goto_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    .line 196
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Ltech/rabbit/r1launcher/R$string;->disconnecting:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 197
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Ltech/rabbit/r1launcher/R$string;->forget:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 198
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvForgetOrRetry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    .line 248
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final applyToNoConnect()V
    .locals 4

    .line 152
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "llStateContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvConnectFailureTips:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvConnectFailureTips"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnFocus()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->srLoading:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnNormal()V

    .line 159
    :goto_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->connect:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 160
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->forget:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 161
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "tvForgetOrRetry"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 230
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getHasPassword()Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->password:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 26
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    return-object p0
.end method

.method private final renderUIWithConnectState(Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->resetScanWifi()V

    .line 145
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiIfEnable()V

    .line 146
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    if-eqz p1, :cond_1

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoNetworkManager()V

    goto :goto_1

    .line 142
    :pswitch_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->applyToConnectFailure()V

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->applyToNoConnect()V

    goto :goto_1

    .line 140
    :pswitch_3
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->applyToDisconnecting()V

    goto :goto_1

    .line 139
    :pswitch_4
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->applyToConnected()V

    goto :goto_1

    .line 138
    :pswitch_5
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->applyToConnecting()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setupForgetOrRetry()V
    .locals 2

    .line 116
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvForgetOrRetry"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final setupForgetOrRetry$lambda$4(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p0

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvForgetOrRetry:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_0

    const/high16 p1, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41c00000    # 24.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    return-void
.end method

.method private final setupStateContainer()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 98
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "llStateContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupStateContainer$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupStateContainer$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final setupStateContainer$lambda$3(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Landroid/view/View;Z)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41c00000    # 24.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 89
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->tvState:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 90
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->llStateContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 91
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 93
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v1

    .line 90
    :goto_2
    invoke-virtual {p1, v2, v1, p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setPadding(IIII)V

    .line 96
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->currentState:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->renderUIWithConnectState(Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;)V

    :cond_3
    return-void
.end method

.method private final setupTitleBar()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->setUnfocusedLabel(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getBinding()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->cblvTitle:Ltech/rabbit/r1launcher/widget/CanBackLabelView;

    const-string v1, "cblvTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupTitleBar$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupTitleBar$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "wifi"

    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 44
    invoke-static {p1, p2, p3}, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    .line 45
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->_binding:Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 53
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setupTitleBar()V

    .line 54
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setupStateContainer()V

    .line 55
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setupForgetOrRetry()V

    .line 57
    sget-object p1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getSavedWifiListFromSystem(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v3

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result v1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v2

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    check-cast p2, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->savedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 60
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->getWifiConnectState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;

    invoke-direct {v1, p0, v0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$onViewCreated$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, v1}, Ltech/rabbit/r1launcher/extensions/CoroutinesExtensionsKt;->collectLast(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 75
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->password:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->updateWifiConnectStateFromNetworkItem(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getHasPassword()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->password:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    invoke-virtual {p1, p2, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->connectWifiAtPassword(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->password:Ljava/lang/String;

    return-void
.end method

.method public final setWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-void
.end method
