.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothAdvanceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initView(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Landroid/view/KeyEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "Landroid/view/KeyEvent;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;


# direct methods
.method public static synthetic $r8$lambda$OzacfD_JuWRR4-IrWEYXJLId9OM(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->invoke$lambda$0(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    return-void
.end method

.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->$device:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flConnectError:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flDeviceContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 194
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    sget v3, Ltech/rabbit/r1launcher/R$string;->remove:I

    invoke-virtual {p0, v3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->llFocusBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 196
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 2

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 188
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    const-string p2, "binding"

    const/4 p3, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_0
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flConnectError:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 189
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getViewModel$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->realConnectToDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 190
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p3, p1

    :goto_0
    iget-object p1, p3, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    new-instance p2, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$5;->$device:Landroid/bluetooth/BluetoothDevice;

    .line 199
    invoke-static {p1, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$onRemoveDevice(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V

    :goto_1
    return-void
.end method
