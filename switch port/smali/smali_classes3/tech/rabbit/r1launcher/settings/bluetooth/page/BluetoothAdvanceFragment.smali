.class public final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;
.super Landroidx/fragment/app/Fragment;
.source "BluetoothAdvanceFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0012\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002J\u0012\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0003J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\tH\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u000bH\u0016J\u0008\u0010\u001f\u001a\u00020\u000bH\u0002J\u0008\u0010 \u001a\u00020\u000bH\u0002J\u0012\u0010!\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\"\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "listener",
        "Lkotlin/Function3;",
        "Landroid/content/Context;",
        "",
        "",
        "viewModel",
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;",
        "dpToPx",
        "",
        "dp",
        "initListener",
        "initObserver",
        "initView",
        "onAttach",
        "context",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onDeviceConnected",
        "onDeviceDisconnected",
        "onRemoveDevice",
        "removeListener",
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
.field private binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private final listener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;


# direct methods
.method public static synthetic $r8$lambda$0h-9oECj3HHjVj8xj9XioOPYnO0(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initView$lambda$0(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhhq893na6yw5iao4n0lyeJxL7o(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initView$lambda$1(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 96
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$listener$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$listener$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->listener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;
    .locals 0

    .line 22
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    return-object p0
.end method

.method public static final synthetic access$getDevice$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 22
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;
    .locals 0

    .line 22
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    return-object p0
.end method

.method public static final synthetic access$onDeviceConnected(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->onDeviceConnected()V

    return-void
.end method

.method public static final synthetic access$onDeviceDisconnected(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->onDeviceDisconnected()V

    return-void
.end method

.method public static final synthetic access$onRemoveDevice(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->onRemoveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private final dpToPx(F)F
    .locals 0

    .line 225
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 226
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    mul-float/2addr p1, p0

    return p1
.end method

.method private final initListener(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 112
    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->listener:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->addOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initObserver()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final initView(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    const-string v3, "binding"

    if-nez v2, :cond_4

    .line 126
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_4
    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->st:Ltech/rabbit/r1launcher/widget/SettingTitle;

    new-instance v4, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$1;

    invoke-direct {v4, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v4}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setOnKeyDownCallback(Lkotlin/jvm/functions/Function1;)V

    .line 132
    sget-object v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {v2, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v2, :cond_5

    .line 133
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_5
    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    sget v4, Ltech/rabbit/r1launcher/R$string;->connected:I

    invoke-virtual {p0, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v2, :cond_6

    .line 134
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_6
    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnConfirm()V

    .line 136
    :cond_7
    sget-object v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {v2, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v2, :cond_8

    .line 137
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_8
    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v2, :cond_a

    .line 140
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_a
    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    const-string v4, "llFocusBg"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v4, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;

    invoke-direct {v4, p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-static {v2, v4}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v2, :cond_b

    .line 144
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_b
    iget-object v2, v2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->st:Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    invoke-virtual {v2, v1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setNormalTitle(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v1, :cond_d

    .line 145
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_d
    iget-object v1, v1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    new-instance v2, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v1, :cond_e

    .line 174
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_e
    iget-object v1, v1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    new-instance v2, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v1, :cond_f

    .line 187
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    move-object v0, v1

    :goto_3
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    const-string v1, "flRemove"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->setOnSafeConfirmKeyListener(Landroid/view/View;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initView$lambda$0(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;Landroid/view/View;Z)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, 0x40400000    # 3.0f

    const-string v0, "viewModel"

    const/4 v1, 0x0

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz p3, :cond_c

    .line 147
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_0
    iget-object p3, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    .line 148
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Ltech/rabbit/r1launcher/R$drawable;->bg_setting_choose:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 147
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_1
    iget-object p3, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_2
    iget-object p3, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {p3, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 152
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnConfirm()V

    goto :goto_1

    .line 153
    :cond_4
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_5
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->CONNECTING:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    if-eq p1, p3, :cond_9

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_6
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->DISCONNECTING:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    if-ne p1, p3, :cond_7

    goto :goto_0

    .line 156
    :cond_7
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_8
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnFocus()V

    goto :goto_1

    .line 154
    :cond_9
    :goto_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_a
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    .line 158
    :goto_1
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v3, p1

    :goto_2
    iget-object p1, v3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->dpToPx(F)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p3, v1, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_6

    .line 160
    :cond_c
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p3, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_d
    iget-object p3, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p3, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_e
    iget-object p3, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Ltech/rabbit/r1launcher/R$color;->white:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p3, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v3

    :cond_f
    iget-object p3, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {p3, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 164
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_10
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnNormal()V

    goto :goto_4

    .line 165
    :cond_11
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    if-nez p1, :cond_12

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_12
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->CONNECTING:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    if-eq p1, p3, :cond_16

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    if-nez p1, :cond_13

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_13
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->DISCONNECTING:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    if-ne p1, p3, :cond_14

    goto :goto_3

    .line 168
    :cond_14
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_15
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnConfirm()V

    goto :goto_4

    .line 166
    :cond_16
    :goto_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_17

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_17
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    .line 170
    :goto_4
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p1, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_18
    move-object v3, p1

    :goto_5
    iget-object p1, v3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->dpToPx(F)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, v1, v1, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_6
    return-void
.end method

.method private static final initView$lambda$1(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/view/View;Z)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binding"

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 176
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p2, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ltech/rabbit/r1launcher/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p2, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p2, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    iget-object p1, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    .line 179
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Ltech/rabbit/r1launcher/R$drawable;->bg_setting_choose:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 178
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 181
    :cond_3
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p2, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_4
    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p2, :cond_5

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_5
    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ltech/rabbit/r1launcher/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p0, :cond_6

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_6
    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private final onDeviceConnected()V
    .locals 4

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    .line 91
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnConfirm()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v0, :cond_1

    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->connected:I

    invoke-virtual {p0, v3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p0, :cond_2

    .line 93
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private final onDeviceDisconnected()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    .line 82
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v0, :cond_1

    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnFocus()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v0, :cond_3

    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showOnNormal()V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez v0, :cond_4

    .line 87
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    sget v1, Ltech/rabbit/r1launcher/R$string;->connect:I

    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final onRemoveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 215
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$onRemoveDevice$1;-><init>(Landroid/bluetooth/BluetoothDevice;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final removeListener()V
    .locals 1

    .line 116
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->listener:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->removeOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 28
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->viewModel:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget p2, Ltech/rabbit/r1launcher/R$layout;->fragment_bluetooth_advance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p2

    const-string v0, "bind(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    .line 37
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->device:Landroid/bluetooth/BluetoothDevice;

    .line 38
    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initView(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->device:Landroid/bluetooth/BluetoothDevice;

    .line 39
    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initListener(Landroid/bluetooth/BluetoothDevice;)V

    .line 40
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initObserver()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->binding:Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    .line 41
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p3, p0

    :goto_1
    iget-object p0, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 108
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->removeListener()V

    return-void
.end method
