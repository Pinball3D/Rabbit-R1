.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;",
        "pos",
        "",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 242
    check-cast p1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->invoke(Ltech/rabbit/r1launcher/models/settings/BluetoothListData;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ltech/rabbit/r1launcher/models/settings/BluetoothListData;I)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getItemType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getSwitch()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 246
    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->setSwitch(Z)V

    .line 247
    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->toggleBluetooth(Landroid/content/Context;Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 248
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->notifyItemChanged(I)V

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 250
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$disableBluetooth(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 252
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$enableBluetooth(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 257
    invoke-static {v0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$setCachePos$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;I)V

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 258
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 259
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initView$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 260
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;

    .line 259
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    const-string p1, "device"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
