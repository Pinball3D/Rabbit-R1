.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;->$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 1

    .line 44
    new-instance p1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;->$device:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    invoke-direct {p1, v0, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;-><init>(Landroid/bluetooth/BluetoothDevice;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
