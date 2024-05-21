.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothSettingFragment.kt\ntech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,457:1\n1#2:458\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->invoke(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const-string v0, "bluetoothDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 171
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    if-eqz v1, :cond_7

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 173
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->remove(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 174
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getBond()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_7

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 175
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getDataList$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    .line 176
    invoke-virtual {v3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getItemType()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 177
    sget v4, Ltech/rabbit/r1launcher/R$string;->my_devices:I

    invoke-virtual {v0, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 176
    invoke-static {v3, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v2, v1

    .line 175
    :cond_6
    check-cast v2, Ltech/rabbit/r1launcher/models/settings/BluetoothListData;

    if-eqz v2, :cond_7

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment$initListener$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;

    .line 181
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;->access$getAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;)Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;->remove(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
