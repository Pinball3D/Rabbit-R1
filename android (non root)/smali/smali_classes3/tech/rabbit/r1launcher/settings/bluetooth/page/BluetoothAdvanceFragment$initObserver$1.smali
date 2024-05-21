.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothAdvanceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->invoke(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x0

    const-string v1, "binding"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 71
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flConnectError:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 72
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flDeviceContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 73
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvRemove:Landroid/widget/TextView;

    iget-object v3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    sget v4, Ltech/rabbit/r1launcher/R$string;->try_again:I

    invoke-virtual {v3, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 74
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 75
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    iget-object p0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->flRemove:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto/16 :goto_4

    :pswitch_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 67
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$onDeviceDisconnected(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 62
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_6
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    sget v3, Ltech/rabbit/r1launcher/R$string;->disconnecting:I

    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 63
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, p0

    :goto_2
    iget-object p0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    goto :goto_4

    :pswitch_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 58
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$onDeviceDisconnected(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 53
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->tvTitleFocus:Landroid/widget/TextView;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    sget v3, Ltech/rabbit/r1launcher/R$string;->connecting:I

    invoke-virtual {v2, v3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 54
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getBinding$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;

    move-result-object p0

    if-nez p0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v0, p0

    :goto_3
    iget-object p0, v0, Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;->vRing:Ltech/rabbit/r1launcher/widget/SettingRing;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingRing;->showLoading()V

    goto :goto_4

    :pswitch_5
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initObserver$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 49
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$onDeviceConnected(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)V

    :goto_4
    return-void

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
