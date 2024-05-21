.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;
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
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;->$device:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;->invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 0

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    .line 141
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->access$getViewModel$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;)Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "requireContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment$initView$2;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->realConnectToDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
